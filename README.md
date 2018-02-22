# Music_Box_Project

### 某知名音乐播放盒数据挖掘

公司介绍：
* 某知名音乐播放平台

数据内容：
* 刚出炉的新鲜数据
* 每日260K新增用户的3 million+的歌曲播放记录（不断更新中）
* 包括用户uid, 用户os, 播放歌曲的rid, 歌曲的类型, 歌曲名称, 歌手名称, 播歌时长, 歌曲时长等信息

项目目标：

目标一：Churn Prediction
* Validate dataset, identify missing values and find inconsistencies in the dataset.
* Perform data cleaning and transformation, feature engineering
* Exploratory data analysis, e.g. find most popular songs, most active users
* Build user churn prediction model based on user behavior, implement full cycle of prediction modeling from population   selection and sampling, label definition, feature exaction and engineering, model selection, performance evaluation.


目标二：Recommendation
* Validate dataset, identify missing values and find inconsistencies in the dataset.
* Perform data cleaning and transformation, and construct utility matrix from user behavior data
* Define implicit ratings from user behavior data
* Build music recommendation system based on user listening history, including: popularity-based recommender, item-item based recommender, matrix factorization-based recommender.

## Week One

* Download the data from the website
* Data Intergration 
* Data Exploration

Small tips during testing
1. Run a shell file on macOS system

    To make a script executable, give it the necessary permission:

    `chmod +x file.sh`

    Now run .sh file as follows:

    `./file.sh`
2. Install Apache Spark + ipython/jupyter notebook integration guide for macOS

    [https://gist.github.com/ololobus/4c221a0891775eaa86b0](https://gist.github.com/ololobus/4c221a0891775eaa86b0)

3. How to add a line to .bash_profile

    [https://superuser.com/questions/678113/how-to-add-a-line-to-bash-profile](https://superuser.com/questions/678113/how-to-add-a-line-to-bash-profile)

Reference:
1. Markdown cheatsheet: [https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#lists](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#lists)
2. Shell Scripting Tutorial: [https://www.shellscript.sh/first.html](https://www.shellscript.sh/first.html)

## Week Two

* Data cleaning and transformation
* Feature engineering

### Target 1 - Churn Predictions

In this task, we want to forecast if a user keep on using our product during a focused time window after the first observable playing event.

Based on our dataset, we keep the playing log dataset with active user from March 30, 2017 to May 12, 2017.

Training set: active user (3/30/2017 - 4/28/2017)

Validation set: user from training set (4/29/2017 - 5/12/2017)

Fixed window size =  2 week(14 days)

Define the criteria of "active user":

User who has at least one playing activity within a time window in the play log could be regarded as an "active user".

Formulate the problem as the pic below:



### Target 2 - Music Recommendations 

In this task, we would predict the chances of a user listening to a song repetitively after the first observable listening event within a time window was triggered. If there are recurring listening event(s) triggered within a month after the user’s very first observable listening event, its target is marked 1, and 0 otherwise in the training set. The same rule applies to the testing set.

Some materials referered while feature engineering:

1. Keggle's competition for WSDM - KKBox's Music Recommendation Challenge [Churn Prediction]
    
    [https://www.kaggle.com/lystdo/beat-kkbox-benchmark-without-using-metadata-0-62/data](https://www.kaggle.com/lystdo/beat-kkbox-benchmark-without-using-metadata-0-62/data)
    
    Meanwhile the same dataset could be also used for music recommendations

