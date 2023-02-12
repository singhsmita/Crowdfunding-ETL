# Crowdfunding-ETL
Crowd Funding Data  Analysis 


## Project Overview

### Purpose

Independent Funding received a new dataset that contains information about the backers who’ve pledged to the live projects.  I am  performing   an ETL process on this dataset and a data analysis by using SQL queries to provide them these information.

With my knowledge of  Python, Pandas, and Jupyter notebooks I have performed the following:-
 

 - Extract data from the csv files provided. 
 - Transform the backers’ contact information from a CSV file to create a DataFrame that will be exported as a CSV file. 
 - Then comes the load phase. I use the dataset to create an ERD and a table schema for creating a new table in the `crowdfunding_db` database. After uploading  CSV file that contains the backers’ information into this table. Finally, I  perform a data analysis on the `crowdfunding_db` database by using SQL queries.

As a result of this analysis 2 new tables 
`email_contacts_remaining_goal_amount` and `email_backers_remaining_goal_amount`are created to store the data of backers and relevant details and  the remaining goal amount in descending order for each live campaign.

![A screenshot depicts the first 10 rows of the table.](https://static.bc-edx.com/data/do-v2/m8/img/data-8-email_contacts_remaining_goal_amount.png)
                  Fig 1 : email_contacts_remaining_goal_amount sample


![A screenshot depicts the first 10 rows of the table.](https://static.bc-edx.com/data/do-v2/m8/img/data-8-email_backers_remaining_goal_amount.png)
	              	Fig 2 : email_backers_remaining_goal_amount sample
