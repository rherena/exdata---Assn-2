setwd("~/Data/datasciencecoursera/DataAnalysis/Assignment 2/exdata---Assn-2")
library(downloader)
library(dplyr)
library(reshape2)


ziplink <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"

if(!file.exists("peerassesment.zip")){
        download(ziplink,dest="peerassesment.zip",mode = "wb")
        unzip("peerassesment.zip",exdir = "./")
}


NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
