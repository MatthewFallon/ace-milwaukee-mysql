CREATE TABLE EMPLOYEE (
    EmployeeID  int(10) NOT NULL AUTO_INCREMENT,
    LastName    varchar(35) NOT NULL,
    FirstName   varchar(50) NOT NULL,
    Department  varchar(15) NULL,
    Position    varchar(25) NOT NULL,
    Supervisor  int(10) NULL,
    OfficePhone char(10) NULL,
    OfficeFax   char(10) NULL,
    EmailAddress    varchar(35) NULL
);

ALTER TABLE EMPLOYEE AUTO_INCREMENT = 101;

CREATE TABLE STORE (

);

CREATE TABLE PURCHASE_ITEM (

);

CREATE TABLE SHIPMENT (

);

CREATE TABLE SHIPMENT_ITEM (

);

CREATE TABLE SHIPPER (

);

CREATE TABLE SHIPMENT_RECEIPT (

);
