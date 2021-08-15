-- 1. Calculate the number of health facilities per commune.
SELECT 
	COUNT(facdesc) as "# health facilities", 
	vilcomn as "Commune"
FROM spa
	GROUP BY vilcomn
	ORDER BY vilcomn;

-- 2. Calculate the number of health facilities by commune and by type of health facility.
SELECT 
	COUNT(facdesc) as "# health facilities",
	vilcomn as "Commune",
	facdesc_1 as "Type"
FROM spa
	GROUP BY vilcomn, facdesc_1
	ORDER BY facdesc_1;

-- 3. Calculate the number of health facilities by municipality and by department.
SELECT 
	COUNT(facdesc) as "# health facilities", 
	vilcomn, 
	departn
FROM spa
	GROUP BY vilcomn, departn
	ORDER BY departn;

-- 4. Calculate the number of sites by type (mga) and by department.
SELECT 
	COUNT(facdesc) as "Number Sites", 
	departn as "Department",
	mga as "Type (MGA)"
FROM spa
	GROUP BY mga, departn
	ORDER BY mga;
	
-- 5. Calculate the number of sites with an ambulance by municipality and by department (ambulance = 1.0).
SELECT 
	COUNT(facdesc) as "Number Sites", 
	vilcomn as "Municipality",
	departn as "Department"
FROM spa
	WHERE ambulance = 1.0
	GROUP BY departn, vilcomn
	ORDER BY departn;

-- 6. Calculate the number of hospitals per 10k inhabitants per department.


-- 7. Calculate the number of sites per 10k inhabitants per department * Question 9.


-- 8. Calculate the number of bed per 1k inhabitants per department.


-- 9. How many communes have fewer dispensaries than hospitals?


-- 10. How many deaths per month?
SELECT 
	EXTRACT(YEAR FROM to_date(document_date,'YYYY-MM-DD')) AS Year,
	TO_CHAR(to_date(document_date,'YYYY-MM-DD'), 'Month') AS Month,
	SUM(deces) as "Death Rate"
FROM covid_cases
GROUP BY
	Month,
	Year;

-- 11. How many prevalences per month?

-- 12. How many prevalences per department?

-- 13. What is the variation in prevalence per week?