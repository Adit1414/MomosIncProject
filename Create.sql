-- Define ENUM types
CREATE TYPE payment_enum AS ENUM ('cash', 'card', 'upi');
CREATE TYPE order_status_enum AS ENUM ('pending', 'complete', 'canceled');
CREATE TYPE menu_type_enum AS ENUM ('breakfast', 'lunch', 'snacks', 'dinner');
CREATE TYPE branch_type_enum AS ENUM ('restaurant', 'foodtruck', 'kiosk');
CREATE TYPE employee_role_enum AS ENUM ('manager', 'cook', 'waiter', 'cleaner', 'cashier');
CREATE TYPE menuitem_type_enum AS ENUM ('Beverages', 'Kurkure', 'Steam', 'Fried', 'Gravy');

-- Create Tables
CREATE TABLE Customer (
    customerID SERIAL PRIMARY KEY,
    address VARCHAR(50),
    states VARCHAR(50),
    CName VARCHAR(15),
    phone_no VARCHAR(15) NOT NULL
);

CREATE TABLE Branch (
    branchID SERIAL PRIMARY KEY,
    Contact VARCHAR NOT NULL,
    branchtype branch_type_enum,
    address VARCHAR NOT NULL,
    states VARCHAR NOT NULL,
    Branch_name VARCHAR NOT NULL
);
CREATE TABLE Orders (
    Orderid SERIAL PRIMARY KEY,
    orderdate DATE DEFAULT CURRENT_DATE,
    payment_method payment_enum,
    customerID INT REFERENCES Customer(customerID),
    TotalPrice INT NOT NULL,
    status order_status_enum,
    branchID INT REFERENCES Branch(branchID)
);

CREATE TABLE Menuitem (
    dishname VARCHAR PRIMARY KEY,
    price FLOAT NOT NULL,
    category menuitem_type_enum,
    availability BOOLEAN DEFAULT TRUE,
    image_url TEXT
);

CREATE TABLE Has (
    orderid INT REFERENCES Orders(Orderid),
    dishname VARCHAR REFERENCES Menuitem(dishname),
    quantity INT NOT NULL,
    Customization TEXT,
    PRIMARY KEY (orderid, dishname)
);

CREATE TABLE Menu (
    menuid SERIAL PRIMARY KEY,
    kind menu_type_enum
);


CREATE TABLE Inventory (
    itemid SERIAL PRIMARY KEY,
    item VARCHAR NOT NULL,
    quantity INT NOT NULL,
    supplier VARCHAR NOT NULL,
    branchID INT REFERENCES Branch(branchID)
);

CREATE TABLE Employee (
    employee_id SERIAL PRIMARY KEY,
    EName VARCHAR,
    ERole employee_role_enum,
    shift_start TIMESTAMP NOT NULL,
    shift_end TIMESTAMP NOT NULL,
    salary FLOAT NOT NULL,
    manager_id INT REFERENCES Employee(employee_id)
);


CREATE TABLE Offers (
    menuid INT REFERENCES Menu(menuid),
    branchID INT REFERENCES Branch(branchID),
    PRIMARY KEY (menuid, branchID)
);

CREATE TABLE Contain (
    menuid INT REFERENCES Menu(menuid),
    dishname VARCHAR REFERENCES Menuitem(dishname),
    PRIMARY KEY (menuid, dishname)
);

CREATE TABLE WorksIn (
    branchID INT REFERENCES Branch(branchID),
    employee_id INT REFERENCES Employee(employee_id),
    doj DATE NOT NULL,
    PRIMARY KEY (branchID, employee_id)
);