ALTER SEQUENCE customer_customerid_seq RESTART WITH 1;

INSERT INTO Customer (CName, phone_no, address, states) VALUES
    ('Aryan Sharma', '9876543210', '123 MG Road',  'Delhi'),
    ('Neha Verma', '9123456780', '56 Park Street',  'Kolkata'),
    ('Rohan Iyer', '9867123456', '78 Brigade Road',  'Bangalore'),
    ('Simran Kaur', '9988776655', '23 Andheri West',  'Mumbai'),
    ('Aditya Patel', '9765432109', '11 C G Road',  'Ahmedabad'),
    ('Meera Nair', '9234567890', '90 Marine Drive',  'Kochi'),
    ('Kunal Gupta', '9345678901', '45 Connaught Place',  'Delhi'),
    ('Priya Desai', '9456789012', '67 MG Road',  'Pune'),
    ('Siddharth Rao', '9567890123', '12 Indiranagar',  'Hyderabad'),
    ('Ananya Sen', '9678901234', '34 Salt Lake',  'Kolkata'),
    ('Aryan Sharma', '9786543210', '88 Sector 15',  'Noida'),
    ('Neha Verma', '9112345678', '21 Civil Lines',  'Lucknow'),
    ('Rohan Iyer', '9856123478', '110 TN Nagar',  'Chennai'),
    ('Simran Kaur', '9977554433', '56 Banjara Hills',  'Hyderabad'),
    ('Aditya Patel', '9754321987', '13 SG Highway',  'Ahmedabad'),
    ('Meera Nair', '9222334455', '33 MG Road',  'Bangalore'),
    ('Kunal Gupta', '9311223344', '100 Rajouri Garden',  'Delhi'),
    ('Priya Desai', '9444556677', '54 Koramangala',  'Bangalore'),
    ('Siddharth Rao', '9555667788', '76 JP Nagar',  'Bangalore'),
    ('Ananya Sen', '9666778899', '89 New Market',  'Kolkata'),
    ('Vikram Mehta', '9777889900', '15 Shivaji Park',  'Mumbai'),
    ('Sanya Kapoor', '9888999000', '30 Hauz Khas',  'Delhi'),
    ('Rahul Khanna', '9990001111', '77 MG Road',  'Gurgaon'),
    ('Pooja Joshi', '9001112222', '120 Kothrud',  'Pune'),
    ('Anil Kumar', '9112223333', '50 Lalbagh',  'Lucknow'),
    ('Sunita Reddy', '9223334444', '87 Jubilee Hills',  'Hyderabad'),
    ('Vivek Agarwal', '9334445555', '101 Park Street',  'Kolkata'),
    ('Ritika Sharma', '9445556666', '40 Model Town',  'Chandigarh'),
    ('Sameer Sheikh', '9556667777', '99 FC Road',  'Pune'),
    ('Manish Tiwari', '9667778888', '68 Hazratganj',  'Lucknow'),
    ('Aryan Sharma', '9778889999', '12 Vashi',  'Navi Mumbai'),
    ('Neha Verma', '9889990000', '78 Anna Nagar',  'Chennai'),
    ('Rohan Iyer', '9991112222', '33 Jayanagar',  'Bangalore'),
    ('Simran Kaur', '9002223333', '56 Sion',  'Mumbai'),
    ('Aditya Patel', '9113334444', '88 Piplod',  'Surat'),
    ('Meera Nair', '9224445555', '23 Broadway',  'Chennai'),
    ('Kunal Gupta', '9335556666', '44 South City',  'Kolkata'),
    ('Priya Desai', '9446667777', '65 Karol Bagh',  'Delhi'),
    ('Siddharth Rao', '9557778888', '10 Banashankari',  'Bangalore'),
    ('Ananya Sen', '9668889999', '33 Ballygunge',  'Kolkata'),
    ('Rajiv Malhotra', '9779990000', '14 Marine Drive',  'Mumbai'),
    ('Tina Das', '9881112223', '109 Gariahat',  'Kolkata'),
    ('Suresh Menon', '9992223334', '75 MG Road',  'Chennai'),
    ('Kavita Gupta', '9003334445', '88 Alkapuri',  'Vadodara'),
    ('Amitabh Das', '9114445556', '21 Salt Lake',  'Kolkata'),
    ('Pankaj Bhatia', '9225556667', '99 Mansarovar',  'Jaipur'),
    ('Swati Joshi', '9336667778', '50 Hinjewadi',  'Pune'),
    ('Arjun Sinha', '9447778889', '76 Jubilee Hills',  'Hyderabad');


