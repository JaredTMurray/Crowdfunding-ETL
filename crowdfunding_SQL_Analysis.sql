-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 
select cf_id, outcome, backers_count from campaign
where outcome = 'live'
order by backers_count desc;


-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.

SELECT * FROM backers;

-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 
SELECT ba.first_name, ba.last_name, ba.email, ca.outcome, ca.backers_count
INTO contacts_live
FROM backers as ba
inner join campaign as ca on ca.cf_id = ba.cf_id
where (ca.outcome = 'live')
order by ca.backers_count desc;

-- Check the table
SELECT * FROM contacts_live;

-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 
SELECT ba.email, ba.first_name, ba.last_name, ca.cf_id, ca.company_name, ca.description, ca.end_date, ca.goal
INTO email_backers_remaining_goal_amount
FROM backers as ba
inner join campaign as ca on ca.cf_id = ba.cf_id
order by ba.email desc;


-- Check the table

Select * FROM email_backers_remaining_goal_amount;

