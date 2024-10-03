# Marketing Campaign Analysis

# Overview
The objective is to analyze the customer’s demographic information, purchasing patterns, and interactions with marketing campaigns to identify key insights to better:

1. Understand customers' behaviors and preferences
2. Predict customers' responses to future marketing campaigns and promotions
3. Improve the overall effectiveness of future marketing campaigns and promotions to maximize profits and return on investment

 # Data & Methodology
The customer data is from a two-year period, beginning in 2012 and ending in 2014. The raw dataset included one large CSV file with 30 Columns and 2,241 rows (including titles). 

The data was first cleaned to fix the date format and spelling errors. No duplicates were found, but there were missing values. The income column had 24 missing values. 

After cleaning the data, the dataset was then broken down into three main categories: customer demographics, customer purchase history, and market campaign interactions. This allowed for the creation of three separate tables in SQLite, which was used to analyzing data. Python and Tableau were then used to gain further insight, as well as visualize data using charts and graphs. 

 # Key Insights
Customer Demographics:

The majority of customers are between the ages of 40 and 70, peaking around 50. The average age of customers is 55. 

97.5% of customers were highly educated. 50.3% of customers were college graduates and another 47.3% had postgraduate degrees. 

Nearly 65% of customers had a partner, of which 38.6% were married.

Income distribution is slightly skewed because we have a couple high-income outliers pulling the data to the right.  Average income is $52,247 with a max income of $666,666 and a minimum income of $1,730. 

Customer Purchase Patterns:

There was a total of six product categories tracked during the two years: wine, meat, gold, fish, sweets, and fruits.

Customers spent a total of $1,356,988 and made a total of 33,291 purchases. The average number of days since a customers last purchase was 49 days. Customers spent the most on wine products, followed by meat products. There was a noticeable drop in spending across the bottom four categories. 

The majority of wine purchases where made by customers with an annual salary between $55,000 and $72,000 a year, which the majority of purchases were made in store, followed by website purchases.

Overall, spending was the highest in the 4th quarter, followed by the 1st quarter. Quarter 2 had the least spending. 

Purchase made with a discount were the highest in the 1st quarter, followed by the 4th quarter. And again, the 2nd Quarter has the least.


Market Campaign Interactions:

There were a total of six campaigns. 334 customers accepted the offer in the last
campaign, meaning nearly 55% of customers waited until the last campaign to respond or take advantage of the offer. The second most responded to campaign was the 4th campaign, with 167 customers accepting the offer during that campaign.

72.81% (1,631) did NOT respond to any of the campaigns. Only 609 (27.19%) of the 2,240 customers chose to respond to any of the campaigns. When looking at income, customers that made between $70,000 and $90,000 a year responded MOST to the six campaigns.

There was also a positive correlation between spending and time of year. The data shows that customers spent the most during the holidays and the first three months of the year.

# Recommendations:
 
Create more urgency in marketing campaigns in an effort to engage more customers and get them to respond to a campaign. 

Create marketing campaigns, promotions, events (like wine tastings), and giveaways that drive customers to the store since the majority of all purchases were made in-store. The increase foot traffic will lead to more spending and increase revenue.

Double down on wine products. It was by far the most popular of the six categories. Increase marketing spending in this category to target customers who make wine purchases. Specifically, among customers that make between $55,000 and $72,000 a year.

# Summary

The analysis reveals that the majority of customers are aged 40-70, with an average income of $52,247 and a high level of education. Wine was the most purchased product, particularly by customers earning $55,000 to $72,000, and most purchases were made in-store. Customer spending peaked in the 4th quarter and during holidays, with discounts driving purchases in the 1st quarter. Despite six marketing campaigns, only 27.19% of customers responded, with most engaging in the final campaign. Recommendations include creating more urgency in campaigns, promoting in-store events, and focusing marketing efforts on wine products to boost engagement and revenue.