-- Insert Momos (24 permutations: 4 types × 6 fillings)
INSERT INTO Menuitem (dishname, price, category, availability, image_url) VALUES
    -- Kurkure Momos (higher than fried, lower than gravy)
    ('Veg Kurkure Momos', 130, 'Kurkure', TRUE, 'https://mealit.in/wp-content/uploads/2023/04/Veg-Kurkure-Momos-scaled.jpg'),
    ('Chicken Kurkure Momos', 160, 'Kurkure', TRUE, 'https://res.cloudinary.com/purnesh/image/upload/f_auto/v1613365538/untitled-11613365537147.jpg'),
    ('Soya Kurkure Momos', 135, 'Kurkure', TRUE, 'https://img-global.cpcdn.com/recipes/9b99c7c084981a48/680x482cq70/%E0%A4%B8%E0%A4%AF%E0%A4%AC%E0%A4%A8-%E0%A4%95%E0%A4%B0%E0%A4%95%E0%A4%B0-%E0%A4%AE%E0%A4%AE%E0%A4%9C-soyabean-kurkure-momos-recipe-in-marathi-%E0%A4%B0%E0%A4%B8%E0%A4%AA-%E0%A4%9A-%E0%A4%AE%E0%A4%96%E0%A4%AF-%E0%A4%AB%E0%A4%9F.jpg'),
    ('Paneer Kurkure Momos', 145, 'Kurkure', TRUE, 'https://mealit.in/wp-content/uploads/2023/04/Paneer-Kurkure-Momos-scaled.jpg'),
    ('Chilly Kurkure Momos', 145, 'Kurkure', TRUE, 'https://i.ytimg.com/vi/riYjSwmCYUU/maxresdefault.jpg'),
    ('Cheese Kurkure Momos', 155, 'Kurkure', TRUE, 'https://res.cloudinary.com/purnesh/image/upload/w_540,f_auto,q_auto:eco,c_limit/11613365537063.jpg'),

    -- Steam Momos (lowest price category among momos)
    ('Veg Steam Momos', 100, 'Steam', TRUE, 'https://img-global.cpcdn.com/recipes/2da8cad7018f8486/1200x630cq70/photo.jpg'),
    ('Chicken Steam Momos', 130, 'Steam', TRUE, 'https://junifoods.com/wp-content/uploads/2023/11/Easy-Chicken-Momo-Dumplings-Sajilo-Kukhura-ko-Momo-%E0%A4%B8%E0%A4%9C%E0%A4%BF%E0%A4%B2%E0%A5%8B-%E0%A4%95%E0%A5%81%E0%A4%96%E0%A5%81%E0%A4%B0%E0%A4%BE%E0%A4%95%E0%A5%8B-%E0%A4%AE%E0%A4%AE-480x270.jpg'),
    ('Soya Steam Momos', 105, 'Steam', TRUE, 'https://i.ytimg.com/vi/WpZYYG5Aq5s/maxresdefault.jpg'),
    ('Paneer Steam Momos', 115, 'Steam', TRUE, 'https://www.momodelights.com/wp-content/uploads/2023/12/Paneer-Momos.jpg'),
    ('Chilly Steam Momos', 115, 'Steam', TRUE, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgrSmk9OAq3UDzlQLml6iSAM378w07hjgaUQ&s'),
    ('Cheese Steam Momos', 125, 'Steam', TRUE, 'https://images.timesnownews.com/thumb/msid-112593587,thumbsize-50274,width-448,height-252,resizemode-75/112593587.jpg'),

    -- Fried Momos (higher than steam, lower than kurkure)
    ('Veg Fried Momos', 120, 'Fried', TRUE, 'https://jeyporedukaan.in/wp-content/uploads/2024/11/Chicken-Fried-Momo.jpg'),
    ('Chicken Fried Momos', 150, 'Fried', TRUE, 'https://b.zmtcdn.com/data/dish_photos/c6a/ebb44c52b69db188c2aff97713861c6a.jpg'),
    ('Soya Fried Momos', 125, 'Fried', TRUE, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT52v_fzVC2k3BKrWBCjgXm1_0-aws2PpuxKw&s'),
    ('Paneer Fried Momos', 135, 'Fried', TRUE, 'https://solutionbasket.in/storage/app/public/product/2022-11-15-63733c734baf5.png'),
    ('Chilly Fried Momos', 165, 'Fried', TRUE, 'https://i.ytimg.com/vi/dZUjHUDpvFg/hqdefault.jpg'),
    ('Cheese Fried Momos', 145, 'Fried', TRUE, 'https://img-global.cpcdn.com/recipes/dfe2df89810c36a4/680x482cq70/veg-cheese-fried-momos-recipe-main-photo.jpg'),

    -- Gravy Momos (highest priced)
    ('Veg Gravy Momos', 150, 'Gravy', TRUE, 'https://img-global.cpcdn.com/recipes/ae23b08af6b6e6ec/680x482cq70/gravy-momos-recipe-main-photo.jpg'),
    ('Chicken Gravy Momos', 180, 'Gravy', TRUE, 'https://c.ndtvimg.com/2021-07/k64doaco_momo_625x300_26_July_21.jpg?im=FaceCrop,algorithm=dnn,width=1200,height=886'),
    ('Soya Gravy Momos', 155, 'Gravy', TRUE, 'https://images.slurrp.com/prod/rich_article/eatj620u6xa.webp'),
    ('Paneer Gravy Momos', 165, 'Gravy', TRUE, 'https://d3cm4d6rq8ed33.cloudfront.net/media/navpravartakfiles/19/aee0667a-3cdd-4ff9-9483-e5e39e50a055.jpg'),
    ('Chilly Gravy Momos', 165, 'Gravy', TRUE, 'https://images.slurrp.com/webstories/wp-content/uploads/2023/03/17152328/IMG_1140.jpg'),
    ('Cheese Gravy Momos', 175, 'Gravy', TRUE, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVYiLmdT-qrrlpte7yBbIOMnHAV-d7U7La7A&s'),

    -- Insert Beverages (cheapest category)
    ('Masala Chai', 30, 'Beverages', TRUE, 'https://masalaandchai.com/wp-content/uploads/2021/07/Masala-Chai-Featured.jpg'),
    ('Black Coffee', 50, 'Beverages', TRUE, 'https://myhealth-redcliffelabs.redcliffelabs.com/media/blogcard-images/None/0a99b9f4-d9a7-4f41-8988-591246fd1695.webp'),
    ('Cold Coffee', 80, 'Beverages', TRUE, 'https://tvanamm.com/wp-content/uploads/2024/01/Cold-Coffee.jpg'),
    ('Lemon Iced Tea', 70, 'Beverages', TRUE, 'https://palatesdesire.com/wp-content/uploads/2022/04/lemon-iced-tea-recipe@palates-desire-1-1.jpg'),
    ('Green Tea', 40, 'Beverages', TRUE, 'https://d2jx2rerrg6sh3.cloudfront.net/image-handler/picture/2021/9/shutterstock_251566309.jpg'),
    ('Sweet Lassi', 60, 'Beverages', TRUE, 'https://www.sharmispassions.com/wp-content/uploads/2023/08/sweet-lassi3.jpg'),
    ('Salted Lassi', 60, 'Beverages', TRUE, 'https://cdn3.foodviva.com/static-content/food-images/north-indian-recipes/salted-lassi/salted-lassi.jpg'),
    ('Mango Shake', 90, 'Beverages', TRUE, 'https://saturn.health/cdn/shop/articles/7_Surprising_Benefits_of_Mango_Shake_Benefits_You_Need_to_Know_720x.jpg?v=1681455877'),
    ('Chocolate Shake', 100, 'Beverages', TRUE, 'https://images.contentstack.io/v3/assets/bltcedd8dbd5891265b/bltd2f0b951708bdfce/66707638b76a9292bd908d6f/chocolate-truffle-featured-image.jpg?q=70&width=3840&auto=webp'),
    ('Fresh Lime Soda', 50, 'Beverages', TRUE, 'https://www.seriouseats.com/thmb/Lkr5DnY7jNP2aP5DS3d5qE0PEkQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__2020__08__20200816-nimbu-soda-vicky-wasik-1-28079d5d45ee4e47a37a969d1e4834a0.jpg');


ALTER SEQUENCE branch_branchid_seq RESTART WITH 1;

-- Restaurants (10)
INSERT INTO Branch (Contact, branchtype, address, states, Branch_name) VALUES
('9876543210', 'restaurant', 'Connaught Place', 'Delhi', 'The Spice Haven'),
('9123456789', 'restaurant', 'MG Road', 'Bangalore', 'Bangalore Bites'),
('9234567890', 'restaurant', 'Park Street', 'Kolkata', 'Bengal Delights'),
('9345678901', 'restaurant', 'Bandra', 'Mumbai', 'Coastal Curries'),
('9456789012', 'restaurant', 'Cyber Hub', 'Gurgaon', 'Gourmet Galaxy'),
('9567890123', 'restaurant', 'Banjara Hills', 'Hyderabad', 'Nizam’s Feast'),
('9678901234', 'restaurant', 'Anna Nagar', 'Chennai', 'South Spice'),
('9789012345', 'restaurant', 'FC Road', 'Pune', 'Pune Platters'),
('9890123456', 'restaurant', 'Sector 17', 'Chandigarh', 'Tandoori Junction'),
('9901234567', 'restaurant', 'Civil Lines', 'Jaipur', 'Royal Rajwada');

-- Food Trucks (5)
INSERT INTO Branch (Contact, branchtype, address, states, Branch_name) VALUES
('7012345678', 'foodtruck', 'Hauz Khas',  'Delhi', 'Street Bites'),
('7123456789', 'foodtruck', 'Koramangala',  'Bangalore', 'Rolling Tacos'),
('7234567890', 'foodtruck', 'Salt Lake',  'Kolkata', 'Kolkata Chaat Express'),
('7345678901', 'foodtruck', 'Marine Drive',  'Mumbai', 'Mumbai on Wheels'),
('7456789012', 'foodtruck', 'Gachibowli',  'Hyderabad', 'Hyderabadi Kebabs');

-- Kiosks (5)
INSERT INTO Branch (Contact, branchtype, address, states, Branch_name) VALUES
('8012345678', 'kiosk', 'Delhi Airport',  'Delhi', 'Express Eats'),
('8123456789', 'kiosk', 'Brigade Road',  'Bangalore', 'Quick Munch'),
('8234567890', 'kiosk', 'Esplanade',  'Kolkata', 'Fast Feast'),
('8345678901', 'kiosk', 'Colaba',  'Mumbai', 'Snack Stop'),
('8456789012', 'kiosk', 'Jubilee Hills',  'Hyderabad', 'Bite & Go');


-- Reset the sequence to start from 1
ALTER SEQUENCE employee_employee_id_seq RESTART WITH 1;

INSERT INTO Employee (EName, ERole, shift_start, shift_end, salary, manager_id) VALUES
-- Managers (manager_id is NULL for top-level managers)
('Amit Sharma', 'manager', '2024-02-01 09:00:00', '2024-02-01 17:00:00', 60000, NULL),
('Vikram Singh', 'manager', '2024-02-01 08:00:00', '2024-02-01 16:00:00', 62000, NULL),
('Neha Gupta', 'manager', '2024-02-01 10:00:00', '2024-02-01 18:00:00', 61000, NULL),
('Rajeev Rathi', 'manager', '2024-02-01 07:00:00', '2024-02-01 15:00:00', 59000, NULL),
('Sunil Yadav', 'manager', '2024-02-01 12:00:00', '2024-02-01 20:00:00', 58000, NULL),
('Kiran Mehta', 'manager', '2024-02-01 14:00:00', '2024-02-01 22:00:00', 60500, NULL),
('Prakash Tiwari', 'manager', '2024-02-01 15:00:00', '2024-02-01 23:00:00', 59500, NULL),
('Anjali Verma', 'manager', '2024-02-01 11:00:00', '2024-02-01 19:00:00', 59000, NULL),
('Suresh Thakur', 'manager', '2024-02-01 16:00:00', '2024-02-02 00:00:00', 60000, NULL),
('Manisha Jha', 'manager', '2024-02-01 13:00:00', '2024-02-01 21:00:00', 61500, NULL),

-- Cooks
('Ravi Kumar', 'cook', '2024-02-01 10:00:00', '2024-02-01 18:00:00', 35000, floor(random()*10 + 1)),
('Amit Mishra', 'cook', '2024-02-01 12:00:00', '2024-02-01 20:00:00', 34000, floor(random()*10 + 1)),
('Vivek Tandon', 'cook', '2024-02-01 06:00:00', '2024-02-01 14:00:00', 33000, floor(random()*10 + 1)),
('Pankaj Saxena', 'cook', '2024-02-01 14:00:00', '2024-02-01 22:00:00', 35500, floor(random()*10 + 1)),
('Manoj Tiwari', 'cook', '2024-02-01 07:00:00', '2024-02-01 15:00:00', 34500, floor(random()*10 + 1)),
('Sandeep Sharma', 'cook', '2024-02-01 09:00:00', '2024-02-01 17:00:00', 34000, floor(random()*10 + 1)),
('Ashok Patel', 'cook', '2024-02-01 15:00:00', '2024-02-01 23:00:00', 35500, floor(random()*10 + 1)),
('Deepak Joshi', 'cook', '2024-02-01 08:00:00', '2024-02-01 16:00:00', 35000, floor(random()*10 + 1)),
('Ajay Rana', 'cook', '2024-02-01 11:00:00', '2024-02-01 19:00:00', 33000, floor(random()*10 + 1)),
('Ganesh Nair', 'cook', '2024-02-01 16:00:00', '2024-02-02 00:00:00', 34000, floor(random()*10 + 1)),
('Sameer Khan', 'cook', '2024-02-01 12:00:00', '2024-02-01 20:00:00', 35000, floor(random()*10 + 1)),
('Rakesh Meena', 'cook', '2024-02-01 07:00:00', '2024-02-01 15:00:00', 34500, floor(random()*10 + 1)),
('Santosh Reddy', 'cook', '2024-02-01 10:00:00', '2024-02-01 18:00:00', 35500, floor(random()*10 + 1)),
('Naresh Yadav', 'cook', '2024-02-01 08:00:00', '2024-02-01 16:00:00', 34000, floor(random()*10 + 1)),
('Hemant Bhardwaj', 'cook', '2024-02-01 14:00:00', '2024-02-01 22:00:00', 34500, floor(random()*10 + 1)),
('Sushant Kumar', 'cook', '2024-02-01 09:00:00', '2024-02-01 17:00:00', 35500, floor(random()*10 + 1)),
('Vikas Saxena', 'cook', '2024-02-01 16:00:00', '2024-02-02 00:00:00', 34000, floor(random()*10 + 1)),
('Dinesh Rajput', 'cook', '2024-02-01 10:00:00', '2024-02-01 18:00:00', 35000, floor(random()*10 + 1)),
('Kunal Pandey', 'cook', '2024-02-01 07:00:00', '2024-02-01 15:00:00', 34500, floor(random()*10 + 1));

-- Additional 20+ employees (waiters, cashiers, cleaners) following the same structure...
-- Waiters (10)
INSERT INTO Employee (EName, ERole, shift_start, shift_end, salary, manager_id) VALUES
('Rohit Sharma', 'waiter', '2024-02-01 08:00:00', '2024-02-01 16:00:00', 25000, floor(random()*10 + 1)),
('Sahil Kapoor', 'waiter', '2024-02-01 10:00:00', '2024-02-01 18:00:00', 26000, floor(random()*10 + 1)),
('Ankit Sinha', 'waiter', '2024-02-01 12:00:00', '2024-02-01 20:00:00', 25500, floor(random()*10 + 1)),
('Suresh Chandra', 'waiter', '2024-02-01 14:00:00', '2024-02-01 22:00:00', 25000, floor(random()*10 + 1)),
('Naveen Rathi', 'waiter', '2024-02-01 09:00:00', '2024-02-01 17:00:00', 25500, floor(random()*10 + 1)),
('Alok Verma', 'waiter', '2024-02-01 07:00:00', '2024-02-01 15:00:00', 25000, floor(random()*10 + 1)),
('Mahesh Gupta', 'waiter', '2024-02-01 13:00:00', '2024-02-01 21:00:00', 26000, floor(random()*10 + 1)),
('Deepak Rao', 'waiter', '2024-02-01 15:00:00', '2024-02-01 23:00:00', 25500, floor(random()*10 + 1)),
('Tarun Malhotra', 'waiter', '2024-02-01 06:00:00', '2024-02-01 14:00:00', 25000, floor(random()*10 + 1)),
('Rahul Dixit', 'waiter', '2024-02-01 16:00:00', '2024-02-02 00:00:00', 26000, floor(random()*10 + 1));

-- Cashiers (5)
INSERT INTO Employee (EName, ERole, shift_start, shift_end, salary, manager_id) VALUES
('Varun Patel', 'cashier', '2024-02-01 08:00:00', '2024-02-01 16:00:00', 30000, floor(random()*10 + 1)),
('Piyush Jain', 'cashier', '2024-02-01 12:00:00', '2024-02-01 20:00:00', 31000, floor(random()*10 + 1)),
('Anjali Reddy', 'cashier', '2024-02-01 14:00:00', '2024-02-01 22:00:00', 30500, floor(random()*10 + 1)),
('Sneha Mehta', 'cashier', '2024-02-01 09:00:00', '2024-02-01 17:00:00', 31500, floor(random()*10 + 1)),
('Vivek Trivedi', 'cashier', '2024-02-01 16:00:00', '2024-02-02 00:00:00', 31000, floor(random()*10 + 1));

-- Cleaners (5)
INSERT INTO Employee (EName, ERole, shift_start, shift_end, salary, manager_id) VALUES
('Harish Kumar', 'cleaner', '2024-02-01 06:00:00', '2024-02-01 14:00:00', 22000, floor(random()*10 + 1)),
('Mukesh Yadav', 'cleaner', '2024-02-01 07:00:00', '2024-02-01 15:00:00', 22500, floor(random()*10 + 1)),
('Ram Vilas', 'cleaner', '2024-02-01 14:00:00', '2024-02-01 22:00:00', 23000, floor(random()*10 + 1)),
('Sanjay Das', 'cleaner', '2024-02-01 15:00:00', '2024-02-01 23:00:00', 22500, floor(random()*10 + 1)),
('Dheeraj Rana', 'cleaner', '2024-02-01 10:00:00', '2024-02-01 18:00:00', 22000, floor(random()*10 + 1));


-- Reset the sequence to start from 1
ALTER SEQUENCE orders_orderid_seq RESTART WITH 1;

INSERT INTO orders (orderdate, payment_method, customerID, TotalPrice, status, branchID) VALUES 
('2024-10-15', 'card', 12, 0, 'complete', 9),
('2024-11-02', 'upi', 22, 0, 'pending', 15),
('2024-08-28', 'cash', 7, 0, 'complete', 1),
('2024-10-12', 'upi', 4, 0, 'canceled', 10),
('2024-12-01', 'upi', 27, 0, 'complete', 17),
('2024-09-09', 'card', 44, 0, 'pending', 6),
('2024-07-31', 'cash', 14, 0, 'canceled', 2),
('2024-11-21', 'upi', 39, 0, 'complete', 3),
('2024-10-06', 'card', 5, 0, 'pending', 14),
('2024-08-18', 'cash', 11, 0, 'canceled', 7),
('2024-11-18', 'upi', 36, 0, 'complete', 11),
('2024-09-12', 'card', 20, 0, 'pending', 19),
('2024-07-25', 'cash', 33, 0, 'complete', 4),
('2024-10-03', 'upi', 16, 0, 'canceled', 8),
('2024-09-30', 'upi', 1, 0, 'complete', 12),
('2024-08-06', 'cash', 25, 0, 'pending', 13),
('2024-11-11', 'card', 6, 0, 'canceled', 5),
('2024-12-04', 'upi', 13, 0, 'complete', 20),
('2024-10-24', 'cash', 29, 0, 'pending', 16),
('2024-07-15', 'card', 41, 0, 'canceled', 18),
('2024-11-05', 'upi', 10, 0, 'complete', 9),
('2024-09-22', 'cash', 31, 0, 'pending', 7),
('2024-08-10', 'upi', 17, 0, 'canceled', 2),
('2024-10-09', 'card', 46, 0, 'complete', 10),
('2024-07-27', 'cash', 15, 0, 'pending', 6),
('2024-12-07', 'upi', 9, 0, 'canceled', 3),
('2024-11-13', 'card', 2, 0, 'complete', 1),
('2024-09-05', 'cash', 43, 0, 'pending', 5),
('2024-08-01', 'upi', 28, 0, 'canceled', 11),
('2024-10-30', 'card', 18, 0, 'complete', 12),
('2024-07-18', 'cash', 30, 0, 'pending', 14),
('2024-11-28', 'upi', 8, 0, 'canceled', 17),
('2024-09-19', 'card', 19, 0, 'complete', 4),
('2024-08-14', 'upi', 3, 0, 'pending', 8),
('2024-10-01', 'cash', 45, 0, 'canceled', 15),
('2024-07-20', 'card', 38, 0, 'complete', 2),
('2024-12-10', 'upi', 24, 0, 'pending', 20),
('2024-10-20', 'cash', 35, 0, 'canceled', 13),
('2024-11-09', 'card', 21, 0, 'complete', 6),
('2024-09-02', 'upi', 42, 0, 'pending', 9),
('2024-08-22', 'cash', 40, 0, 'canceled', 10),
('2024-10-17', 'card', 32, 0, 'complete', 5),
('2024-07-10', 'upi', 26, 0, 'pending', 3),
('2024-11-25', 'cash', 23, 0, 'canceled', 16),
('2024-09-27', 'card', 37, 0, 'complete', 11),
('2024-08-04', 'upi', 34, 0, 'pending', 7),
('2024-10-13', 'cash', 47, 0, 'canceled', 19),
('2024-07-28', 'card', 48, 0, 'complete', 18),
('2024-12-12', 'upi', 12, 0, 'pending', 1),
('2024-11-16', 'cash', 22, 0, 'canceled', 4),
('2024-09-07', 'card', 7, 0, 'complete', 8),
('2024-08-09', 'upi', 44, 0, 'pending', 13),
('2024-10-05', 'cash', 5, 0, 'canceled', 20),
('2024-07-23', 'card', 36, 0, 'complete', 17),
('2024-12-15', 'upi', 27, 0, 'pending', 12),
('2024-11-07', 'cash', 4, 0, 'canceled', 15),
('2024-09-17', 'card', 16, 0, 'complete', 6),
('2024-08-26', 'upi', 11, 0, 'pending', 19),
('2024-10-11', 'cash', 13, 0, 'canceled', 9),
('2024-07-29', 'card', 20, 0, 'complete', 14),
('2024-11-03', 'upi', 6, 0, 'pending', 10),
('2024-09-24', 'cash', 39, 0, 'canceled', 2),
('2024-08-12', 'card', 1, 0, 'complete', 3),
('2024-10-21', 'upi', 19, 0, 'pending', 7),
('2024-07-26', 'cash', 33, 0, 'canceled', 11),
('2024-12-02', 'card', 31, 0, 'complete', 8),
('2024-11-30', 'upi', 3, 0, 'pending', 5),
('2024-09-14', 'cash', 28, 0, 'canceled', 13),
('2024-08-07', 'card', 45, 0, 'complete', 1),
('2024-10-27', 'upi', 9, 0, 'pending', 4),
('2024-07-13', 'cash', 14, 0, 'canceled', 6),
('2024-12-06', 'card', 41, 0, 'complete', 12),
('2024-11-23', 'upi', 2, 0, 'pending', 18),
('2024-09-03', 'cash', 35, 0, 'canceled', 17),
('2024-08-19', 'card', 21, 0, 'complete', 19),
('2024-10-16', 'upi', 30, 0, 'pending', 16),
('2024-07-30', 'cash', 17, 0, 'canceled', 10),
('2024-12-08', 'card', 24, 0, 'complete', 20),
('2024-11-01', 'upi', 43, 0, 'pending', 14),
('2024-09-11', 'cash', 29, 0, 'canceled', 2),
('2024-08-23', 'card', 18, 0, 'complete', 5),
('2024-10-25', 'upi', 40, 0, 'pending', 11),
('2024-07-17', 'cash', 10, 0, 'canceled', 3),
('2024-12-14', 'card', 26, 0, 'complete', 7),
('2024-11-10', 'upi', 38, 0, 'pending', 6),
('2024-09-15', 'cash', 23, 0, 'canceled', 9),
('2024-08-03', 'card', 32, 0, 'complete', 13),
('2024-10-14', 'upi', 37, 0, 'pending', 1),
('2024-07-19', 'cash', 46, 0, 'canceled', 4),
('2024-12-11', 'card', 8, 0, 'complete', 15),
('2024-11-06', 'upi', 34, 0, 'pending', 16),
('2024-09-20', 'cash', 42, 0, 'canceled', 18),
('2024-08-20', 'card', 15, 0, 'complete', 17),
('2024-10-08', 'upi', 12, 0, 'pending', 19),
('2024-07-21', 'cash', 7, 0, 'canceled', 20),
('2024-12-05', 'card', 25, 0, 'complete', 2),
('2024-11-14', 'upi', 44, 0, 'pending', 10),
('2024-09-08', 'cash', 5, 0, 'canceled', 11);


INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (1, 'Veg Kurkure Momos', 4, 'Extra chutney');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (2, 'Chicken Steam Momos', 2, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (3, 'Cold Coffee', 1, 'Less spicy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (4, 'Paneer Gravy Momos', 3, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (5, 'Veg Steam Momos', 2, 'No onions');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (6, 'Chilly Fried Momos', 5, 'Make it extra crispy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (7, 'Black Coffee', 3, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (8, 'Cheese Gravy Momos', 1, 'Less spicy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (9, 'Soya Kurkure Momos', 2, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (10, 'Masala Chai', 2, 'No onions');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (11, 'Cheese Steam Momos', 4, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (12, 'Mango Shake', 1, 'Extra chutney');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (13, 'Chilly Steam Momos', 3, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (14, 'Chicken Gravy Momos', 5, 'Make it extra crispy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (15, 'Cheese Fried Momos', 2, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (16, 'Green Tea', 3, 'Less spicy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (17, 'Paneer Steam Momos', 2, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (18, 'Sweet Lassi', 1, 'Extra chutney');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (19, 'Soya Gravy Momos', 5, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (20, 'Paneer Fried Momos', 4, 'No onions');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (21, 'Chilly Kurkure Momos', 3, 'Make it extra crispy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (22, 'Soya Steam Momos', 2, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (23, 'Chicken Kurkure Momos', 4, 'Less spicy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (24, 'Fresh Lime Soda', 1, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (25, 'Cheese Kurkure Momos', 2, NULL);

INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (26, 'Salted Lassi', 3, 'Extra chutney');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (27, 'Chilly Gravy Momos', 4, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (28, 'Chicken Fried Momos', 5, 'Make it extra crispy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (29, 'Veg Gravy Momos', 2, 'Less spicy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (30, 'Soya Fried Momos', 1, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (31, 'Paneer Kurkure Momos', 4, 'No onions');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (32, 'Chocolate Shake', 3, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (33, 'Chicken Steam Momos', 1, 'Make it extra crispy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (34, 'Green Tea', 2, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (35, 'Soya Kurkure Momos', 3, 'Extra chutney');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (36, 'Masala Chai', 2, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (37, 'Cheese Gravy Momos', 4, 'Less spicy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (38, 'Chicken Gravy Momos', 3, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (39, 'Paneer Steam Momos', 2, 'No onions');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (40, 'Cold Coffee', 1, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (41, 'Chilly Fried Momos', 5, 'Make it extra crispy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (42, 'Soya Steam Momos', 3, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (43, 'Paneer Gravy Momos', 4, 'Extra chutney');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (44, 'Black Coffee', 2, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (45, 'Veg Fried Momos', 3, 'No onions');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (46, 'Chicken Kurkure Momos', 2, 'Less spicy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (47, 'Veg Steam Momos', 1, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (48, 'Salted Lassi', 3, 'Make it extra crispy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (49, 'Chicken Fried Momos', 4, 'Extra chutney');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (50, 'Paneer Gravy Momos', 2, NULL);

INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (51, 'Chocolate Shake', 1, 'Less spicy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (52, 'Cheese Fried Momos', 3, 'Make it extra crispy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (53, 'Veg Steam Momos', 2, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (54, 'Mango Shake', 1, 'No onions');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (55, 'Soya Gravy Momos', 4, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (56, 'Green Tea', 2, 'Less spicy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (57, 'Chicken Steam Momos', 5, 'Extra chutney');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (58, 'Cheese Gravy Momos', 3, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (59, 'Cold Coffee', 2, 'No onions');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (60, 'Chilly Steam Momos', 4, 'Make it extra crispy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (61, 'Paneer Steam Momos', 2, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (62, 'Soya Kurkure Momos', 1, 'Extra chutney');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (63, 'Sweet Lassi', 3, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (64, 'Veg Fried Momos', 4, 'Less spicy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (65, 'Black Coffee', 2, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (66, 'Paneer Kurkure Momos', 5, 'Make it extra crispy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (67, 'Soya Steam Momos', 3, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (68, 'Fresh Lime Soda', 1, 'Less spicy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (69, 'Chicken Kurkure Momos', 2, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (70, 'Masala Chai', 3, 'No onions');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (71, 'Chilly Fried Momos', 5, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (72, 'Salted Lassi', 2, 'Extra chutney');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (73, 'Cheese Steam Momos', 3, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (74, 'Paneer Fried Momos', 4, 'Less spicy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (75, 'Chilly Gravy Momos', 2, 'Make it extra crispy');

INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (76, 'Chicken Gravy Momos', 5, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (77, 'Veg Kurkure Momos', 3, 'No onions');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (78, 'Soya Fried Momos', 2, 'Less spicy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (79, 'Mango Shake', 1, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (80, 'Cheese Kurkure Momos', 4, 'Make it extra crispy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (81, 'Chocolate Shake', 2, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (82, 'Chicken Steam Momos', 5, 'Extra chutney');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (83, 'Chilly Steam Momos', 3, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (84, 'Veg Gravy Momos', 1, 'No onions');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (85, 'Green Tea', 4, 'Less spicy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (86, 'Sweet Lassi', 2, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (87, 'Chicken Fried Momos', 5, 'Make it extra crispy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (88, 'Cheese Gravy Momos', 2, 'Extra chutney');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (89, 'Cold Coffee', 3, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (90, 'Paneer Kurkure Momos', 1, 'Less spicy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (91, 'Soya Gravy Momos', 2, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (92, 'Black Coffee', 4, 'No onions');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (93, 'Veg Steam Momos', 3, 'Make it extra crispy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (94, 'Cheese Fried Momos', 1, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (95, 'Chilly Kurkure Momos', 5, 'Extra chutney');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (96, 'Soya Steam Momos', 2, NULL);
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (97, 'Masala Chai', 3, 'Less spicy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (98, 'Salted Lassi', 1, 'No onions');

INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (1, 'Veg Fried Momos', 2, 'Extra chutney');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (2, 'Chicken Gravy Momos', 3, 'Less spicy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (50, 'Soya Steam Momos', 1, 'No onions');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (1, 'Paneer Kurkure Momos', 4, 'Extra crispy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (5, 'Chilly Fried Momos', 2, 'Extra spicy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (6, 'Cheese Gravy Momos', 1, 'Extra cheese');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (7, 'Masala Chai', 3, 'Less sugar');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (8, 'Veg Steam Momos', 2, 'No garlic');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (9, 'Chicken Kurkure Momos', 4, 'Extra chutney');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (10, 'Paneer Steam Momos', 1, 'No onions');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (11, 'Lemon Iced Tea', 2, 'Less sugar');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (12, 'Veg Gravy Momos', 3, 'Extra gravy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (23, 'Chilly Steam Momos', 2, 'Extra spicy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (14, 'Soya Fried Momos', 1, 'No onions');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (15, 'Sweet Lassi', 3, 'Extra sweet');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (23, 'Chocolate Shake', 3, 'Extra chocolate');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (24, 'Paneer Gravy Momos', 2, 'Extra gravy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (21, 'Soya Gravy Momos', 4, 'Extra spicy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (16, 'Black Coffee', 1, 'Less sugar');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (30, 'Fresh Lime Soda', 2, 'Extra lime');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (22, 'Chilly Kurkure Momos', 3, 'Extra spicy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (29, 'Soya Kurkure Momos', 2, 'Extra crispy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (30, 'Chilly Steam Momos', 1, 'Extra spicy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (31, 'Sweet Lassi', 3, 'Extra sweet');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (2, 'Veg Steam Momos', 2, 'No onions');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (33, 'Cheese Gravy Momos', 4, 'Extra cheese');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (23, 'Masala Chai', 1, 'Less sugar');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (35, 'Chicken Steam Momos', 2, 'Extra chutney');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (36, 'Chicken Gravy Momos', 3, 'Extra gravy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (37, 'Paneer Fried Momos', 2, 'Extra crispy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (38, 'Lemon Iced Tea', 1, 'Extra lime');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (39, 'Veg Fried Momos', 3, 'No onions');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (42, 'Black Coffee', 2, 'Less sugar');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (1, 'Green Tea', 1, 'Less sugar');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (42, 'Chicken Fried Momos', 2, 'Extra crispy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (43, 'Soya Gravy Momos', 3, 'Extra spicy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (34, 'Chilly Fried Momos', 2, 'Extra spicy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (45, 'Cheese Fried Momos', 1, 'Extra cheese');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (46, 'Paneer Gravy Momos', 4, 'Extra gravy');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (47, 'Cold Coffee', 2, 'Less sugar');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (48, 'Paneer Steam Momos', 1, 'No onions');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (49, 'Chocolate Shake', 3, 'Extra chocolate');
INSERT INTO Has (orderid, dishname, quantity, Customization) VALUES (50, 'Soya Fried Momos', 2, 'Extra crispy');

UPDATE orders o
SET TotalPrice = COALESCE((
  SELECT SUM(mi.price * h.quantity)
  FROM Has h
  JOIN MenuItem mi ON h.dishname = mi.dishname
  WHERE h.orderid = o.orderid
), 0);


ALTER SEQUENCE inventory_itemid_seq RESTART WITH 1;

--Potato
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Potato', 85, '123 Main St, New York, NY', 7);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Potato', 61, '123 Main St, New York, NY', 12);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Potato', 108, '123 Main St, New York, NY', 3);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Potato', 73, '123 Main St, New York, NY', 18);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Potato', 99, '123 Main St, New York, NY', 14);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Potato', 104, '123 Main St, New York, NY', 2);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Potato', 91, '123 Main St, New York, NY', 10);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Potato', 69, '123 Main St, New York, NY', 5);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Potato', 84, '123 Main St, New York, NY', 1);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Potato', 111, '123 Main St, New York, NY', 16);

--Flour
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Flour', 77, '456 Elm St, Los Angeles, CA', 8);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Flour', 91, '456 Elm St, Los Angeles, CA', 2);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Flour', 115, '456 Elm St, Los Angeles, CA', 13);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Flour', 66, '456 Elm St, Los Angeles, CA', 20);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Flour', 72, '456 Elm St, Los Angeles, CA', 7);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Flour', 108, '456 Elm St, Los Angeles, CA', 3);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Flour', 98, '456 Elm St, Los Angeles, CA', 11);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Flour', 79, '456 Elm St, Los Angeles, CA', 19);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Flour', 103, '456 Elm St, Los Angeles, CA', 4);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Flour', 88, '456 Elm St, Los Angeles, CA', 6);

-- Sugar
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Sugar', 92, '789 Oak St, Chicago, IL', 5);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Sugar', 110, '789 Oak St, Chicago, IL', 18);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Sugar', 83, '789 Oak St, Chicago, IL', 11);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Sugar', 95, '789 Oak St, Chicago, IL', 15);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Sugar', 73, '789 Oak St, Chicago, IL', 9);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Sugar', 106, '789 Oak St, Chicago, IL', 2);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Sugar', 65, '789 Oak St, Chicago, IL', 12);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Sugar', 79, '789 Oak St, Chicago, IL', 7);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Sugar', 88, '789 Oak St, Chicago, IL', 3);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Sugar', 101, '789 Oak St, Chicago, IL', 14);

-- Salt
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Salt', 96, '321 Pine St, Houston, TX', 10);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Salt', 67, '321 Pine St, Houston, TX', 1);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Salt', 78, '321 Pine St, Houston, TX', 17);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Salt', 114, '321 Pine St, Houston, TX', 4);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Salt', 82, '321 Pine St, Houston, TX', 19);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Salt', 70, '321 Pine St, Houston, TX', 6);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Salt', 105, '321 Pine St, Houston, TX', 13);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Salt', 89, '321 Pine St, Houston, TX', 8);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Salt', 94, '321 Pine St, Houston, TX', 20);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Salt', 74, '321 Pine St, Houston, TX', 16);

-- Cabbage
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Cabbage', 69, '654 Maple St, Phoenix, AZ', 3);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Cabbage', 102, '654 Maple St, Phoenix, AZ', 11);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Cabbage', 91, '654 Maple St, Phoenix, AZ', 18);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Cabbage', 77, '654 Maple St, Phoenix, AZ', 5);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Cabbage', 88, '654 Maple St, Phoenix, AZ', 9);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Cabbage', 112, '654 Maple St, Phoenix, AZ', 14);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Cabbage', 93, '654 Maple St, Phoenix, AZ', 7);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Cabbage', 81, '654 Maple St, Phoenix, AZ', 2);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Cabbage', 66, '654 Maple St, Phoenix, AZ', 13);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Cabbage', 100, '654 Maple St, Phoenix, AZ', 6);

-- Sauce
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Sauce', 85, '987 Cedar St, Philadelphia, PA', 17);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Sauce', 74, '987 Cedar St, Philadelphia, PA', 4);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Sauce', 108, '987 Cedar St, Philadelphia, PA', 1);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Sauce', 97, '987 Cedar St, Philadelphia, PA', 15);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Sauce', 90, '987 Cedar St, Philadelphia, PA', 8);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Sauce', 103, '987 Cedar St, Philadelphia, PA', 20);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Sauce', 68, '987 Cedar St, Philadelphia, PA', 10);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Sauce', 113, '987 Cedar St, Philadelphia, PA', 19);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Sauce', 95, '987 Cedar St, Philadelphia, PA', 12);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Sauce', 71, '987 Cedar St, Philadelphia, PA', 16);

-- Carrot
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Carrot', 83, '246 Birch St, San Antonio, TX', 6);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Carrot', 91, '246 Birch St, San Antonio, TX', 9);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Carrot', 87, '246 Birch St, San Antonio, TX', 14);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Carrot', 109, '246 Birch St, San Antonio, TX', 3);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Carrot', 75, '246 Birch St, San Antonio, TX', 13);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Carrot', 102, '246 Birch St, San Antonio, TX', 7);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Carrot', 93, '246 Birch St, San Antonio, TX', 1);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Carrot', 67, '246 Birch St, San Antonio, TX', 11);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Carrot', 79, '246 Birch St, San Antonio, TX', 17);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Carrot', 84, '246 Birch St, San Antonio, TX', 4);

-- Tomato
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Tomato', 98, '135 Spruce St, San Diego, CA', 5);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Tomato', 76, '135 Spruce St, San Diego, CA', 18);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Tomato', 92, '135 Spruce St, San Diego, CA', 15);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Tomato', 65, '135 Spruce St, San Diego, CA', 10);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Tomato', 87, '135 Spruce St, San Diego, CA', 16);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Tomato', 112, '135 Spruce St, San Diego, CA', 19);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Tomato', 104, '135 Spruce St, San Diego, CA', 2);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Tomato', 73, '135 Spruce St, San Diego, CA', 8);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Tomato', 106, '135 Spruce St, San Diego, CA', 12);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Tomato', 89, '135 Spruce St, San Diego, CA', 20);

-- Capsicum
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Capsicum', 105, '864 Walnut St, Dallas, TX', 6);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Capsicum', 94, '864 Walnut St, Dallas, TX', 13);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Capsicum', 70, '864 Walnut St, Dallas, TX', 3);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Capsicum', 97, '864 Walnut St, Dallas, TX', 1);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Capsicum', 85, '864 Walnut St, Dallas, TX', 9);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Capsicum', 100, '864 Walnut St, Dallas, TX', 7);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Capsicum', 77, '864 Walnut St, Dallas, TX', 11);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Capsicum', 90, '864 Walnut St, Dallas, TX', 4);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Capsicum', 68, '864 Walnut St, Dallas, TX', 17);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Capsicum', 103, '864 Walnut St, Dallas, TX', 14);

-- Mayonnaise
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Mayonnaise', 107, '753 Chestnut St, San Jose, CA', 12);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Mayonnaise', 72, '753 Chestnut St, San Jose, CA', 18);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Mayonnaise', 93, '753 Chestnut St, San Jose, CA', 16);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Mayonnaise', 84, '753 Chestnut St, San Jose, CA', 8);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Mayonnaise', 111, '753 Chestnut St, San Jose, CA', 10);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Mayonnaise', 69, '753 Chestnut St, San Jose, CA', 5);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Mayonnaise', 101, '753 Chestnut St, San Jose, CA', 13);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Mayonnaise', 78, '753 Chestnut St, San Jose, CA', 2);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Mayonnaise', 109, '753 Chestnut St, San Jose, CA', 19);
INSERT INTO Inventory (item, quantity, supplier, branchID) VALUES ('Mayonnaise', 86, '753 Chestnut St, San Jose, CA', 15);


