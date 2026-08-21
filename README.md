# Exploratory-Data-Analysis-of-Restaurants-using-Real-Swiggy-Datasets.
![Swiggy Analysis Screenshot](./Images/swiggy_picture.png)
## Objectives:
In this project, I analyzed Swiggy Restaurant's datasets collected from every city in India.As Swiggy is one of the leading services of food delivery,
with more than 100k Restaurants listed all over India. This is an SQL-based exploratory analysis of ~148,500 restaurants listed on Swiggy across 600+ Indian cities. 
The project covers data cleaning, aggregation, and business-style insights using SQLite (DB Browser for SQLite).<br>
I analyzed this dataset on Kaggle and drew conclusions to some interesting questions.

## Questions:
1-What are the most Popular Cuisines served throughout the dataset?<br>
2-Which is the most popular restaurant chain in India in terms of ratings given? <br>
3-What are the top 2 Restaurants with the most branches?<br>
4- Which top 2 Restaurants having premium dining in terms of cost?<br>
5-What are the Top 5 most popular restaurant chains in India?<br>
6-Which city is having the least expensive restaurant in terms of cost?<br>
7-Number of cities (including subregions) where Swiggy is having their restaurants listed?<br>

## Answers/Insights:
1-North India serving 13,869 restaurants in India.<br>
2-In terms of ratings, SHRI KRISHNA FOOD ZONE is the most popular.<br>
3-Domino's Pizza (409 branches) and Pizza Hut (316 branches) are by far the most widely distributed restaurants on the platform, reflecting strong national chain penetration in India's food delivery market.<br>
4-The costliest average locality is Khan Market, Delhi (₹624), followed by Fort, Colaba in Mumbai (₹527).<br>
5-The top 5 most popular chains are: Apna Food Court AP's Kitchen, B Chom Ping, Bansal's Thali & Combo Meals, and Bento It.<br>
6-Kollam City.<br>
7-Number of cities where Swiggy is having their restaurants listed is 774 cities.<br>

Dataset URL: https://www.kaggle.com/datasets/ashishjangra27/swiggy-restaurants-dataset

## With this dataset, I made some preparations and cleaning in terms of :
1)Baseline Check: confirmed full row count. Size: 148,541 raw rows.<br>
2)Removed unrated resturants having a '---' value.<br>
3)Converted ratings to numeric.<br>
4)Handled rating_count as the row contained mixed text values such as "500+ ratings" & "Too few ratings" rather than a clean number.<br>
5)Columns are: id, name, city, rating, rating_count, cost, cuisine, lic_no, link, address.<br>

## Tools Used:
<b>~DB Browser for SQLite</b> — imported the CSV and ran all queries.<br>
<b>~SQL</b> — data cleaning, aggregation, filtering, GROUP BY/HAVING, string parsing with CASE, CAST, and REPLACE


