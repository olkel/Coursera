library(dplyr)

UCIlabels <- read.table("./UCI HAR Dataset/features.txt", header=F)
UCItrain <- read.table("./UCI HAR Dataset/train/X_train.txt", header=F)
names(UCItrain) <- UCIlabels[,2]
Ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt", header=F)
actionlabels <- read.table("./UCI HAR Dataset/activity_labels.txt", header=F)
Ytrain <- merge(Ytrain,actionlabels, by.x="V1", by.y="V1", all=T)
names(Ytrain) <- c("ActionCode","Action")
UCItrain <- cbind(UCItrain,Ytrain)
subjects1 <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=F)
names(subjects1) <- "Subjects"
UCItrain <- cbind(UCItrain,subjects1)
 
UCItest <- read.table("./UCI HAR Dataset/test/X_test.txt", header=F)
names(UCItest) <- UCIlabels[,2]
Ytest <- read.table("./UCI HAR Dataset/test/y_test.txt", header=F)
Ytest <- merge(Ytest,actionlabels, by.x="V1", by.y="V1", all=T)
names(Ytest) <- c("ActionCode","Action")
UCItest <- cbind(UCItest,Ytest)
subjects2 <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=F)
names(subjects2) <- "Subjects"
UCItest <- cbind(UCItest,subjects2)


UCI <- rbind(UCItrain,UCItest)

UCI[,grepl("mean",names(UCI))|grepl("std",names(UCI))]

library(reshape2)
UCItidy <- UCI[,grepl("mean",names(UCI))|names(UCI)=="Action"|names(UCI)=="Subjects"]
UCImelt <- melt(UCItidy, id.vars=c("Action","Subjects"))

UCIave <- dcast(UCImelt,Action+Subjects~variable,mean)
write.table(UCIave, "TidyData.txt")