ALTER SEQUENCE menu_menuid_seq RESTART WITH 1;

INSERT INTO Menu (kind) VALUES ('breakfast');--1
INSERT INTO Menu (kind) VALUES ('lunch');--2
INSERT INTO Menu (kind) VALUES ('breakfast');--3
INSERT INTO Menu (kind) VALUES ('breakfast');--4
INSERT INTO Menu (kind) VALUES ('dinner');--5
INSERT INTO Menu (kind) VALUES ('lunch');--6
INSERT INTO Menu (kind) VALUES ('breakfast');--7
INSERT INTO Menu (kind) VALUES ('breakfast');--8
INSERT INTO Menu (kind) VALUES ('breakfast');--9
INSERT INTO Menu (kind) VALUES ('lunch');--10
INSERT INTO Menu (kind) VALUES ('dinner');--11
INSERT INTO Menu (kind) VALUES ('breakfast');--12
INSERT INTO Menu (kind) VALUES ('lunch');--13
INSERT INTO Menu (kind) VALUES ('breakfast');--14
INSERT INTO Menu (kind) VALUES ('lunch');--15
INSERT INTO Menu (kind) VALUES ('dinner');--16
INSERT INTO Menu (kind) VALUES ('dinner');--17
INSERT INTO Menu (kind) VALUES ('breakfast');--18
INSERT INTO Menu (kind) VALUES ('lunch');--19
INSERT INTO Menu (kind) VALUES ('breakfast');--20
INSERT INTO Menu (kind) VALUES ('dinner');--21
INSERT INTO Menu (kind) VALUES ('snacks');--22
INSERT INTO Menu (kind) VALUES ('lunch');--23
INSERT INTO Menu (kind) VALUES ('dinner');--24
INSERT INTO Menu (kind) VALUES ('dinner');--25
INSERT INTO Menu (kind) VALUES ('snacks');--26
INSERT INTO Menu (kind) VALUES ('lunch');--27
INSERT INTO Menu (kind) VALUES ('breakfast');--28
INSERT INTO Menu (kind) VALUES ('snacks');--29
INSERT INTO Menu (kind) VALUES ('dinner');--30
INSERT INTO Menu (kind) VALUES ('dinner');--31
INSERT INTO Menu (kind) VALUES ('snacks');--32
INSERT INTO Menu (kind) VALUES ('snacks');--33
INSERT INTO Menu (kind) VALUES ('breakfast');--34
INSERT INTO Menu (kind) VALUES ('dinner');--35
INSERT INTO Menu (kind) VALUES ('lunch');--36
INSERT INTO Menu (kind) VALUES ('snacks');--37
INSERT INTO Menu (kind) VALUES ('breakfast');--38
INSERT INTO Menu (kind) VALUES ('dinner');--39
INSERT INTO Menu (kind) VALUES ('lunch');--40


