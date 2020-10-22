#install.packages("yaml")
library(yaml)

#for 2020

sites<-list.files("~/Documents/GitHub/summer-institute/_data/2020/")

non_covid<-c("bay_area","duke","istanbul","los_angeles","maastricht",
             "montreal","stellenbosch","rutgers")

data_2020<-as.data.frame(NULL)
for (i in 1: length(non_covid)){

    if(non_covid[i]!="bay_area"&
       non_covid[i]!="istanbul"&
       non_covid[i]!="stellenbosch"&
       non_covid[i]!="los_angeles"){
    test<-read_yaml(paste0("~/Documents/GitHub/summer-institute/_data/2020/",paste0(non_covid[i],"/participants.yml")))
    for (j in 1:length(test)){
      name<-test[[j]]$name
      bio<-test[[j]]$bio
      row<-cbind(name,bio, non_covid[i], "2020","participant")
      data_2020<-rbind(data_2020, row)
    }
    test<-read_yaml(paste0("~/Documents/GitHub/summer-institute/_data/2020/",paste0(non_covid[i],"/speakers.yml")))
    for (j in 1:length(test)){
      name<-test[[j]]$name
      bio<-test[[j]]$bio
      row<-cbind(name,bio, non_covid[i], "2020","speaker")
      data_2020<-rbind(data_2020, row)
    }
    
    
    }
    
    if(non_covid[i]=="bay_area"){
      test<-read_yaml(paste0("~/Documents/GitHub/summer-institute/_data/2020/",paste0(non_covid[i],"/people.yml")))
      holder<-test$participants$people
      for (j in 1:length(holder)){
        name<-holder[[j]]$name
        bio<-holder[[j]]$bio
        row<-cbind(name,bio, non_covid[i], "2020","participant")
        data_2020<-rbind(data_2020, row) 
      }
      holder<-test$speakers$people
      for (j in 1:length(holder)){
        name<-holder[[j]]$name
        bio<-holder[[j]]$bio
        row<-cbind(name,bio, non_covid[i], "2020","speaker")
        data_2020<-rbind(data_2020, row) 
      }
    }
    if(non_covid[i]=="istanbul"){
      test<-read_yaml(paste0("~/Documents/GitHub/summer-institute/_data/2020/",paste0(non_covid[i],"/people.yml")))
      holder<-test$participants$people
      for (j in 1:length(holder)){
        name<-holder[[j]]$name
        bio<-holder[[j]]$bio
        row<-cbind(name,bio, non_covid[i], "2020","participant")
        data_2020<-rbind(data_2020, row) 
      }
      holder<-test$localspeakers$people
      for (j in 1:length(holder)){
        name<-holder[[j]]$name
        bio<-holder[[j]]$bio
        row<-cbind(name,bio, non_covid[i], "2020","speaker")
        data_2020<-rbind(data_2020, row) 
      }
    }
    if(non_covid[i]=="stellenbosch"){
      test<-read_yaml(paste0("~/Documents/GitHub/summer-institute/_data/2020/",paste0(non_covid[i],"/people.yml")))
      holder<-test$participants$people
      for (j in 1:length(holder)){
        name<-holder[[j]]$name
        bio<-holder[[j]]$bio
        row<-cbind(name,bio, non_covid[i], "2020","participant")
        data_2020<-rbind(data_2020, row)  
      }
      holder<-test$speakers$people
      for (j in 1:length(holder)){
        name<-holder[[j]]$name
        bio<-holder[[j]]$bio
        row<-cbind(name,bio, non_covid[i], "2020","speaker")
        data_2020<-rbind(data_2020, row)  
      }
    }
  if(non_covid[i]=="los_angeles"){
    test<-read_yaml(paste0("~/Documents/GitHub/summer-institute/_data/2020/",paste0(non_covid[i],"/participants.yml")))
    for (j in 1:length(test)){
      name<-test[[j]]$name
      bio<-test[[j]]$bio
      row<-cbind(name,bio, non_covid[i], "2020","participant")
      data_2020<-rbind(data_2020, row)  
    }
  }
   
    
}



#for 2019

sites<-list.files("~/Documents/GitHub/summer-institute/_data/2019/")

