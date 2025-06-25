import { NextResponse } from 'next/server';
import pool from '@/lib/db';

export async function GET(
    request: Request,
    { params }: { params: { id: string } }
) {
    try {
        const client = await pool.connect();
        
        // Get all menus for this branch
        const menuResult = await client.query(`
            SELECT m.menuid, m.kind
            FROM Menu m
            JOIN Offers o ON m.menuid = o.menuid
            WHERE o.branchID = $1
        `, [params.id]);

        // For each menu, get its items
        const menus = await Promise.all(menuResult.rows.map(async (menu) => {
            const itemsResult = await client.query(`
                SELECT mi.dishname, mi.price, mi.category, mi.availability, mi.image_url
                FROM Menuitem mi
                JOIN Contain c ON mi.dishname = c.dishname
                WHERE c.menuid = $1
            `, [menu.menuid]);

            return {
                menuid: menu.menuid,
                kind: menu.kind,
                items: itemsResult.rows
            };
        }));

        client.release();
        
        return NextResponse.json(menus);
    } catch (error) {
        console.error('Error fetching menu data:', error);
        return NextResponse.json(
            { error: 'Failed to fetch menu data' },
            { status: 500 }
        );
    }
} 