INSERT INTO Offers (menuid, branchID) VALUES (12, 1); 
INSERT INTO Offers (menuid, branchID) VALUES (17, 1);
INSERT INTO Offers (menuid, branchID) VALUES (32, 1);
INSERT INTO Offers (menuid, branchID) VALUES (19, 1);

INSERT INTO Offers (menuid, branchID) VALUES (4, 2);
INSERT INTO Offers (menuid, branchID) VALUES (25, 2);
INSERT INTO Offers (menuid, branchID) VALUES (32, 2);
INSERT INTO Offers (menuid, branchID) VALUES (40, 2);

INSERT INTO Offers (menuid, branchID) VALUES (35, 3);

INSERT INTO Offers (menuid, branchID) VALUES (2, 4);

INSERT INTO Offers (menuid, branchID) VALUES (22, 5);

INSERT INTO Offers (menuid, branchID) VALUES (3, 6);

INSERT INTO Offers (menuid, branchID) VALUES (18, 7);
INSERT INTO Offers (menuid, branchID) VALUES (33, 7);
INSERT INTO Offers (menuid, branchID) VALUES (24, 7);

INSERT INTO Offers (menuid, branchID) VALUES (10, 8);
INSERT INTO Offers (menuid, branchID) VALUES (38, 8);
INSERT INTO Offers (menuid, branchID) VALUES (39, 8);

