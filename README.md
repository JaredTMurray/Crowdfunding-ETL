# Crowdfunding-ETL
## Module 8 Challenge
### Deliverable 1: Extract Data (Option 1)

In this file, [Extract-Transform_final_code](https://github.com/JaredTMurray/Crowdfunding-ETL/blob/main/Extract-Transform_final_code.ipynb) shows all the coding input and output for deliverable 1. 
The following was done: 
backers_info was imported as a Dataframe backers_master_df. Then I used a for loop to iterate through backers_master_df to print off the list of values 
for each row and was placed into a dictionary.
A backers_df DataFrame was created with 
- the 'backer_id'
- 'cf_id'
- 'name' and 
- 'email' as columns. 

The results are in input and output 58 from the above mentioned file. Finally for this deliverable, the backers_df Dataframe was exprted into [backer_info](https://github.com/JaredTMurray/Crowdfunding-ETL/blob/main/backer_info.csv) as an cvs file 

### Deliverable 2: Transform and Clean Data 
- The "cf_id" column was converted to int64. This can be seen in Out[63] in [Extract-Transform_final_code](https://github.com/JaredTMurray/Crowdfunding-ETL/blob/main/Extract-Transform_final_code.ipynb). 
•	The "name" column is split into "first_name" and "last_name" columns that are added to the DataFrame. (10 pt)
•	The "name" column is dropped from the DataFrame. (5 pt)
•	The columns are reordered. (5 pt)
•	The DataFrame is exported as backers.csv. (5 pt)


### Deliverable 3: Create an ERD and a Table Schema and Load the Data 
•	The crowdfunding_db relationship diagram has five tables, and the diagram is saved as crowdfunding_db_relationships.png. (5 pt)
•	The crowdfunding_db_schema.sql file contains the table schema and the ALTER TABLE statement for each of the five tables. (10 pt)
•	The backers.csv file is imported into the backers table without any errors. (5 pt)


### Deliverable 4: SQL Analysis—Bonus 
•	A SQL query is written and successfully executed that retrieves the number of backer_counts in descending order for each cf_id and for all the live campaigns. (2.5 pt)
•	A SQL query is written and successfully executed that retrieves the number of backers in descending order for each cf_id from the backers table. (2.5 pt)
•	A SQL query is written and successfully executed to create the email_contacts_remaining_goal_amount table, and the table is exported as email_contacts_remaining_goal_amount.csv. (5 pt)
•	A SQL query is written and successfully executed to create the email_backers_remaining_goal_amount table, and the table is exported as email_contacts_remaining_goal_amount.csv. (5 pt)
