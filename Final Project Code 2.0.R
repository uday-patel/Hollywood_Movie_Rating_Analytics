holly <- read.csv("HollywoodsMostProfitableStories.csv", header = TRUE)

View(holly)
#Removing NA's (From 74 to 69 films) SECTION I - B (Data Cleaning & Description)

holly <- holly[-c(39),]
holly <- na.omit(holly)

head(holly)

# Installing packages
install.packages('tidyverse')
library(tidyverse)

#Section II - Data Wrangling 



##*****Graphs by Genre, Studio & Year*****## (1,2,3)

### mean audience score by genre
chart1 <- aggregate(holly$Audience..score.., by = list(holly$Genre), FUN = mean)
names(chart1) <- c("Genre", "Avg_Audience_Score")
chart1<-as.data.frame(chart1)


barplot(chart1$Avg_Audience_Score, names.arg=chart1$Genre, 
        horiz=FALSE, las=0.6, cex.names=0.8, border=NA, 
        main="Average Audience Score by Genre 2007-2011",
        ylab="Avg Score", col=c("red","green","grey","blue","purple","orange"))



### mean audience score by studio
chart2 <- aggregate(holly$Audience..score.., by = list(holly$Lead.Studio), FUN = mean)
names(chart2) <- c("Studio", "Avg_Audience_Score")
chart2<-as.data.frame(chart2)


chart2a<- subset(chart2,Studio=="Disney"|Studio=="Summit"|Studio=="Sony"|Studio=="Fox"|Studio=="The Weinstein Company")


barplot(chart2a$Avg_Audience_Score, names.arg=chart2a$Studio, 
        horiz=FALSE, las=0.3, cex.names=0.7, border=NA, width=0.2,
        main="Average Audience Score by Top Five Studio 2007-2011",
        ylab="Avg Score", col=c("red","green","grey","blue","purple"))

### mean audience score by year
chart3 <- aggregate(holly$Audience..score.., by = list(holly$Year), FUN = mean)
names(chart3) <- c("Year", "Avg_Audience_Score")
chart2<-as.data.frame(chart3)

barplot(chart3$Avg_Audience_Score, names.arg=chart3$Year, 
        horiz=FALSE, las=0.3, cex.names=1, border=NA,
        main="Average Audience Score between 2007-2011",
        ylab="Avg Score", col=c("red","green","grey","blue","purple"))


### mean Rotten.Tomatoes. by genre
chart4 <- aggregate(holly$Rotten.Tomatoes.., by = list(holly$Genre), FUN = mean)
names(chart4) <- c("Genre", "Avg_Rotten_Tomatoes")
chart4<-as.data.frame(chart4)


barplot(chart4$Avg_Rotten_Tomatoes, names.arg=chart4$Genre, 
        horiz=FALSE, las=0.6, cex.names=0.8, border=NA, 
        main="Avg Rotten Tomatoes by Genre 2007-2011",
        ylab="Avg Score", col=c("red","green","grey","blue","purple","orange"))

### mean Rotten.Tomatoes. by studio
chart5 <- aggregate(holly$Rotten.Tomatoes.., by = list(holly$Lead.Studio), FUN = mean)
names(chart5) <- c("Studio", "Avg_Rotten_Tomatoes")
chart5<-as.data.frame(chart5)

chart5a<- subset(chart5,Studio=="Disney"|Studio=="Universal"|Studio=="Sony"|Studio=="Fox"|Studio=="The Weinstein Company")


barplot(chart5a$Avg_Rotten_Tomatoes, names.arg=chart5a$Studio, 
        horiz=FALSE, las=0.3, cex.names=0.7, border=NA, width=0.2,
        main="Five Studio with Avg Rotten Tomatoes Score 2007-2011",
        ylab="Avg Score", col=c("red","green","grey","purple","black"))




### mean Rotten.Tomatoes by year
chart6 <- aggregate(holly$Rotten.Tomatoes.., by = list(holly$Year), FUN = mean)
names(chart6) <- c("Year", "Avg_Rotten_Tomatoes")
chart6<-as.data.frame(chart6)


barplot(chart6$Avg_Rotten_Tomatoes, names.arg=chart6$Year, 
        horiz=FALSE, las=0.3, cex.names=1, border=NA,
        main="Avg Rotten Tomatoes Score between 2007-2011",
        ylab="Avg Score", col=c("red","green","grey","blue","purple"))





### mean Worldwide.Gross by genre
chart7 <- aggregate(holly$Worldwide.Gross, by = list(holly$Genre), FUN = mean)
names(chart7) <- c("Genre", "Avg_Worldwide_Gross")
chart7<-as.data.frame(chart7)


barplot(chart7$Avg_Worldwide_Gross, names.arg=chart7$Genre, 
        horiz=FALSE, las=0.6, cex.names=0.8, border=NA, 
        main="Avg Worldwide Gross by Genre 2007-2011",
        ylab="Avg_Worldwide_Gross in Million", col=c("red","green","grey","blue","purple","orange"))




