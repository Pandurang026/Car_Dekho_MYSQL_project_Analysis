


-- =======================   PROJECT ON CAR DEKHO    =============================

-- INSTED OF CREATE DATABASE YOU CAN ALSO USE "CREATE SCHEMA"
-- LOAD THE DATA BY RIGHT CLICKING ON TABLE "TABLE DATA IMPORT WIZHARD"
-- FIRST WE HAVE TO CREATE PROJECT THEN WE IMPORT THE DATA IN TABLES

		create database cars;
        show databases;
		use cars;

		select*from car_dekho;

-- Q1. Read cars data?
		SELECT*FROM car_dekho;

-- Q2. Total cars: to get the count of total record?
		SELECT count(Name) AS Total_Cars
        FROM car_dekho;


-- Q3. The manager asked the employee how many cars will be available in 2023?
	SELECT 
    *
FROM
    car_dekho
WHERE
    year = 2023;

	SELECT COUNT(Name) FROM car_dekho
	WHERE year=2023;

	SELECT year, COUNT(*) AS No_Of_Cars
    FROM car_dekho
	WHERE year=2023;


-- Q4. The manager asked the employee how many cars are available in 2020,2021,2022?
		SELECT*FROM car_dekho
		WHERE YEAR=2020;

		SELECT COUNT(*) FROM CAR_DEKHO
		WHERE year=2020;

		SELECT COUNT(*) FROM car_dekho
		WHERE year=2020; #74
		-- (#74) is  comment

		SELECT*FROM car_dekho
		WHERE YEAR=2021;

		SELECT COUNT(*) FROM car_dekho
		WHERE year=2021; #7

		SELECT*FROM car_dekho
		WHERE YEAR=2022; 

		SELECT COUNT(*) FROM car_dekho
		where year=2022; #7

		# WE CAN ALSO WRITE A QUERY BY USING "GROUP BY"
		SELECT year, COUNT(*) AS No_Of_Cars 
        FROM car_dekho 
        WHERE year in(2020,2021,2022) 
        GROUP BY year
        order by No_Of_Cars;
        
		SELECT YEAR, COUNT(*) FROM car_dekho WHERE year in(2020,2021,2022) GROUP BY year;


-- Q5. Client askesd me to print the total of all cars by year. I dont see all the details
		SELECT year, COUNT(*) AS  No_Of_Cars 
        FROM car_dekho 
        group by year
        order by No_Of_Cars;


-- Q6. Client asked to car dealer agent how many diesel cars will there be in 2020?
		SELECT COUNT(*) AS No_Of_Diesel_Cars
        FROM car_dekho
		WHERE year=2020 and fuel="diesel";

		SELECT year, COUNT(*) AS No_Of_Diesel_Cars
        FROM car_Dekho
		Where year=2020 and fuel="diesel";

		SELECT fuel, COUNT(*) AS No_Of_Diesel_Cars
        FROM car_Dekho
		Where year=2020 and fuel="diesel";


-- Q6. Client requested a car dealer agent how many petrol cars will be in 2020?
		SELECT COUNT(*) FROM car_dekho
		WHERE year=2020 and fuel="petrol";

		SELECT fuel, COUNT(*) FROM car_dekho
		WHERE FUEL="PETROL" AND YEAR=2020;


-- Q7. The manager told the employee to give a print all the fuel cars(PETROL, DIESEL AND CNG) COME BY ALL YEAR

		use cars; 			#"USE DATABASE"
        
		#SELECT year, COUNT(*) FROM CAR_DEKHO WHERE fuel in("Petrol","DIESEL","CNG") GROUP BY YEAR;
		SELECT*FROM CAR_DEKHO;
        
		SELECT COUNT(*) FROM car_dekho where fuel="petrol";
		#3534
        
		SELECT year, COUNT(*) FROM car_dekho where fuel="petrol" group by year;
        
		SELECT COUNT(*) FROM CAR_DEKHO WHERE FUEL="DIESEL";
		#4304

		SELECT YEAR, COUNT(*) FROM CAR_DEKHO WHERE FUEL="DIESEL" GROUP BY YEAR;
		SELECT COUNT(*) FROM CAR_DEKHO WHERE FUEL="CNG";
		#53
        
		SELECT YEAR, COUNT(*) FROM CAR_DEKHO WHERE FUEL="CNG" GROUP BY YEAR; 
		#13
        
        

-- Q8. MANAGER SAID THERE WERE MORE THAN 100 CARS IN A GIVEN YEAR,WHICH YEAR HAD MORE THAN 100 CARS?
		SELECT YEAR, COUNT(*) as No_Of_Cars FROM CAR_DEKHO 
        GROUP BY YEAR
		HAVING COUNT(*)> 100
        order by No_Of_Cars;
        

		SELECT YEAR, COUNT(*) FROM CAR_DEKHO GROUP BY YEAR
		HAVING COUNT(*)<100;

		SELECT YEAR, COUNT(*) FROM CAR_DEKHO GROUP BY YEAR
		HAVING COUNT(*)<20;
		 
 
-- Q9. THE MANAGER SAID TO THE EMPLOYEE ALL CARS COUNT DETAILS BETWEEN 2015 AND 2023, WE NEED A COMPLETE LIST

		SELECT COUNT(*) AS Total_No_Of_Cars FROM CAR_DEKHO 
		WHERE YEAR BETWEEN 2015 AND  2023;
		#4124



-- Q10. THE MANAGER SAID TO THE EMPLOYEE ALL CARS DETAILS BETWEEN 2015 TO 2023 WE NEED COMPLETE LIST
		SELECT*FROM CAR_DEKHO
		WHERE YEAR BETWEEN 2015 AND 2023;