data_2019<-as.data.frame(NULL)
for (i in 1: length(sites)){
  
  if(sites[i]!="oxford"&
     sites[i]!="istanbul"){
  test<-read_yaml(paste0("~/Documents/GitHub/summer-institute/_data/2019/",paste0(sites[i],"/participants.yml")))
  for (j in 1:length(test)){
    name<-test[[j]]$name
    bio<-test[[j]]$bio
    row<-cbind(name,bio, sites[i], "2019","participant")
    data_2019<-rbind(data_2019, row)
  }
  test<-read_yaml(paste0("~/Documents/GitHub/summer-institute/_data/2019/",paste0(sites[i],"/speakers.yml")))
  for (j in 1:length(test)){
    name<-test[[j]]$name
    bio<-test[[j]]$bio
    row<-cbind(name,bio, sites[i], "2019","speaker")
    data_2019<-rbind(data_2019, row)
  }
  
  
  }
  
  if(sites[i]=="oxford"){
    test<-read_yaml(paste0("~/Documents/GitHub/summer-institute/_data/2019/",paste0(sites[i],"/people.yml")))
    
    holder<-test$participants$people
    
    for (j in 1:length(holder)){
      name<-holder[[j]]$name
      bio<-holder[[j]]$bio
      row<-cbind(name,bio, sites[i], "2019","participant")
      data_2019<-rbind(data_2019, row) 
    }
   holder<-test$localspeakers$people 
   for (j in 1:length(holder)){
     name<-holder[[j]]$name
     bio<-holder[[j]]$bio
     row<-cbind(name,bio, sites[i], "2019","speaker")
     data_2019<-rbind(data_2019, row) 
   }
  }
    
    if(sites[i]=="istanbul"){
      test<-read_yaml(paste0("~/Documents/GitHub/summer-institute/_data/2019/",paste0(sites[i],"/participants.yml")))
    
      for (j in 1:length(holder)){
        name<-test[[j]]$name
        bio<-test[[j]]$bio
        row<-cbind(name,bio, sites[i], "2019","participant")
        data_2019<-rbind(data_2019, row) 
      }
  }
}





#for 2018

sites<-list.files("~/Documents/GitHub/summer-institute/_data/2018/")

data_2018<-as.data.frame(NULL)
for (i in 1: length(sites)){
  if(sites[i]=="boulder"){
  test<-read_yaml(paste0("~/Documents/GitHub/summer-institute/_data/2018/",paste0(sites[i],"/participants.yaml")))
  for (j in 1:length(test)){
    name<-test[[j]]$name
    bio<-test[[j]]$bio
    row<-cbind(name,bio, sites[i],"2018","participant")
    data_2018<-rbind(data_2018, row)
  }
  test<-read_yaml(paste0("~/Documents/GitHub/summer-institute/_data/2018/",paste0(sites[i],"/speakers.yaml")))
  for (j in 1:length(test)){
    name<-test[[j]]$name
    bio<-test[[j]]$bio
    row<-cbind(name,bio, sites[i],"2018","speaker")
    data_2018<-rbind(data_2018, row)
  }
  }
  if(sites[i]!="boulder"&
     sites[i]!="hunter-nyc"){
    test<-read_yaml(paste0("~/Documents/GitHub/summer-institute/_data/2018/",paste0(sites[i],"/participants.yml")))
    for (j in 1:length(test)){
      name<-test[[j]]$name
      bio<-test[[j]]$bio
      row<-cbind(name,bio, sites[i],"2018","participant")
      data_2018<-rbind(data_2018, row)
    }
    test<-read_yaml(paste0("~/Documents/GitHub/summer-institute/_data/2018/",paste0(sites[i],"/speakers.yml")))
    for (j in 1:length(test)){
      name<-test[[j]]$name
      bio<-test[[j]]$bio
      row<-cbind(name,bio, sites[i],"2018","speaker")
      data_2018<-rbind(data_2018, row)
    }
  }
  if(sites[i]=="hunter-nyc"){
    test<-read_yaml(paste0("~/Documents/GitHub/summer-institute/_data/2018/",paste0(sites[i],"/participants.yml")))
    for (j in 1:length(test)){
      name<-test[[j]]$name
      bio<-test[[j]]$bio
      row<-cbind(name,bio, sites[i],"2018","participant")
      data_2018<-rbind(data_2018, row)
    }
  }

}



#finally 2017

data_2017<-as.data.frame(NULL)
test<-read_yaml("~/Documents/GitHub/summer-institute/_data/2017/princeton/participants.yml")

for (j in 1:length(test)){
  name<-test[[j]]$name
  bio<-test[[j]]$bio
  row<-cbind(name,bio, "princeton","2017","participant")
  data_2017<-rbind(data_2017, row)
}

test<-read_yaml("~/Documents/GitHub/summer-institute/_data/2017/princeton/speakers.yml")

for (j in 1:length(test)){
  name<-test[[j]]$name
  bio<-test[[j]]$bio
  row<-cbind(name,bio, "princeton","2017","speaker")
  data_2017<-rbind(data_2017, row)
}




#rename LA
library(dplyr)
sicss_data$V3[sicss_data$V3=="los_angeles"]<-"los-angeles"


#check cross tab
table(sicss_data$V3, sicss_data$V4)


#now bind everything together

sicss_data<-rbind(data_2017,
                  data_2018,
                  data_2019,
                  data_2020)

#now do counts

names(sicss_data)<-c("name","bio","site","year","category")

table(sicss_data$site)
table(sicss_data$year)
table(sicss_data$category)


#check cross tab
table(sicss_data$site, sicss_data$year)


#now read in organizers (.csv created by hand)

organizers<-read.csv("~/Documents/Github/summer-institute/creating_database/sicss_organizers.csv")

#merge

sicss_data<-rbind(sicss_data, organizers)

setwd("~/Desktop")
library(readr)
write_excel_csv(sicss_data, "sicss_data.csv")



