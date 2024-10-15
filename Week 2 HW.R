HomeworkBonds <-read.csv("Homework1_Bonds.csv")

#Problem 1 Count for Carried and Defeated, and also the differences in approved bond rates across government types
table(HomeworkBonds$Result)
table(HomeworkBonds$Result,HomeworkBonds$Type)
#two categorical variables bivariate table chart ^^


#Problem #2 New Data Frame sum of For and Against
Votes_Total <- (HomeworkBonds$VotesFor+HomeworkBonds$VotesAgainst)

#General information about bond measure with highest voter turnout
HomeworkBonds[which(Votes_Total==max(Votes_Total)),]


#Problem 3
#Bond measure approved & >=100
VotesMargin <- HomeworkBonds[HomeworkBonds$Result=="Carried" & Votes_Total>=100,]
#Percentage of total votes for bond measure
Percent<- (VotesMargin$VotesFor/(VotesMargin$VotesFor+VotesMargin$VotesAgainst))
#Box plot representing data
boxplot(Percent,main='Percent of Total Votes For Bond Measure',xlab='Indexes',ylab='Percentage',pch=20)
median(Percent)
IQR(Percent)

#Problem 4
plot(Percent,VotesMargin$Amount,main='Margin Approved Compared to Cost',xlab='Margin Approved',ylab='Total Cost',pch=20)
cor(VotesMargin$Amount,Percent)







  
        