INSERT INTO Offers (menuid, branchID) VALUES (6, 9);
INSERT INTO Offers (menuid, branchID) VALUES (37, 9);
INSERT INTO Offers (menuid, branchID) VALUES (20, 9);
INSERT INTO Offers (menuid, branchID) VALUES (35, 9);

INSERT INTO Offers (menuid, branchID) VALUES (26, 10);
INSERT INTO Offers (menuid, branchID) VALUES (1, 10);
INSERT INTO Offers (menuid, branchID) VALUES (27, 10);
INSERT INTO Offers (menuid, branchID) VALUES (31, 10);

INSERT INTO Offers (menuid, branchID) VALUES (28, 11);
INSERT INTO Offers (menuid, branchID) VALUES (15, 11);
INSERT INTO Offers (menuid, branchID) VALUES (16, 11);
INSERT INTO Offers (menuid, branchID) VALUES (29, 11);

INSERT INTO Offers (menuid, branchID) VALUES (5, 12);

INSERT INTO Offers (menuid, branchID) VALUES (29, 13);
INSERT INTO Offers (menuid, branchID) VALUES (36, 13);
INSERT INTO Offers (menuid, branchID) VALUES (34, 13);

INSERT INTO Offers (menuid, branchID) VALUES (36, 14);
INSERT INTO Offers (menuid, branchID) VALUES (12, 14);

