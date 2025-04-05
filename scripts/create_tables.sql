CREATE TABLE IF NOT EXISTS customer (
    CustomerID INTEGER PRIMARY KEY,
    Name TEXT,
    Region TEXT,
    JoinDate TEXT
);

CREATE TABLE IF NOT EXISTS product (
    productid INTEGER PRIMARY KEY,
    productname TEXT,
    category TEXT,
    unitprice REAL
);

CREATE TABLE IF NOT EXISTS sale (
    TransactionID INTEGER PRIMARY KEY,
    SaleDate TEXT,
    CustomerID INTEGER,
    ProductID INTEGER,
    StoreID INTEGER,
    CampaignID INTEGER,
    SaleAmount REAL,
    FOREIGN KEY (CustomerID) REFERENCES customer (CustomerID),
    FOREIGN KEY (productid) REFERENCES product (productid)
);