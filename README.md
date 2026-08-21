# Exploratory-Data-Analysis-of-Restaurants-using-Real-Swiggy-Datasets.
![Alt text](https://i.gadgets360cdn.com/large/swiggy_blog_full_1556536946123.jpg)

## Objectives:
In this project, I analyzed Swiggy Restaurant's datasets collected from every city in India.As Swiggy is one of the leading services of food delivery,
with more than 100k Restaurants listed all over India. This is an SQL-based exploratory analysis of ~148,500 restaurants listed on Swiggy across 600+ Indian cities. 
The project covers data cleaning, aggregation, and business-style insights using SQLite (DB Browser for SQLite).<br>
I analyzed this dataset on Kaggle and drew conclusions to some interesting questions.

## Questions:
1-What are the most Popular Cuisines served throughout the dataset?<br>
2-Which is the most popular restaurant chain in India in terms of ratings given? <br>
3-What are the top 2 Restaurants with the most branches?<br>
4-Which top 2 Restaurants having premium dining in terms of cost?<br>
5-Which cuisines have the most restaurant count?<br>
6-Which city is having the least expensive restaurant in terms of cost?<br>
7-Number of cities (including subregions) where Swiggy is having their restaurants listed?<br>
8-What is the least expensive and most expensive cities on average?<br>
9-Which restaurants have the most ratings (most reviewed and most trusted)?<br>
10-Top 3 restaurants with high ratings but most affordable?<br>

## Answers/Insights:
1-North India serving 13,869 restaurants in India.<br>
2-In terms of ratings, HRX by Eatfit is the most popular with having 40 total branches and an average_rating of 4.96.<br>
3-Domino's Pizza (409 branches) and Pizza Hut (316 branches) are by far the most widely distributed restaurants on the platform, reflecting strong national chain penetration in India's food delivery market.<br>
4-The costliest average locality is Khan Market, Delhi (₹624), followed by Fort, Colaba in Mumbai (₹527).<br>
5-Ice cream, desserts have the most restaurants (1046) in India with having an average_rate of 4.36.<br>
6-Kollam City.<br>
7-Number of cities where Swiggy is having their restaurants listed is 774 cities.<br>
8-Least Expensive: North-Goa (Avg_cost= 440.0) Most Expensive: Khan Market,Delhi (Avg_cost=624.0)<br>
9-<ins>1st place comes:</ins> Kwality Walls and Frozen Dessert Ice Cream Shop in Delhi and Ludhiana have a rating of 4.9 and a rating_count of 500+. Sharing first place is Sunshine Shake in Rohtak with also a 4.9 rating and a rating_count of 500+.<br>
<ins>2nd place</ins> is Mithai in Kolkata with a rating of 4.8 and rating_count of 500+.<br> Sharing 2nd place is Natural Ice Cream also in Kolkata with also a rating of 4.8 and rating_count of 500+.<br>
10- <ins>1st place:</ins> Urban Chonka with a rating of 4.8 and avg cost of Rupees 1.<br>
<ins>2nd place:</ins> Sri Ram Bhojanalay with a rating of 4.7 and avg cost of Rupees 5.<br>
<ins>3rd place:</ins> The Punjabi Kitchen with a rating od 4.7 and avg cost of Rupees 5.<br>

Dataset URL: https://www.kaggle.com/datasets/ashishjangra27/swiggy-restaurants-dataset

## With this dataset, I made some preparations and cleaning in terms of :
1)Baseline Check: confirmed full row count. Size: 148,541 raw rows.<br>
2)Removed unrated restaurants having a '---' value.<br>
3)Converted ratings to numeric.<br>
4)Handled rating_count as the row contained mixed text values such as "500+ ratings" & "Too few ratings" rather than a clean number.<br>
5)Columns are: id, name, city, rating, rating_count, cost, cuisine, lic_no, link, address.<br>

## Tools Used:
<b>~DB Browser for SQLite</b> — imported the CSV and ran all queries.<br>
<b>~SQL</b> — data cleaning, aggregation, filtering, GROUP BY/HAVING, string parsing with CASE, CAST, and REPLACE


