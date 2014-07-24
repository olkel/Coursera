3: UCIlabels = stores the column names in features.txt file as vector
4: UCItrain = stores the main data table for the training data as dataframe from X_train.txt
5: labels the columns of the trainings dataframe
6: Ytrain = stores the different coded activities from y_train.txt
7: actionlabels = stores the descriptive names for the activities from activity_labels.txt
8: assigns the activity labels to the activity dataframe  Ytrain
9: gives column names to training activity dataframe
10: attaches training activity dataframe to trainings main dataframe
11: subjects1 = stores the vector of subjects from train/subject.txt
12: gives subjects1 a column name
13: attaches the subjects1 column zo the trainings dataframe

15: UCItest = stores the main data table for the test data as dataframe from X_test.txt
16: names the UCItest dataframe with the labels from 3:
17: Ytest = stores the different coded activities from y_test.txt
18: attaches the labels from 7: to Ytest activities
19: gives the test activities dataframe column names
20: attaches test activity dataframe to test main dataframe
21: subjects2 = stores the vector of subjects from test/subject.txt
22: gives subjects2 a column name
23: attaches the subjects2 column zo the test dataframe


26: merges the two main dataframes test and training into one main

28: prints out the desired tidy dataframe with only means and standard deviation columns

30: loading package for next steps
31: creating extra tidy dataframe
32: preparation step for the aggregation of the columns according to activities and subjects

34: aggregation by activities and subjects and calculating means for each groups
35: outputting the aggregated tidy dataframe
