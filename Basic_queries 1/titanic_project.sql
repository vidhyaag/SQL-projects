USE proo;
SELECT * FROM train;


-- 1 sql query to fetch column names
SELECT column_name
FROM information_schema.columns
WHERE table_name = 'train';

-- 2  sql query to fetch count how many females are survived
SELECT sex,COUNT(*) FROM train
WHERE Survived=1 AND sex= "female";

-- 3  sql query to fetch name of the people who survived in pclass 3 and age greate than 30 
SELECT Name,age FROM train
WHERE Survived =1 and pclass=3
and age>30;

-- 4 sql query to fetch how many male and female are traveling
SELECT sex,count(*) FROM train
GROUP BY sex;


-- 5 What is the mean age of people who survived?
SELECT avg(age) FROM train
WHERE survived = 1;


-- 6 What is the mean age of male who survived?
SELECT sex,AVG(Age) FROM train
WHERE Survived=1 AND sex="male";

-- 7  What was the survival rate of males in the third passenger class?
SELECT AVG(survived) AS 'Survival Rate' FROM titanic WHERE sex='male' AND pclass=3;


-- 8  What is the survival rate by showing total number of passsengers and survived  
SELECT 
    SUM(CASE WHEN Sex = 'female' OR Age < 18 THEN 1 ELSE 0 END) as Total_Survived, 
    COUNT(*) as Total_Passengers,
    (SUM(CASE WHEN Sex = 'female' OR Age < 18 THEN 1 ELSE 0 END) / COUNT(*)) * 100 as Survival_Rate
FROM 
   train
WHERE 
    Survived = 1;
    
-- 9 What is the count of total survived
SELECT 
     count(*) FROM train
WHERE
	survived = 1 ;
    
 -- 10 Sql Query fetch names starts with an-- 
 SELECT Name FROM train WHERE name LIKE "an%";
	q1	
    
   
    
    