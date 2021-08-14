-- 1. Calculate the number of health facilities per commune.
SELECT 
	COUNT(facdesc) as "# health facilities", 
	vilcomn
FROM spa
	GROUP BY vilcomn
	ORDER BY vilcomn

-- 2. Calculate the number of health facilities by commune and by type of health facility.
SELECT 
	COUNT(facdesc) as "# health facilities",
	vilcomn,
	facdesc_1
FROM spa
	GROUP BY vilcomn, facdesc_1
	ORDER BY vilcomn

-- 3. Calculate the number of health facilities by municipality and by department.
SELECT 
	COUNT(facdesc) as "# health facilities", 
	vilcomn, 
	departn
FROM spa
	GROUP BY vilcomn, departn
	ORDER BY vilcomn

-- 4. Calculate the number of sites by type (mga) and by department.
SELECT 
	COUNT(facdesc) as "Number Sites", 
	mga as "Type (MGA)",
	departn as "Department",
CASE
	WHEN mga=1 THEN 'Public'
	WHEN mga=2 THEN 'Private non profit'
	WHEN mga=3 THEN 'Private with profit'
	WHEN mga=4 THEN 'Private and public'
END as "Type (MGA)"
FROM spa
	GROUP BY mga, departn
	ORDER BY departn
	
-- 5. Calculate the number of sites with an ambulance by municipality and by department (ambulance = 1.0).
SELECT 
	COUNT(facdesc) as "Number Sites", 
	vilcomn as "Municipality",
	departn as "Department"
FROM spa
	WHERE ambulance = 1.0
	GROUP BY departn, vilcomn
	ORDER BY departn

-- 6. Calculate the number of hospitals per 10k inhabitants per department.

-- 7. Calculate the number of sites per 10k inhabitants per department * Question 9.

-- 8. Calculate the number of bed per 1k inhabitants per department.

-- 9. How many communes have fewer dispensaries than hospitals?

-- 10. How many deaths per month?

-- 11. How many prevalences per month?

-- 12. How many prevalences per department?

-- 13. What is the variation in prevalence per week?