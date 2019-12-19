
# We set the working directory to the analysis.
setwd("C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7")


#The rnaseqWrapper is an R package to merge multiple expression .csv files (RNA seq etc)
#For details see the: https://rdrr.io/cran/rnaseqWrapper/man/mergeCountFiles.html

#Before proceed to the analysis for first time, we have to install these packages (it is only once):
install.packages("rnaseqWrapper")
install.packages("plyr")
install.packages("dplyr")
install.packages("xlsx")
install.packages("ggplot2")
install.packages("data.table")

#load the specified package (otherwise it will not work):
library(rnaseqWrapper)
library(readxl)
library(plyr)
library(dplyr)


# We mport the list of the cell-ROIs. We will need it because it contains the .roi file names.  
all_cell_roi_list <- read.csv("all_cell_roi_list.csv", row.names=1)
# We prepare a subset of the list with "Name" only
ROI <- all_cell_roi_list$Name
ROI <- as.data.frame(ROI)

# We import one of the .csv files with the MFI values
gene1_1pixel <- read.csv("C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/s7_1pixel_images/gene1_1pixel.csv", row.names=1)
# We prepare a subset with the "Area" only
Area <- gene1_1pixel$Area
Area <- as.data.frame(Area)

# We import the list of genes
channel_order <- read_excel("channel_order.xlsx")


# We prepare a list with the ROI names and the corresponding Area in pixels^2
ROI_Area <- cbind(ROI,Area)
ROI_Area$Area <- as.numeric(ROI_Area$Area)

# To merge the MFI .csv files in one, we do the following, setting the proper path to directory of the data
merge_file <- mergeCountFiles("C:/Users/alex/Desktop/SCRINSHOT_paper/analysis_procedure/507_s7/s7_1pixel_images/",
                              fileID = "*.csv$",
                              fileSep = ",",
                              seqIDcol = 1,
                              colsToKeep = c("Mean"),
                              idCols = NULL,
                              minMatchToMerge = 0.5)

# Change the gene-names according to provided gene list. If different number of genes are analyzed 
# adjust the commands below
names(merge_file)[names(merge_file) == "gene1_1pixel.Mean"] <- channel_order[2,5]
names(merge_file)[names(merge_file) == "gene2_1pixel.Mean"] <- channel_order[3,5]
names(merge_file)[names(merge_file) == "gene3_1pixel.Mean"] <- channel_order[4,5]
names(merge_file)[names(merge_file) == "gene4_1pixel.Mean"] <- channel_order[5,5]
names(merge_file)[names(merge_file) == "gene5_1pixel.Mean"] <- channel_order[6,5]
names(merge_file)[names(merge_file) == "gene6_1pixel.Mean"] <- channel_order[7,5]
names(merge_file)[names(merge_file) == "gene7_1pixel.Mean"] <- channel_order[8,5]
names(merge_file)[names(merge_file) == "gene8_1pixel.Mean"] <- channel_order[9,5]
names(merge_file)[names(merge_file) == "gene9_1pixel.Mean"] <- channel_order[10,5]
names(merge_file)[names(merge_file) == "gene10_1pixel.Mean"] <- channel_order[11,5]
names(merge_file)[names(merge_file) == "gene11_1pixel.Mean"] <- channel_order[12,5]
names(merge_file)[names(merge_file) == "gene12_1pixel.Mean"] <- channel_order[13,5]
names(merge_file)[names(merge_file) == "gene13_1pixel.Mean"] <- channel_order[14,5]
names(merge_file)[names(merge_file) == "gene14_1pixel.Mean"] <- channel_order[15,5]
names(merge_file)[names(merge_file) == "gene15_1pixel.Mean"] <- channel_order[16,5]
names(merge_file)[names(merge_file) == "gene16_1pixel.Mean"] <- channel_order[17,5]
names(merge_file)[names(merge_file) == "gene17_1pixel.Mean"] <- channel_order[18,5]
names(merge_file)[names(merge_file) == "gene18_1pixel.Mean"] <- channel_order[19,5]
names(merge_file)[names(merge_file) == "gene19_1pixel.Mean"] <- channel_order[20,5]

# Transform the Mean values to dots 
dots <- ROI_Area$Area*merge_file/255
# We add the ROI names and the Area to the beggining of the dots file
all_dots <- cbind(ROI_Area, dots)
# We export the results
write.csv(all_dots, file = "all_dots.txt")
# Importantly, we tried to round() the values but it does not work properly. So, the rounding to the 
# closest integer value should be done in Microsoft Excel.

# We add the ROI names and the Area to the beggining of the merge_file
all_mean_values <- cbind(ROI_Area, merge_file)
# We export the results
write.csv(all_mean_values, file = "all_mean_values.txt")

#----------------------------------------------------------------------------------------
#After cell-ROI curation, import the list of the curated AT2 cells
at2_curated_list <- read.csv("507_s7_at2_curated_roi_list.csv")
at2_curated_list <- at2_curated_list$Name
at2_curated_list <- data.frame(at2_curated_list)
at2_curated_list <-  setNames(at2_curated_list, c("ROI"))

# merge the at2_curated list and the all_dots to obtain the dots of all analyzed genes for curated AT2 cells only
at2_curated_dots <-join(at2_curated_list, all_dots, by="ROI", type="inner")
write.csv(at2_curated_dots, file = "at2_curated_dots.txt")
