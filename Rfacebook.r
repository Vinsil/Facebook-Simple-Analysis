library(Rfacebook)

#authenticating fb API
fb_oauth <- fbOAuth(app_id="131037437472604", app_secret="237422605cd41f2a5ca0e51c55e55146",extended_permissions = TRUE)

#Saving the object for later use.
save(fb_oauth, file="fb_oauth")
load("fb_oauth")

me <- getUsers("me",token=fb_oauth)

#Getting the pages that I liked
my_likes <- getLikes(user="me", token=fb_oauth) 

#Extracting the post of a certaing page "agoda"
agoda = getPage (159632516873, token = fb_oauth, n = 100)

#Searching facebook pages with Travel in their names.
searchPages <- searchPages("Travel", token = fb_oauth, n = 20)

#Getting the reactions in the facebook posts. 
realpost <- getReactions(post = traveloka$id[1:10], token = fb_oauth)

#Exporting the data table in csv file for further analysis.
write.csv(agoda, "myagoda.csv")

