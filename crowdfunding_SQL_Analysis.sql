select * from campaign;
select * from backers;
select * from contacts;
-- SQL query that retrieves the number of backer_counts in descending order for 
--each “cf_id” for all the "live" campaigns.

SELECT cf_id,
	outcome,
	backers_count
FROM  campaign 
WHERE outcome = 'live'
ORDER BY backers_count DESC;

--Write a SQL query that uses the backers table to confirm the results above


SELECT COUNT (bkr.cf_id), bkr.cf_id
FROM backers as bkr
GROUP BY bkr.cf_id
ORDER BY COUNT(bkr.cf_id) DESC;

--SQL query that creates a new table named email_contacts_remaining_goal_amount that contains the first name of each contact, the last name, the email address, and the remaining goal amount (as "Remaining Goal Amount") 
--in descending order for each live campaign.

SELECT con.first_name ,
	con.last_name ,
	con.email,
	(cpg.goal - cpg.pledged) AS remaining_goal_amount
	INTO email_contacts_remaining_goal_amount
	FROM contacts AS con
	INNER JOIN campaign AS cpg
	ON (con.contact_id = cpg.contact_id)
	WHERE (cpg.outcome = 'live')
	ORDER BY remaining_goal_amount DESC;

-- check the table
SELECT * FROM email_contacts_remaining_goal_amount;

--Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 

SELECT bck.email, 
	bck.first_name, 
		bck.last_name, 
	cpg.cf_id, 
		cpg.company_name,
	cpg.description, 
		cpg.end_date,
		(cpg.goal - cpg.pledged) as left_of_goal 
INTO email_backers_remaining_goal_amount
FROM backers as bck
INNER JOIN campaign as cpg
ON (bck.cf_id = cpg.cf_id)
WHERE (cpg.outcome = 'live')
ORDER BY bck.last_name desc;

--check the table
SELECT * from email_backers_remaining_goal_amount;
