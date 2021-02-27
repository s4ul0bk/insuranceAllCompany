# Insurance All Company

![insunranceAll](/images/insuranceAll.jpg)

Disclaimer: The following context is completely fictional, the company, the context, the CEO, the business questions exist only in my imagination.

Insurance All is a company that provides health insurance to its customers and the product team is analyzing the possibility of offering policyholders a new product: auto insurance.

As with health insurance, customers of this new auto insurance plan need to pay an amount annually to Insurance All to obtain an amount insured by the company, aimed at the costs of an eventual accident or damage to the vehicle.

Insurance All conducted a survey of about 380,000 customers about their interest in joining a new auto insurance product last year. All customers expressed interest or not in purchasing auto insurance and these responses were saved in a database along with other customer attributes.

The product team selected 127 thousand new customers who did not respond to the survey to participate in a campaign, in which they will receive the offer of the new auto insurance product. The offer will be made by the sales team through telephone calls.

However, the sales team has the capacity to make 20 thousand calls within the campaign period.

# The challenge

In that context, you were hired as a Data Science consultant to build a model that predicts whether or not the customer would be interested in auto insurance.

With its solution, the sales team hopes to be able to prioritize the people with the greatest interest in the new product and, thus, optimize the campaign by making only contacts with customers most likely to make the purchase.

As a result of your consultancy, you will need to deliver a report containing some analysis and answers to the following questions:

Main insights on the most relevant attributes of customers interested in purchasing auto insurance.

* What percentage of customers interested in purchasing auto insurance will the sales team be able to reach by making 20,000 calls? 
* And if the sales team's capacity increases to 40,000 calls, what percentage of customers interested in purchasing auto insurance will the sales team be able to contact?
* How many calls does the sales team need to make to contact 80% of customers interested in purchasing auto insurance?

 The Data The data set is available on the AWS platform and each row represents a customer and each column contains some attributes that describe that customer, in addition to her response to the survey, in which she mentioned interest or not in the new insurance product.


# Business Problem


## What is the Company Name?
Insurance All Company

## What the Company do?
Insurance All is a company that provides health insurance to its customers. 

## What is the problem?
The product team is analyzing the possibility of offering policyholders a new product: auto insurance and they need to now how is the best customers to offer this new product.

## What is the main strategy?
The company will call to 20,000 clients to offer the new insurance, based on a survey made with 380,000 insurance health customers. 

## What question need to be response?

* What percentage of customers interested in purchasing auto insurance will the sales team be able to reach by making 20,000 calls? 
* And if the sales team's capacity increases to 40,000 calls, what percentage of customers interested in purchasing auto insurance will the sales team be able to contact?
* How many calls does the sales team need to make to contact 80% of customers interested in purchasing auto insurance

# Solution Planning

## What is the solution?
We need to develop a machine learning model that ranking the customers based his probability in vehicle insurance aquisition.

## How will be the solution?
This Model was be available in an API, and may used by customer any time he needed.

## Hosting
The API will be hosting on Heroku plataform and is available on this url: https://iacvehicleinsurance.herokuapp.com.

## Methods

### /insuranceAll/predict
Send a list of clients to get a probability vehicle insurance aquisition.

#### Input
* Id
* Gender
* Age
* Driving License
* Region Code
* Previously Insured
* Vehicle Age
* Vehicle Damage
* Anual Premium
* Policy sales channel
* Vintage

#### Output
* Id
* Gender
* Age
* Driving License
* Region Code
* Previously Insured
* Vehicle Age
* Vehicle Damage
* Anual Premium
* Policy sales channel
* Vintage
* **prediction**


# Tools Planning

We'll use python and his libraries to colect, visualize, prepare, transform, select, modeling and predict the probability vehicle insurance aquisition.

## Steps Planning

Statistical Description - Make Insights based on statistical

Exploratory Data Analysis - Understand the Business Model and Features Relevance

Balance Data - Balance data of vehicle insurance interest

Data Preparation - Enconding, Reescaling and Transform data to Models

Modeling - Test 5 Machine Learning Models

Cross validation - Make Cross validatino of 2 models with best performance

Hyper Parameter - Found best parameters to Models

Business Model - Convert ML metrics to business metrics

# Top Data Insights

## Customers had damage Historical have more interest on vehicle insurance

Almost 98% of customer interesting on vehicle insurance had damage historical
![vehicleDamage](/images/eda_vehicleDamage.png)

## Customer with cars less than 2 years old, have more interest on vehicle insurance

Customers with cars between 1 and 2 years correspond to 74,34% of interesting in vehicles insurance
![vehicleAge](/images/eda_vehicleAge.png)

# Machine Learning Models

* XGBooost
* Logistic Regression
* Naive Bayes
* Random Forest
* KNN
* LGBM


# Models Performance

The models had a better performance than random method (calling randomic to the customers). The lift curve show us how much better each model is.

![randomForest](/images/rf_liftCurve.png)
![lgbm](/images/lgbm_liftCurve.png)

In all scenarios, Random Forest and LGBM had the best performance, but the Random Forest Model exported is 1521 times bigger than LGBM model. So, I'll use the LGBM Model in production.

![modelsSize](/images/models_size.png)

# Convert Model Performance to Business Values

In the beginning of this job, the CEO of Insurance All made some questions about model's performance, now I'll respond all of them.

## What percentage of customers interested in purchasing auto insurance will the sales team be able to reach by making 20,000 calls? 

Made 20.000 calls using the model to ranking the customers, the sale team will call to 46,98% of all interested, about 3 more times that random method.
![question1](/images/question1.png)

## And if the sales team's capacity increases to 40,000 calls, what percentage of customers interested in purchasing auto insurance will the sales team be able to contact?

Made 40.000 calls using the model to ranking the customers, the sale team will call to 81,20% of all interested, about 2.57 more times that random method.
![question2](/images/question2.png)

## How many calls does the sales team need to make to contact 80% of customers interested in purchasing auto insurance?

Should be necessary 39130 calls to call to 80% of interesting

## $ Simulation

20,000 calls(15.74%)

Suposing that each vehicle Insurance was sell at 2000, the mode bring 298% percent of result totalizing **$5,836,494.77**.

40,000 calls(31.49%)

Suposing that each vehicle Insurance was sell at 2000, the mode bring 257.9% percent of result totalizing **$9,288,989.54**

# Who i am

My name is Saulo Ferreira Cunha, IT student since 2004 and I'm a Data scientist in formation.

Email: saulofcunha@outlook.com

Linkedin: https://www.linkedin.com/in/saulo-ferreira-cunha-6a6ba232/