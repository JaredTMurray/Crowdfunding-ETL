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
- Then the "name" column is split into the "first_name" and the "last_name" columns that are added to In[64] of the aformentioned file. 
- The "name" column is dropped from the DataFrame in In[66] and reflected in Out[66]. Then the columns are reordered and executed in the same Input and Output [66].


### Deliverable 3: Create an ERD and a Table Schema and Load the Data 
- The crowdfunding_db relationship diagram has five tables, and can be seen as image 

![crowdfunding_db_relationships.png.](https://github.com/JaredTMurray/Crowdfunding-ETL/blob/main/crowdfunding_db_relationships.png).


- The [crowdfunding_db_schema.sql file](https://github.com/JaredTMurray/Crowdfunding-ETL/blob/main/crowdfunding_db_table_schema.sql)
  contains the table schema and the ALTER TABLE statement for each of the five tables. The five tables are campaign, category, subcategorty, contracts and backers. 
  The alt table consists of foreign keys which connects the tables subcategory_id, category_id, contract_id and cf_id, respectively to the above mentioned tables. 
  
  
- The [backers.csv](https://github.com/JaredTMurray/Crowdfunding-ETL/blob/main/backers.csv) file. This image illustrates the code that is imported into backers csv file.
![](https://github.com/JaredTMurray/Crowdfunding-ETL/blob/main/Deliverable%203a.png)


### Deliverable 4: SQL Analysis—Bonus 
- The first SQL query was written and successfully executes the number of backer_counts in descending order for each cf_id and for all the live campaigns. To view this   query please visit [Analysis-Bonus file](https://github.com/JaredTMurray/Crowdfunding-ETL/blob/main/crowdfunding_SQL_Analysis.sql). 

- The second SQL query was written and retrieves sucessfully the number of backers in descending order for each cf_id from the backers table. This can be view in the     same file above.

-	The third SQL query was written and produced the table "contacts_live" to create the email_contacts_remaining_goal_amount table, and the table was exported into         [email_contacts_remaining_goal_amount.csv](https://github.com/JaredTMurray/Crowdfunding-ETL/blob/main/email_backers_remaining_goal_amount.csv).The following image   illustrtes the running of the table in PostgresSQL
  ![](https://github.com/JaredTMurray/Crowdfunding-ETL/blob/main/Deliverable%204c.png)
  
-	The fourth SQL query was written and then fully executed to create the email_backers_remaining_goal_amount table, and the table is exported into      [email_contacts_remaining_goal_amount.csv](https://github.com/JaredTMurray/Crowdfunding-ETL/blob/main/email_backers_remaining_goal_amount.csv)
![](https://github.com/JaredTMurray/Crowdfunding-ETL/blob/main/Deliverable%204d.png)


Please note in order to copy or export a table from PostgresSQL I had to add permission to the folder in order for it to work. This can be seen in the final code of the  [Analysis-Bonus file](https://github.com/JaredTMurray/Crowdfunding-ETL/blob/main/crowdfunding_SQL_Analysis.sql). 
