# DATA 630
# Assignment 5
# Written by Karishma Mathur

# Load cluster package
library("cluster")

# Set the working directory to where file is located
# Read the CSV file
ion <- read.csv("ionosphere.csv", head=TRUE, sep=",")
head(ion)
str(ion)
summary(ion)
table(ion$class)

# Check for missing variables
nrow(ion[!complete.cases(ion),])

# Data preprocessing; remove the class and 2nd variable
newion<-ion
newion$class<-NULL
newion$a02<-NULL
head(newion)

#Scale the first 33 variables
newion[1:33]<-scale(newion[1:33])

# Run the clustering method
set.seed(1234)
# 1st round
kc<-kmeans(newion, 4)
# 2nd round
kc<-kmeans(newion, 3)
# 3rd round
kc<-kmeans(newion, 2)
# 4th round
kc<-kmeans(newion, 5)
kc
kc$iter
kc$betweenss
kc$tot.withinss
kc$size

# Cluster to class evaluation
table(ion$class, kc$cluster)

# Cluster plot
clusplot(newion, kc$cluster, color=TRUE, shade=TRUE, labels=2, lines=0)

# End of script
