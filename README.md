# Music_Box_Project

## The goal of the project

Option 1：Churn Prediction
* Validate dataset, identify missing values and find inconsistencies in the dataset.
* Perform data cleaning and transformation, feature engineering
* Exploratory data analysis, e.g. find most popular songs, most active users
* Build user churn prediction model based on user behavior, implement full cycle of prediction modeling from population   selection and sampling, label definition, feature exaction and engineering, model selection, performance evaluation.


Option 2：Recommendation
* Validate dataset, identify missing values and find inconsistencies in the dataset.
* Perform data cleaning and transformation, and construct utility matrix from user behavior data
* Define implicit ratings from user behavior data
* Build music recommendation system based on user listening history, including: popularity-based recommender, item-item based recommender, matrix factorization-based recommender.

The main thread of week 1 - 4 are about the Churn Prediction project. The recommendation system project is a side work to run simultaneously.

## Week One

* Download the data from the website
* Data Intergration 
* Data Exploration

    Raw Data Description

        * Only play log data included in my project
        * Data size: 14.1 G
        * Attributes: uid, device, song id, play time, song length, song name, singers

    Data Exploration
    
        * 871702 Users, 164,667,143 play records
        * Time series: 2018-03-01 to 2018-03-09; 2018-03-29 to 2018-05-12

    Platform: Local Computer (Macbook pro with 16G RAM)
    
    Programming Language: python
    
    Package: Spark(python based), pandas, scikit-learn, keras

Small tips during testing

1. Run a shell file on macOS system

    To make a script executable, give it the necessary permission:

    `chmod +x file.sh`

    Now run .sh file as follows:

    `./file.sh`
    
2. [Install Apache Spark + ipython/jupyter notebook integration guide for macOS](https://gist.github.com/ololobus/4c221a0891775eaa86b0)

3. [How to add a line to .bash_profile](https://superuser.com/questions/678113/how-to-add-a-line-to-bash-profile)

Reference:
1. Markdown cheatsheet: [https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#lists](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#lists)
2. Shell Scripting Tutorial: [https://www.shellscript.sh/first.html](https://www.shellscript.sh/first.html)

## Week Two

* Data cleaning and transformation
* Feature engineering

### Target 1 - Churn Predictions

In this task, we want to forecast if a user keeps on using our product during a focused time period who once previously used our products before the snapshot time.

Based on our dataset, we keep the playing log dataset with active user from March 30, 2017 to May 12, 2017.

*  Before the snapshot time: active user during the time period from 3/30/2017 to 4/28/2017

*  Focusing Time Window:  whether certain users are still active from 4/29/2017 to 5/12/2017
    
*  Fixed testing window size: 2 week(14 days)

Define the criteria of "active user":

User who has at least one playing activity before the snapshot time in the play log could be regarded as an "active user".

Formulate the problem as the pic below:

<p align="center">
  <img src="https://github.com/yxg383/Music_Box_Project/blob/master/pic/scheme.png" width="550" height="350" />
</p>

-> Feature engineering

->-> Useful attributes: uid, date, song id, play time, song length

->-> Data Cleaning

->->-> Remove records satisfying any of the following:

->->-> 1) Any attributes Including null values

->->-> 2) Uid, song id, play time, song length including characters

->->-> 3) Play time is larger than song length
   
->-> Feature Design



->->-> A total of 11 features from 3 categories:   

->->-> 1) Frequency on play log(last 1,3,7,14,30 days)     
 
->->-> 2) Recency     
 
->->-> 3) Play time percentage per song(last 1,3,7,14,30 days)

### Target 2 - Music Recommendations(No time to implement now)

In this task, we would predict the chances of a user listening to a song repetitively after the first observable listening event within a time window was triggered. If there are recurring listening event(s) triggered within a month after the user’s very first observable listening event, its target is marked 1, and 0 otherwise in the training set. The same rule applies to the testing set.

Some materials referered while feature engineering:

1. Keggle's competition for WSDM - KKBox's Music Recommendation Challenge [Churn Prediction]
    
    [https://www.kaggle.com/lystdo/beat-kkbox-benchmark-without-using-metadata-0-62/data](https://www.kaggle.com/lystdo/beat-kkbox-benchmark-without-using-metadata-0-62/data)
    
    Meanwhile the same dataset could also be used for music recommendations

## Week Three

* Design the target
* Hyperparameter Tuning
* Modeling Design

| Model          | Logistic Regression | Random Forest      | RF with Tuning                    | Neural Network |
| -------------- | ------------------- | ------------------ | --------------------------------- | -------------- |
| Hyperparameter | C = 0.1 L2 penalty  | N_estimator = 10   | N_estimator = 300, max_depth = 30 | 11->8->4->1    |                                                          
| AUC            | 0.7159              | 0.8422             | 0.8564                            | 0.8198         |