### mean Worldwide.Gross by studio
chart8 <- aggregate(holly$Worldwide.Gross, by = list(holly$Lead.Studio), FUN = mean)
names(chart8) <- c("Studio", "Avg_Worldwide_Gross")
chart8<-as.data.frame(chart8)


chart8a<- subset(chart8,Studio=="Disney"|Studio=="Summit"|Studio=="Universal"|Studio=="Fox"|Studio=="Warner Bros.")


barplot(chart8a$Avg_Worldwide_Gross, names.arg=chart8a$Studio, 
        horiz=FALSE, las=0.3, cex.names=0.9, border=NA, width=0.2,
        main="Five Studios with top Avg Worldwide Gross 2007-2011",
        ylab="Avg_Worldwide_Gross in Million", col=c("red","green","blue","black","pink"))





### mean Worldwide.Gross by year
chart9 <- aggregate(holly$Worldwide.Gross, by = list(holly$Year), FUN = mean)
names(chart9) <- c("Year", "Avg_Worldwide_Gross")
chart9<-as.data.frame(chart9)


barplot(chart9$Avg_Worldwide_Gross, names.arg=chart9$Year, 
        horiz=FALSE, las=0.3, cex.names=1, border=NA,
        main="Avg Worldwide Gross between 2007-2011",
        ylab="Avg_Worldwide_Gross in Million", col=c("red","green","grey","blue","purple"))




### mean Profitability by genre
chart10 <- aggregate(holly$Profitability, by = list(holly$Genre), FUN = mean)
names(chart10) <- c("Genre", "Avg_Profitability")
chart10<-as.data.frame(chart10)


barplot(chart10$Avg_Profitability, names.arg=chart10$Genre, 
        horiz=FALSE, las=0.6, cex.names=0.8, border=NA, 
        main="Avg Profitability by Genre 2007-2011",
        ylab="Avg Profitability", col=c("red","green","grey","blue","purple","orange"))



### mean Profitability by studio
chart11 <- aggregate(holly$Profitability, by = list(holly$Lead.Studio), FUN = mean)
names(chart11) <- c("Studio", "Avg_Profitability")
chart11<-as.data.frame(chart11)
View(chart11)
chart11a<- subset(chart11,Studio=="Disney"|Studio=="Summit"|Studio=="Independent"|Studio=="Fox"|Studio=="Sony")


barplot(chart11a$Avg_Profitability, names.arg=chart11a$Studio, 
        horiz=FALSE, las=0.3, cex.names=0.9, border=NA, width=0.2,
        main="Five Studios with top Avg Profitability 2007-2011",
        ylab="Avg Profitability", col=c("red","green","light blue","grey","blue"))



### mean Profitability by year
chart12 <- aggregate(holly$Profitability, by = list(holly$Year), FUN = mean)
names(chart12) <- c("Year", "Avg_Profitability")
chart12<-as.data.frame(chart12)



barplot(chart12$Avg_Profitability, names.arg=chart12$Year, 
        horiz=FALSE, las=0.3, cex.names=1, border=NA,
        main="Avg Profitability between 2007-2011",
        ylab="Avg Profitability", col=c("red","green","grey","blue","purple"))

### Number of Movies in each type of genres 
chart13 <- aggregate(holly$Audience..score.., by = list(holly$Genre), FUN = length)
names(chart13) <- c("Genre", "No.of Movies")
chart13<-as.data.frame(chart13)


barplot(chart13$`No.of Movies`, names.arg=chart13$Genre, 
        horiz=FALSE, las=0.6, cex.names=0.8, border=NA, 
        main="No.of Movies by Genre 2007-2011",
        ylab="No.of Movies", col=c("red","green","grey","blue","purple","orange"))



### Number of Movies in each year
chart14 <- aggregate(holly$Audience..score.., by = list(holly$Year), FUN = length)
names(chart14) <- c("Year", "No.of Movies")
chart14<-as.data.frame(chart14)



barplot(chart14$`No.of Movies`, names.arg=chart14$Year, 
        horiz=FALSE, las=0.3, cex.names=1, border=NA,
        main="No.of Movies between 2007-2011",
        ylab="No.of Movies", col=c("red","green","grey","blue","purple"))




### Number of Movies in each studio
chart15<- aggregate(holly$Audience..score.., by = list(holly$Lead.Studio), FUN = length)
names(chart15) <- c("Studio", "No.of Movies")
chart15<-as.data.frame(chart15)


chart15a<- subset(chart15,Studio=="Disney"|Studio=="Warner Bros."|Studio=="Independent"|Studio=="Fox"|Studio=="Universal")


barplot(chart15a$`No.of Movies`, names.arg=chart15a$Studio, 
        horiz=FALSE, las=0.3, cex.names=0.9, border=NA, width=0.2,
        main="Five Studios with No.of Movies 2007-2011",
        ylab="No.of Movies", col=c("red","green","light blue","black","pink"))


chart16 <- aggregate(holly$Worldwide.Gross, by = list(holly$Lead.Studio), FUN = sum)
names(chart16) <- c("Studio", "World Gross")
chart16<-as.data.frame(chart16)


chart16a<- subset(chart16,Studio=="Disney"|Studio=="Warner Bros."|Studio=="Independent"|Studio=="Summit"|Studio=="Universal")


