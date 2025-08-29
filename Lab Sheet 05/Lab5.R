setwd("C:\\Users\\it24101469\\Desktop\\IT24101469")
delivery_times <- read.table("Exercise - Lab 05.txt", header = TRUE)
names(delivery_times)[1] <- "Delivery_Time"

breaks <- seq(20, 70, by = 5)
hist(delivery_times$Delivery_Time,breaks = breaks,right = FALSE,col = "lightblue",border = "black",main = "Histogram of Delivery Times",xlab = "Delivery Time (minutes)",ylab = "Frequency")

counts <- hist(delivery_times$Delivery_Time, breaks = breaks, right = FALSE, plot = FALSE)$counts
cum_counts <- cumsum(counts)

plot(breaks[-1], cum_counts, type = "o", main = "Cumulative Frequency Polygon (Ogive)", xlab = "Delivery Time (minutes)", ylab = "Cumulative Frequency", col = "blue", pch = 16)
