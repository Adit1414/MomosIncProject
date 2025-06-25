import { Pool } from 'pg';

const pool = new Pool({
  user: 'postgres',
  password: 'Post@3004',
  host: 'localhost',
  port: 5432,
  database: 'db'
});

export default pool; 