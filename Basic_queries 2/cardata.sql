use proo;
SELECT * FROM cardata;

-- 1 sql query to fetch car names they run by petrol
SELECT  Car_Name,Fuel_Type FROM cardata
WHERE Fuel_Type = "Petrol" GROUP BY Car_Name;


-- 2 sql query to count different brand of cars run by diesel
 SELECT Car_Name,COUNT(*) FROM cardata
WHERE Fuel_Type = 'Diesel' GROUP BY Car_Name;
 
 
 -- 3 sql query to fetch how many cars run by 'Diesel'?
  SELECT COUNT(Car_Name) from cardata
 WHERE  Fuel_Type = 'Diesel';
 
 
 -- 4  sql query to fetch how many cars run by 'Petrol'?
 SELECT COUNT(Car_Name) from cardata
 WHERE  Fuel_Type = 'Petrol';
 
 -- 5 sql query to fetch cars with more kms driven and automatic gear system
 use proo;
 SELECT Transmission,max(Kms_Driven) from cardata WHERE Transmission='Automatic' GROUP BY Transmission ;
 
  
-- 6 sql query to fetch that how many cng cars are availbale
SELECT Fuel_Type,count(*) from cardata WHERE Fuel_Type='CNG'  GROUP BY Fuel_Type;


-- 7  sql query to fetch how many diesel cars released in 2014
use proo;
SELECT Fuel_Type,count(*) FROM cardata WHERE Fuel_Type="Diesel" and Year=2014 GROUP BY Fuel_Type;

-- 8 sql query to fetch the names of cng cars
SELECT Car_Name FROM cardata where Fuel_Type='CNG';

-- 9 SQL QUERY TO FETCH COUNT OF CARS HAVE MORE PRESENT PRICE THAN SELLING PRICE IN 2004 TO 2014?
 SELECT COUNT(Car_Name) as no_of_cars FROM cardata
 WHERE Selling_Price<Present_Price AND Year BETWEEN 2004 and 2022;
 
 -- 10 SQL OUERY TO FETCH CARS WITH MORE KMS DRIVEN AND AUTOMATIC GEAR SYSTEM ?
SELECT Transmission,max(Kms_Driven )as driven_kms FROM cardata
WHERE Transmission = "Automatic" GROUP BY Transmission;



 