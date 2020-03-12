# setwd("~/Documents/presentations/Workshops/drsGHWorkshops/introRSocSci/")

# load CSV into R environment
ideaPlanC.df <- read.csv("idea_partC_2012.csv", stringsAsFactors = FALSE, as.is = TRUE, header = TRUE, sep = ",")

# look at the last few rows 
dim(ideaPlanC.df)
ideaPlanC.df[285:291,1:3]

# remove the final few rows
ideaPlanC.df <- ideaPlanC.df[1:285,]

# find the minimum and maximum of cumulative totals
max(ideaPlanC.df$Cumulative.Count...Ages.Birth.through.2)
min(ideaPlanC.df$Cumulative.Count...Ages.Birth.through.2)

# why is this giving us strange answers?
# hint: check "class"
# na.strings = c("-", "x"),

# Get minimum and maximum


# separate out all of the settings
totals <- ideaPlanC.df[ideaPlanC.df$Setting %in% "Total",]
atRisk <- ideaPlanC.df[ideaPlanC.df$Setting %in% "At-Risk Infants and Toddlers",]
community <- ideaPlanC.df[ideaPlanC.df$Setting %in% "Community-Based",]
home <- ideaPlanC.df[ideaPlanC.df$Setting %in% "Home",]
other <- ideaPlanC.df[ideaPlanC.df$Setting %in% "Other",]

communityTotals <- cbind(community$State, community$Birth.thru.2...Total)

# sort the totals of community from highest to lowest 
sortedCommunityTotals <- communityTotals[order(-community$Birth.thru.2...Total),]






