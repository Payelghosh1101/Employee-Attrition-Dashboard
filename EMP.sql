CREATE DATABASE EMP;
USE EMP;

#1. How many employees are currently working in the company?
SELECT COUNT(*) AS Current_Employees
FROM `emp_attrition_csv`
WHERE `Attrition` = 'Stayed';

#2. What is the average age of employees in the company
SELECT AVG(Age) AS Average_Age
FROM `emp_attrition_csv`;

#3. Which job role has the highest number of employees
SELECT `Job Role`, COUNT(*) AS Employee_Count
FROM `emp_attrition_csv`
GROUP BY `Job Role`
ORDER BY `Employee_Count` DESC
LIMIT 1;

#4. What is the average monthly income by gender?
SELECT Gender, AVG(`Monthly Income`) AS Average_Monthly_Income
FROM `emp_attrition_csv`
GROUP BY `Gender`;

#5. How many employees work remotely
SELECT COUNT(*) AS Remote_Employees
FROM `emp_attrition_csv`
WHERE `Remote Work` = 'Yes';

#6. How many employees have more than 2 promotions?
SELECT COUNT(*) AS Employees_With_More_Than_2_Promotions
FROM emp.emp_attrition_csv
WHERE `Number of Promotions` > 2;

#7. List the top 5 highest-paid employees.
SELECT `ï»¿Employee ID`, `Job Role`, `Monthly Income`
FROM emp.emp_attrition_csv
ORDER BY `Monthly Income` DESC
LIMIT 5;

#8. How many employees are in each company size category?
SELECT `Company Size`, COUNT(*) AS Employee_Count
FROM emp_attrition_csv
GROUP BY `Company Size`;

#9. What is the average number of dependents for married employees?
SELECT AVG(`Number of Dependents`) AS Average_Dependents
FROM emp_attrition_csv
WHERE `Marital Status` = 'Married';

#10. Which performance rating has the highest attrition?
SELECT `Performance Rating`, COUNT(*) AS Attrition_Count
FROM emp_attrition_csv
WHERE Attrition = 'Left'
GROUP BY `Performance Rating`
ORDER BY Attrition_Count DESC
LIMIT 1;

#11.Find employees who have excellent work-life balance but low employee recognition.
SELECT `ï»¿Employee ID`, `Job Role`, `Work-Life Balance`, `Employee Recognition`
FROM emp_attrition_csv
WHERE `Work-Life Balance` = 'Excellent'
  AND `Employee Recognition` = 'Low';
  
#12. What is the average tenure (in months) of employees who left the company?
SELECT AVG(`Company Tenure (In Months)`) AS Average_Tenure_Left
FROM emp_attrition_csv
WHERE Attrition = 'Left';

#13.  What is the distribution of education levels among employees?
SELECT `Education Level`, COUNT(*) AS Employee_Count
FROM emp_attrition_csv
GROUP BY `Education Level`;


#14. How many employees have access to leadership and innovation opportunities?

SELECT COUNT(*) AS Employees_With_Opportunities
FROM emp_attrition_csv
WHERE `Leadership Opportunities` = 'Yes'
  AND `Innovation Opportunities` = 'Yes';
