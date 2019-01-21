Multiple approaches were considered for this problem. For a baseline model, a simple Naive Bayes model was trained on tge tf-idf represenations of each email. 
Results - 
•	Accuracy - 0.8352
•	Precision – 0.8668
•	Recall - 0.79208

However, since these movie reviews are written by different users, it was observed that clustering the emails and then training a separate model 
on each cluster gave muuch better results. 
Clustering + Naive Bayes approach gave the following results - 
•	Accuracy - 0.84516
•	Precision – 0.8668
•	Recall - 0.79208
which is a slight improvement from the Simple Naive Bayes model

Clustering + Logistic Regression seemed to give the best reuslts -
•	Accuracy - 0.85852
•	Precision – 0.8532
•	Recall - 0.86592

How to run the code -
1. Download dataset from here (http://ai.stanford.edu/~amaas/data/sentiment/aclImdb_v1.tar.gz)
2. Extract dataset from zip file and put it in the same folder as the files in tge repository.
3. Run get_dataset.R which will iterate through all the reviews and create Train.csv and Test.csv.
4. Run Jupyter Notebook for each model.

