CREATE TABLE EMPLOYEE (
    EmployeeID  int(10) NOT NULL AUTO_INCREMENT,
    LastName    varchar(35) NOT NULL,
    FirstName   varchar(50) NOT NULL,
    Department  varchar(15) NULL,
    Position    varchar(25) NOT NULL,
    Supervisor  int(10),
    OfficePhone,
    OfficeFax,
    EmailAddress
)

ALTER TABLE EMPLOYEE AUTO_INCREMENT = 101;