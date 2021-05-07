# ETL_Project

Team Members:
Sans Sharma
Ericka Angelopoulos
Joshua Borschman


Overview:
We chose to investiage World Happiness reports from 2015 to 2019 along with Infant Mortality data for the same years. There is potential for very interesting analysis comparing regions, countires and happiness indexes with their infant mortality data. Several factors influence the Happiness score we chose to focus on GDP and life expectancy as these are more likely to have a correlation with infant mortality. 


EXTRACT:
We extracted our data from Kaggle. We utilised a data collection of the World Happiness Report 2015-2021 and Infant Mortality 2009-2019.
World Happiness Report: https://www.kaggle.com/mathurinache/world-happiness-report-20152021
Infant Mortality: https://www.kaggle.com/komalkhetlani/infant-mortality

TRANSFORM:
Some of the transformation came in choosing the years of data. We ensured that we focused on having only the years that were the same between the datasets. The transformation primarily involved removing some columns, the happiness report did not have consistant data over multiple years. We removed all the columns that were not on all the CSVs. 
We did spend time transforming the data in different ways. However this was not in line with data normalisation practises as it added several columns, making the tables wider rather than longer. 
We added a year column to the tables to allow storage of all the data in a single table. 
We also found that across the different datasets countries may have been noted differently or writted in a different combination. This simply required choosing which version we wanted to go with and changing the name in the opposing data set. 

LOAD:
We chose to load the data into a postgres SQL database. We chose this as we preferred the table structure and the ease of adding primary and foreign keys. This allowed us to eaily visualise the joining of the tables and how someone using the dataset could use of for functional analysis. We have a table for the countires with a country_id primary key. This allows us to conform with data normalisation practices. We than had a table for the Happiness data with a row_id primary key and the same for the infant mortality data. 
