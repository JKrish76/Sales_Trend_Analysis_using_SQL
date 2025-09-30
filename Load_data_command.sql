LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Superstore_sales.csv'
INTO TABLE superstore
CHARACTER SET latin1 -- <<< ADD THIS LINE
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
    @`Row ID`, @`Order ID`, @`Order Date`, @`Ship Date`, @`Ship Mode`, @`Customer ID`,
    @`Customer Name`, @`Segment`, @`Country`, @`City`, @`State`, @`Postal Code`,
    @`Region`, @`Product ID`, @`Category`, @`Sub-Category`, @`Product Name`,
    @`Sales`, @`Quantity`, @`Discount`, @`Profit`
)
SET
    `Row ID` = @`Row ID`,
    `Order ID` = @`Order ID`,
    `Order Date` = STR_TO_DATE(@`Order Date`, '%d-%m-%Y'),
    `Ship Date` = STR_TO_DATE(@`Ship Date`, '%d-%m-%Y'),
    `Ship Mode` = @`Ship Mode`,
    `Customer ID` = @`Customer ID`,
    `Customer Name` = @`Customer Name`,
    `Segment` = @`Segment`,
    `Country` = @`Country`,
    `City` = @`City`,
    `State` = @`State`,
    `Postal Code` = @`Postal Code`,
    `Region` = @`Region`,
    `Product ID` = @`Product ID`,
    `Category` = @`Category`,
    `Sub-Category` = @`Sub-Category`,
    `Product Name` = @`Product Name`,
    `Sales` = @`Sales`,
    `Quantity` = @`Quantity`,
    `Discount` = @`Discount`,
    `Profit` = @`Profit`;