INSERT INTO Offers (menuid, branchID) VALUES (23, 15);
INSERT INTO Offers (menuid, branchID) VALUES (14, 15);

INSERT INTO Offers (menuid, branchID) VALUES (40, 16);
INSERT INTO Offers (menuid, branchID) VALUES (11, 16);

INSERT INTO Offers (menuid, branchID) VALUES (21, 17);
INSERT INTO Offers (menuid, branchID) VALUES (8, 17);
INSERT INTO Offers (menuid, branchID) VALUES (13, 17);

INSERT INTO Offers (menuid, branchID) VALUES (19, 18);

INSERT INTO Offers (menuid, branchID) VALUES (9, 19);
INSERT INTO Offers (menuid, branchID) VALUES (37, 19);
INSERT INTO Offers (menuid, branchID) VALUES (39, 19);
INSERT INTO Offers (menuid, branchID) VALUES (6, 19);

INSERT INTO Offers (menuid, branchID) VALUES (17, 20);
INSERT INTO Offers (menuid, branchID) VALUES (26, 20);


INSERT INTO Contain (menuid, dishname) VALUES (1, 'Veg Kurkure Momos');
INSERT INTO Contain (menuid, dishname) VALUES (1, 'Chicken Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (1, 'Sweet Lassi');
INSERT INTO Contain (menuid, dishname) VALUES (1, 'Cheese Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (1, 'Veg Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (1, 'Cheese Kurkure Momos');

INSERT INTO Contain (menuid, dishname) VALUES (2, 'Paneer Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (2, 'Cold Coffee');
INSERT INTO Contain (menuid, dishname) VALUES (2, 'Chicken Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (2, 'Soya Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (2, 'Masala Chai');
INSERT INTO Contain (menuid, dishname) VALUES (2, 'Chicken Steam Momos');

INSERT INTO Contain (menuid, dishname) VALUES (3, 'Chilly Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (3, 'Chilly Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (3, 'Masala Chai');
INSERT INTO Contain (menuid, dishname) VALUES (3, 'Sweet Lassi');
INSERT INTO Contain (menuid, dishname) VALUES (3, 'Chilly Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (3, 'Chilly Kurkure Momos');

INSERT INTO Contain (menuid, dishname) VALUES (4, 'Chicken Kurkure Momos');
INSERT INTO Contain (menuid, dishname) VALUES (4, 'Paneer Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (4, 'Lemon Iced Tea');
INSERT INTO Contain (menuid, dishname) VALUES (4, 'Veg Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (4, 'Chicken Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (4, 'Chilly Gravy Momos');

INSERT INTO Contain (menuid, dishname) VALUES (5, 'Chilly Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (5, 'Soya Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (5, 'Sweet Lassi');
INSERT INTO Contain (menuid, dishname) VALUES (5, 'Paneer Kurkure Momos');
INSERT INTO Contain (menuid, dishname) VALUES (5, 'Veg Kurkure Momos');
INSERT INTO Contain (menuid, dishname) VALUES (5, 'Cheese Kurkure Momos');

INSERT INTO Contain (menuid, dishname) VALUES (6, 'Cheese Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (6, 'Chilly Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (6, 'Green Tea');
INSERT INTO Contain (menuid, dishname) VALUES (6, 'Soya Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (6, 'Masala Chai');
INSERT INTO Contain (menuid, dishname) VALUES (6, 'Veg Fried Momos');

INSERT INTO Contain (menuid, dishname) VALUES (7, 'Chicken Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (7, 'Cheese Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (7, 'Chocolate Shake');
INSERT INTO Contain (menuid, dishname) VALUES (7, 'Paneer Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (7, 'Chilly Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (7, 'Cheese Gravy Momos');

INSERT INTO Contain (menuid, dishname) VALUES (8, 'Veg Kurkure Momos');
INSERT INTO Contain (menuid, dishname) VALUES (8, 'Black Coffee');
INSERT INTO Contain (menuid, dishname) VALUES (8, 'Fresh Lime Soda');
INSERT INTO Contain (menuid, dishname) VALUES (8, 'Chilly Kurkure Momos');
INSERT INTO Contain (menuid, dishname) VALUES (8, 'Paneer Kurkure Momos');
INSERT INTO Contain (menuid, dishname) VALUES (8, 'Cheese Kurkure Momos');

INSERT INTO Contain (menuid, dishname) VALUES (9, 'Veg Kurkure Momos');
INSERT INTO Contain (menuid, dishname) VALUES (9, 'Cold Coffee');
INSERT INTO Contain (menuid, dishname) VALUES (9, 'Sweet Lassi');
INSERT INTO Contain (menuid, dishname) VALUES (9, 'Veg Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (9, 'Veg Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (9, 'Veg Gravy Momos');

INSERT INTO Contain (menuid, dishname) VALUES (10, 'Cheese Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (10, 'Masala Chai');
INSERT INTO Contain (menuid, dishname) VALUES (10, 'Chicken Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (10, 'Chicken Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (10, 'Veg Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (10, 'Soya Gravy Momos');

INSERT INTO Contain (menuid, dishname) VALUES (11, 'Cheese Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (11, 'Chicken Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (11, 'Veg Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (11, 'Chilly Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (11, 'Paneer Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (11, 'Soya Fried Momos');

INSERT INTO Contain (menuid, dishname) VALUES (12, 'Green Tea');
INSERT INTO Contain (menuid, dishname) VALUES (12, 'Chicken Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (12, 'Soya Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (12, 'Chilly Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (12, 'Paneer Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (12, 'Soya Fried Momos');

INSERT INTO Contain (menuid, dishname) VALUES (13, 'Cheese Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (13, 'Paneer Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (13, 'Cold Coffee');
INSERT INTO Contain (menuid, dishname) VALUES (13, 'Paneer Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (13, 'Veg Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (13, 'Soya Steam Momos');

INSERT INTO Contain (menuid, dishname) VALUES (14, 'Chocolate Shake');
INSERT INTO Contain (menuid, dishname) VALUES (14, 'Soya Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (14, 'Paneer Kurkure Momos');
INSERT INTO Contain (menuid, dishname) VALUES (14, 'Chilly Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (14, 'Veg Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (14, 'Chicken Gravy Momos');

INSERT INTO Contain (menuid, dishname) VALUES (15, 'Veg Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (15, 'Chicken Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (15, 'Cheese Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (15, 'Salted Lassi');
INSERT INTO Contain (menuid, dishname) VALUES (15, 'Sweet Lassi');
INSERT INTO Contain (menuid, dishname) VALUES (15, 'Soya Steam Momos');

INSERT INTO Contain (menuid, dishname) VALUES (16, 'Chilly Kurkure Momos');
INSERT INTO Contain (menuid, dishname) VALUES (16, 'Soya Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (16, 'Mango Shake');
INSERT INTO Contain (menuid, dishname) VALUES (16, 'Paneer Gravy Momos');

INSERT INTO Contain (menuid, dishname) VALUES (17, 'Fresh Lime Soda');
INSERT INTO Contain (menuid, dishname) VALUES (17, 'Chilly Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (17, 'Veg Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (17, 'Chicken Kurkure Momos');

INSERT INTO Contain (menuid, dishname) VALUES (18, 'Masala Chai');
INSERT INTO Contain (menuid, dishname) VALUES (18, 'Green Tea');
INSERT INTO Contain (menuid, dishname) VALUES (18, 'Soya Kurkure Momos');
INSERT INTO Contain (menuid, dishname) VALUES (18, 'Chicken Gravy Momos');

INSERT INTO Contain (menuid, dishname) VALUES (19, 'Paneer Kurkure Momos');
INSERT INTO Contain (menuid, dishname) VALUES (19, 'Chilly Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (19, 'Cold Coffee');
INSERT INTO Contain (menuid, dishname) VALUES (19, 'Veg Gravy Momos');

INSERT INTO Contain (menuid, dishname) VALUES (20, 'Soya Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (20, 'Sweet Lassi');
INSERT INTO Contain (menuid, dishname) VALUES (20, 'Cheese Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (20, 'Paneer Fried Momos');

INSERT INTO Contain (menuid, dishname) VALUES (21, 'Chicken Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (21, 'Chilly Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (21, 'Soya Kurkure Momos');
INSERT INTO Contain (menuid, dishname) VALUES (21, 'Chocolate Shake');

INSERT INTO Contain (menuid, dishname) VALUES (22, 'Paneer Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (22, 'Chilly Kurkure Momos');
INSERT INTO Contain (menuid, dishname) VALUES (22, 'Green Tea');
INSERT INTO Contain (menuid, dishname) VALUES (22, 'Veg Fried Momos');

INSERT INTO Contain (menuid, dishname) VALUES (23, 'Chicken Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (23, 'Fresh Lime Soda');
INSERT INTO Contain (menuid, dishname) VALUES (23, 'Soya Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (23, 'Paneer Kurkure Momos');

INSERT INTO Contain (menuid, dishname) VALUES (24, 'Veg Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (24, 'Cold Coffee');
INSERT INTO Contain (menuid, dishname) VALUES (24, 'Chilly Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (24, 'Cheese Fried Momos');

INSERT INTO Contain (menuid, dishname) VALUES (25, 'Cheese Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (25, 'Black Coffee');
INSERT INTO Contain (menuid, dishname) VALUES (25, 'Veg Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (25, 'Lemon Iced Tea');

INSERT INTO Contain (menuid, dishname) VALUES (26, 'Soya Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (26, 'Chilly Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (26, 'Salted Lassi');
INSERT INTO Contain (menuid, dishname) VALUES (26, 'Paneer Steam Momos');

INSERT INTO Contain (menuid, dishname) VALUES (27, 'Masala Chai');
INSERT INTO Contain (menuid, dishname) VALUES (27, 'Chicken Kurkure Momos');
INSERT INTO Contain (menuid, dishname) VALUES (27, 'Chicken Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (27, 'Soya Gravy Momos');

INSERT INTO Contain (menuid, dishname) VALUES (28, 'Paneer Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (28, 'Chocolate Shake');
INSERT INTO Contain (menuid, dishname) VALUES (28, 'Soya Kurkure Momos');
INSERT INTO Contain (menuid, dishname) VALUES (28, 'Veg Steam Momos');

INSERT INTO Contain (menuid, dishname) VALUES (29, 'Cheese Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (29, 'Cold Coffee');
INSERT INTO Contain (menuid, dishname) VALUES (29, 'Chicken Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (29, 'Sweet Lassi');

INSERT INTO Contain (menuid, dishname) VALUES (30, 'Chilly Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (30, 'Fresh Lime Soda');
INSERT INTO Contain (menuid, dishname) VALUES (30, 'Paneer Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (30, 'Green Tea');

INSERT INTO Contain (menuid, dishname) VALUES (31, 'Veg Kurkure Momos');
INSERT INTO Contain (menuid, dishname) VALUES (31, 'Cheese Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (31, 'Masala Chai');
INSERT INTO Contain (menuid, dishname) VALUES (31, 'Soya Fried Momos');

INSERT INTO Contain (menuid, dishname) VALUES (32, 'Chicken Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (32, 'Paneer Kurkure Momos');
INSERT INTO Contain (menuid, dishname) VALUES (32, 'Chilly Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (32, 'Mango Shake');

INSERT INTO Contain (menuid, dishname) VALUES (33, 'Soya Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (33, 'Veg Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (33, 'Black Coffee');
INSERT INTO Contain (menuid, dishname) VALUES (33, 'Lemon Iced Tea');

INSERT INTO Contain (menuid, dishname) VALUES (34, 'Paneer Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (34, 'Chilly Kurkure Momos');
INSERT INTO Contain (menuid, dishname) VALUES (34, 'Cheese Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (34, 'Salted Lassi');

INSERT INTO Contain (menuid, dishname) VALUES (35, 'Chicken Kurkure Momos');
INSERT INTO Contain (menuid, dishname) VALUES (35, 'Green Tea');
INSERT INTO Contain (menuid, dishname) VALUES (35, 'Paneer Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (35, 'Veg Fried Momos');

INSERT INTO Contain (menuid, dishname) VALUES (36, 'Soya Kurkure Momos');
INSERT INTO Contain (menuid, dishname) VALUES (36, 'Chilly Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (36, 'Cheese Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (36, 'Chocolate Shake');

INSERT INTO Contain (menuid, dishname) VALUES (37, 'Chicken Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (37, 'Fresh Lime Soda');
INSERT INTO Contain (menuid, dishname) VALUES (37, 'Cold Coffee');
INSERT INTO Contain (menuid, dishname) VALUES (37, 'Veg Steam Momos');

INSERT INTO Contain (menuid, dishname) VALUES (38, 'Masala Chai');
INSERT INTO Contain (menuid, dishname) VALUES (38, 'Chilly Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (38, 'Soya Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (38, 'Paneer Fried Momos');

INSERT INTO Contain (menuid, dishname) VALUES (39, 'Soya Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (39, 'Paneer Kurkure Momos');
INSERT INTO Contain (menuid, dishname) VALUES (39, 'Cheese Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (39, 'Sweet Lassi');

INSERT INTO Contain (menuid, dishname) VALUES (40, 'Chicken Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (40, 'Chilly Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (40, 'Black Coffee');
INSERT INTO Contain (menuid, dishname) VALUES (40, 'Paneer Steam Momos');

-- Menu 16 additions
INSERT INTO Contain (menuid, dishname) VALUES (16, 'Veg Kurkure Momos');
INSERT INTO Contain (menuid, dishname) VALUES (16, 'Salted Lassi');

-- Menu 17 additions
INSERT INTO Contain (menuid, dishname) VALUES (17, 'Paneer Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (17, 'Chocolate Shake');

-- Menu 18 additions
INSERT INTO Contain (menuid, dishname) VALUES (18, 'Cheese Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (18, 'Lemon Iced Tea');

-- Menu 19 additions
INSERT INTO Contain (menuid, dishname) VALUES (19, 'Chicken Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (19, 'Green Tea');

-- Menu 20 additions
INSERT INTO Contain (menuid, dishname) VALUES (20, 'Black Coffee');
INSERT INTO Contain (menuid, dishname) VALUES (20, 'Chilly Gravy Momos');

-- Menu 21 additions
INSERT INTO Contain (menuid, dishname) VALUES (21, 'Paneer Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (21, 'Cheese Steam Momos');

-- Menu 22 additions
INSERT INTO Contain (menuid, dishname) VALUES (22, 'Lemon Iced Tea');
INSERT INTO Contain (menuid, dishname) VALUES (22, 'Chicken Steam Momos');

-- Menu 23 additions
INSERT INTO Contain (menuid, dishname) VALUES (23, 'Chilly Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (23, 'Black Coffee');

-- Menu 24 additions
INSERT INTO Contain (menuid, dishname) VALUES (24, 'Paneer Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (24, 'Green Tea');

-- Menu 25 additions
INSERT INTO Contain (menuid, dishname) VALUES (25, 'Chicken Kurkure Momos');
INSERT INTO Contain (menuid, dishname) VALUES (25, 'Sweet Lassi');

-- Menu 26 additions
INSERT INTO Contain (menuid, dishname) VALUES (26, 'Chilly Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (26, 'Mango Shake');

-- Menu 27 additions
INSERT INTO Contain (menuid, dishname) VALUES (27, 'Paneer Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (27, 'Veg Kurkure Momos');

-- Menu 28 additions
INSERT INTO Contain (menuid, dishname) VALUES (28, 'Cheese Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (28, 'Soya Fried Momos');

-- Menu 29 additions
INSERT INTO Contain (menuid, dishname) VALUES (29, 'Masala Chai');
INSERT INTO Contain (menuid, dishname) VALUES (29, 'Veg Fried Momos');

-- Menu 30 additions
INSERT INTO Contain (menuid, dishname) VALUES (30, 'Chicken Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (30, 'Cheese Kurkure Momos');

-- Menu 31 additions
INSERT INTO Contain (menuid, dishname) VALUES (31, 'Cold Coffee');
INSERT INTO Contain (menuid, dishname) VALUES (31, 'Soya Steam Momos');

-- Menu 32 additions
INSERT INTO Contain (menuid, dishname) VALUES (32, 'Chilly Fried Momos');
INSERT INTO Contain (menuid, dishname) VALUES (32, 'Sweet Lassi');

-- Menu 33 additions
INSERT INTO Contain (menuid, dishname) VALUES (33, 'Green Tea');
INSERT INTO Contain (menuid, dishname) VALUES (33, 'Chicken Fried Momos');

-- Menu 34 additions
INSERT INTO Contain (menuid, dishname) VALUES (34, 'Mango Shake');
INSERT INTO Contain (menuid, dishname) VALUES (34, 'Black Coffee');

-- Menu 35 additions
INSERT INTO Contain (menuid, dishname) VALUES (35, 'Cheese Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (35, 'Salted Lassi');

-- Menu 36 additions
INSERT INTO Contain (menuid, dishname) VALUES (36, 'Chicken Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (36, 'Masala Chai');

-- Menu 37 additions
INSERT INTO Contain (menuid, dishname) VALUES (37, 'Paneer Steam Momos');
INSERT INTO Contain (menuid, dishname) VALUES (37, 'Veg Gravy Momos');

-- Menu 38 additions
INSERT INTO Contain (menuid, dishname) VALUES (38, 'Cheese Gravy Momos');
INSERT INTO Contain (menuid, dishname) VALUES (38, 'Fresh Lime Soda');

-- Menu 39 additions
INSERT INTO Contain (menuid, dishname) VALUES (39, 'Veg Kurkure Momos');
INSERT INTO Contain (menuid, dishname) VALUES (39, 'Cold Coffee');

-- Menu 40 additions
INSERT INTO Contain (menuid, dishname) VALUES (40, 'Mango Shake');
INSERT INTO Contain (menuid, dishname) VALUES (40, 'Veg Gravy Momos');



INSERT INTO worksin (employee_id, branchid, doj) VALUES (8, 3, '2024-09-18');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (17, 15, '2023-12-25');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (3, 7, '2023-05-04');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (25, 11, '2022-07-22');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (36, 1, '2022-09-13');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (11, 4, '2024-04-16');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (6, 18, '2023-01-10');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (20, 2, '2023-11-09');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (14, 10, '2023-07-01');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (30, 6, '2022-05-26');

INSERT INTO worksin (employee_id, branchid, doj) VALUES (9, 12, '2022-11-14');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (5, 9, '2023-02-22');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (40, 14, '2024-02-05');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (32, 8, '2024-06-12');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (15, 19, '2023-04-04');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (7, 20, '2023-10-18');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (2, 17, '2022-03-29');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (23, 5, '2022-08-03');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (48, 13, '2024-10-07');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (13, 3, '2023-09-25');

INSERT INTO worksin (employee_id, branchid, doj) VALUES (31, 16, '2022-12-01');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (4, 1, '2024-08-15');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (41, 7, '2023-03-19');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (27, 18, '2022-10-05');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (35, 2, '2023-11-23');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (19, 4, '2024-03-08');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (10, 11, '2022-06-30');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (38, 5, '2024-07-14');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (21, 6, '2022-04-11');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (22, 15, '2024-12-03');

INSERT INTO worksin (employee_id, branchid, doj) VALUES (26, 8, '2023-06-21');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (1, 9, '2022-08-29');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (12, 10, '2023-07-28');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (44, 13, '2023-04-11');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (18, 19, '2024-11-20');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (24, 20, '2022-10-13');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (33, 12, '2024-01-16');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (28, 14, '2023-02-08');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (39, 17, '2022-09-06');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (29, 16, '2023-05-30');

INSERT INTO worksin (employee_id, branchid, doj) VALUES (42, 2, '2023-12-12');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (37, 1, '2022-06-10');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (16, 3, '2024-05-03');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (43, 4, '2023-10-02');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (34, 18, '2022-11-01');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (45, 5, '2023-08-08');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (46, 6, '2022-04-27');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (47, 7, '2023-09-11');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (49, 8, '2024-02-27');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (34, 19, '2023-01-04');

INSERT INTO worksin (employee_id, branchid, doj) VALUES (18, 10, '2024-06-06');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (30, 11, '2022-12-20');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (6, 9, '2024-09-01');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (11, 20, '2023-03-27');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (27, 13, '2022-05-17');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (8, 15, '2024-01-10');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (2, 14, '2023-06-02');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (1, 16, '2023-07-19');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (10, 17, '2024-03-15');
INSERT INTO worksin (employee_id, branchid, doj) VALUES (38, 12, '2022-08-20');