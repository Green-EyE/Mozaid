  rm(list = ls())
  library(openxlsx)
  
  
  #path <- "sample-data/merge-files/xlsx"
  #Alcancar
  #path <- "C:/Users/cnhantumbo/Documents/MOZAID DevResults/Alcancar"
  #IFPP
  #path <- "C:/Users/cnhantumbo/Documents/MOZAID DevResults/IFPP"
  #Transform Nutrition
  #path <- "C:/Users/cnhantumbo/Documents/MOZAID DevResults/TransformNutrition"
  #Integrated Gorongosa Park and Buffer Zone
  #path <- "C:/Users/cnhantumbo/Documents/MOZAID DevResults/IntegratedGorongosaParkandBufferZone"
  #Advancing Nutrition
  path <- "C:/Users/cnhantumbo/Documents/MOZAID DevResults/AdvancingNutrition"
  #IGBZ
  #path <- "C:/Users/cnhantumbo/Documents/MOZAID DevResults/IGBZ"
  #GRP
  #path <- "C:/Users/cnhantumbo/Documents/MOZAID DevResults/GRP"
  #PIRCOM
  #path <- "C:/Umerge_file_name <- "C:/Users/cnhantumbo/Documents/MOZAID DevResults/Alcancar//merged_file.xlsx"sers/cnhantumbo/Documents/MOZAID DevResults/PIRCOM"
  
  
  #merge_file_name <- "sample-data/merge-files//merged_file.xlsx"
  #Alcancar
  #merge_file_name <- "C:/Users/cnhantumbo/Documents/MOZAID DevResults/Alcancar//merged_file.xlsx"
  #IFPP
  #merge_file_name <- "C:/Users/cnhantumbo/Documents/MOZAID DevResults/IFPP//merged_file.xlsx"
  #Transform Nutrition
  #merge_file_name <- "C:/Users/cnhantumbo/Documents/MOZAID DevResults/TransformNutrition//merged_file.xlsx"
  #ntegrated Gorongosa Park and Buffer Zone
  #merge_file_name <- "C:/Users/cnhantumbo/Documents/MOZAID DevResults/IntegratedGorongosaParkandBufferZone//merged_file.xlsx"
  #Advancing Nutrition
  merge_file_name <- "C:/Users/cnhantumbo/Documents/MOZAID DevResults/AdvancingNutrition//merged_file.xlsx"
  #IGBZ
  #merge_file_name <- "C:/Users/cnhantumbo/Documents/MOZAID DevResults/IGBZ//merged_file.xlsx"
  #GRP
  #merge_file_name <- "C:/Users/cnhantumbo/Documents/MOZAID DevResults/GRP//merged_file.xlsx"
  #PIRCOM
  #merge_file_name <- "C:/Users/cnhantumbo/Documents/MOZAID DevResults/PIRCOM//merged_file.xlsx"
  
  filenames_list <- list.files(path= path, full.names=TRUE)
  
  All <- lapply(filenames_list,function(filename){
      print(paste("Merging",filename,sep = " "))
      read.xlsx(filename)
  })
  
  df <- do.call(rbind.data.frame, All)
  write.xlsx(df,merge_file_name)
  
