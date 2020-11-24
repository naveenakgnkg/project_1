--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--
create table customer(c_id int NOT NULL AUTO_INCREMENT,f_name varchar(20) NOT NULL,l_name varchar(20),full_name varchar(20),email varchar(20),phno int NOT NULL,
state varchar(20) NOT NULL,pincode varchar(20) NOT NULL,country varchar(20) NOT NULL,PRIMARY KEY (c_id));

--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--
create table product(product_id int NOT NULL,product_name varchar(20) NOT NULL,price int NOT NULL,manufacturer varchar(20),
specifications varchar(100),PRIMARY KEY(product_id));
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_product`
--

create table customer_product(c_id int NOT NULL,product_id int NOT NULL, product_name varchar(20),product_price int NOT NULL,
FOREIGN KEY (c_id) REFERENCES customer(c_id),FOREIGN KEY (product_id) REFERENCES product(product_id));
--

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--
create table sales(report_id int NOT NULL AUTO_INCREMENT,date varchar(20),total_price varchar(20), PRIMARY KEY(report_id));

--

-- --------------------------------------------------------

--
-- Table structure for table `product_sales`
--

create table product_sales(report_id int NOT NULL,product_id varchar(20) NOT NULL,date varchar(20),total_price varchar(20),
FOREIGN KEY (report_id) REFERENCES sales(report_id));
--

-- --------------------------------------------------------

