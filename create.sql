
create database labsql;

use labsql;

create table cars(VIN int PRIMARY KEY, manufacturer VARCHAR(255), model VARCHAR(255), year INT, color VARCHAR(50));


CREATE TABLE customer (customer_id INT PRIMARY KEY, name VARCHAR(100), phone_number VARCHAR(20), email VARCHAR(100), address VARCHAR(100),
    city VARCHAR(50),state_province VARCHAR(50), country VARCHAR(50), zip_postal_code VARCHAR(20));

CREATE TABLE Salespersons (staff_id INT PRIMARY KEY, name VARCHAR(100), store VARCHAR(100));

CREATE TABLE invoices (invoice_number INT PRIMARY KEY, date DATE, Cars int, customer INT, Salespersons INT,
    FOREIGN KEY (cars) REFERENCES cars(VIN),
    FOREIGN KEY (customer) REFERENCES customer(customer_id),
    FOREIGN KEY (Salespersons) REFERENCES Salespersons(staff_id));
    
    insert into labsql.cars (VIN, manufacturer, model, year, color)
								values (12,"Volkswagen","Tiguan","2019","Blue");
                                
  insert into labsql.customer (customer_id, phone_number, address,
    city,state_province, country, zip_postal_code)
    values ("10001","Pablo Picasso","+34 636 17 63 82","Paseo de la Chopera, 14","Madrid","Madrid","Spain");
    
  insert into labsql.Salespersons (staff_id,name, store)
  values ("00001","Petey Cruiser","Madrid")
  
  

    
    