barplot(chart16a$`World Gross`, names.arg=chart16a$Studio, 
        horiz=FALSE, las=0.3, cex.names=0.9, border=NA, width=0.2,
        main="Five Studios with Total World Grosss 2007-2011",
        ylab="Worldwide Revenue", col=c("red","light blue","dark green", "black","pink"))



chart17 <- aggregate(holly$Film, by = list(holly$Lead.Studio), FUN = length)
names(chart17) <- c("Studio", "Total Number of Films")
chart17<-as.data.frame(chart17)


chart17a<- subset(chart17,Studio=="Disney"|Studio=="Warner Bros."|Studio=="Independent"|Studio=="Fox"|Studio=="Universal")



barplot(chart17a$`Total Number of Films`, names.arg=chart17a$Studio, 
        horiz=FALSE, las=0.3, cex.names=0.9, border=NA, width=0.2,
        main="Five Studios with Total Number of Films 2007-2011",
        ylab="Total Number of Films", col=c("red","green","light blue", "black","pink"))



chart18 <- aggregate(holly$Worldwide.Gross, by = list(holly$Genre), FUN = sum)
names(chart18) <- c("Genre", "World Gross")
chart18<-as.data.frame(chart18)



barplot(chart18$`World Gross`, names.arg=chart18$Genre, 
        horiz=FALSE, las=0.6, cex.names=0.8, border=NA, 
        main="Total Worldwide Gross by Genre 2007-2011",
        ylab="Worldwide Gross", col=c("red","green","grey","blue","purple","orange"))





chart19 <- aggregate(holly$Worldwide.Gross, by = list(holly$Genre), FUN = length)
names(chart19) <- c("Genre", "Total Number of Films")
chart19<-as.data.frame(chart19)


barplot(chart19$`Total Number of Films`, names.arg=chart19$Genre, 
        horiz=FALSE, las=0.6, cex.names=0.8, border=NA, 
        main="Total Number of Films by Genre 2007-2011",
        ylab="Total Number of Films", col=c("red","green","grey","blue","purple","orange"))



chart20 <- aggregate(holly$Worldwide.Gross, by = list(holly$Year), FUN = sum)
names(chart20) <- c("Year", "World Gross")
chart20<-as.data.frame(chart20)


barplot(chart20$`World Gross`, names.arg=chart20$Year, 
        horiz=FALSE, las=0.3, cex.names=1, border=NA,
        main="Total Worldwide Gross betwen 2007-2011",
        ylab="Total Worldwide Gross", col=c("red","green","grey","blue","purple"))

##*****Discriptive Stats for Ratings & WorldwideGross*****## (4a)
summary(holly)

##*****Discriptive Stats for Ratings & WorldwideGross*****## (4b)

#Corelation Coefficient
cor(holly$Audience..score..,holly$Rotten.Tomatoes..) 
# Scatter Plot
plot(holly$Audience..score.., holly$Rotten.Tomatoes.., main="Corelation Coefficient = 0.57",
     xlab="Audience Score", ylab="Rotten Tomatoes Score", pch=19)

# Section III - Data Analysis

# A.) Variance in Ratings (F-test)
sd1 <- sd(holly$Audience..score..)
sd2 <- sd(holly$Rotten.Tomatoes..)
n <- 69
testF <- sd2^2/sd1^2
2*(1-pf(testF,n-1,n-1))

# B.) Mean difference between Ratings (Paired Test)
# Long way
diff <- (holly$Audience..score..)-(holly$Rotten.Tomatoes..)
# 95% Confidence Interval for the difference in average Audience and Critic ratings
thalfa <- qt(0.975,df=length(holly$Audience..score..)-1) #calculate talpha/2 
error <- sd(diff)/sqrt(length(holly$Audience..score..))*thalfa #sample sd * talpha/2
mean(diff) + c(-error, error)

# Null Hypothesis = No Difference (Ratings), Alternative Hyphothesis = Difference (Ratings) 
stdError <- sd(diff)/sqrt(length(holly$Audience..score..)-1)
tstat <- (mean(diff)-0)/stdError
2*(1-pt(tstat,10-1)) #p-value for two-tailed test if sample mean is above hypothesized mean, compare this with alpha

#Shot way
t.test(holly$Audience..score..,holly$Rotten.Tomatoes..,paired=TRUE)

# C.) Relationship between Ratings & Worldwide Gross (Simple Linear Regression)

# Simple Linear Regression
test1<- lm(Worldwide.Gross ~ Rotten.Tomatoes.., data=holly)
coefficients(test1)
summary(test1)$r.squared
summary(test1)

test2<- lm(Worldwide.Gross ~ Audience..score.., data=holly)
coefficients(test2)
summary(test2)$r.squared
summary(test2)

# Regression Plots
ggplot(holly, aes(Worldwide.Gross,Audience..score.. )) + 
  geom_point() + stat_smooth(method = lm)

ggplot(holly, aes(Worldwide.Gross,Rotten.Tomatoes..)) + 
  geom_point() + stat_smooth(method = lm)
