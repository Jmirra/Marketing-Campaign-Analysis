# Marketing Campaign Analysis


# Overview
The objective was to analyze customers’ demographic information, purchasing patterns, and interactions with marketing campaigns to identify key insights to better:

1. Understand customers' behaviors and preferences
   
2. Predict customers' responses to future marketing campaigns and promotion
   
3. Improve the overall effectiveness of future marketing campaigns and promotions to maximize profits and return on investment

# Preprocessing & Methodology
The customer data covers a two-year period, from 2012 to 2014. The raw dataset included one large CSV file with 30 columns and 2,241 rows (including titles). The data was first cleaned to fix the date format and spelling errors. No duplicates were found, but there were missing values. The income column had 24 missing entries. After cleaning the data in Excel, the dataset was categorized into three main groups: customer demographics, customer purchase history, and marketing campaign interactions. This allowed for the creation of three separate tables in SQLite, which were used to analyze the data. Python and Tableau were then employed to gain further insights and visualize the data through charts and graphs.

# Key Insights
Customer Demographics:
The majority of customers were between the ages of 40 and 70, with a peak around 50. The average age of customers was 55. Of these, 97.5% were highly educated: 50.3% were college graduates, and another 47.3% had postgraduate degrees. Nearly 65% of customers had a partner, 38.6% of whom were married. The income distribution was slightly skewed due to a few high-income outliers, resulting in an average income of $52,247, with a maximum income of $666,666 and a minimum of $1,730.

Customer Purchase Patterns:
Six product categories were tracked over the two years: wine, meat, gold, fish, sweets, and fruits. Customers spent the most on wine, followed by meat, with a sharp decline in spending across the other categories. Customers spent a total of $1,356,988 and made 33,291 purchases. On average, 49 days passed since a customer’s last purchase.

Wine purchases were predominantly made by customers with an annual salary between $55,000 and $72,000. Most purchases were made in-store, followed by online. Spending peaked in the 4th quarter and during holidays, while the 2nd quarter saw the least spending. Purchases made with discounts were highest in the 1st quarter.

Marketing Campaign Interactions:
There were six campaigns in total. In the last campaign, 334 customers accepted the offer, representing nearly 55% of those who responded. The second most successful campaign was the 4th, with 167 responses. Overall, 72.81% (1,631 customers) did not respond to any campaign, while 27.19% (609 customers) responded. Customers earning between $70,000 and $90,000 were the most responsive to the campaigns.

# Summary
The analysis reveals that most customers were aged 40-70, married or with a partner, with an average income of $52,247 and a high level of education. Wine was the most purchased product, especially among customers earning $55,000 to $72,000, with most purchases made in-store. Customer spending peaked in the 4th quarter and during holidays, with discounts driving purchases in the 1st quarter. Despite six campaigns, only 27.19% of customers responded, with the majority engaging in the final campaign. Recommendations include creating more urgency in campaigns, promoting in-store events, and focusing marketing efforts on wine products to increase engagement and revenue.






