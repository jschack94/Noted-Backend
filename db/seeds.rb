
######## USERS 
bob = User.create( name: "sponge bob", username: "spongebob", email: "pattyflipper@kk.sea", password: "abc123")
pat = User.create( name: "patrick star", username: "patrick", email: "no@thisIs.patrick", password: "abc123")
sandy = User.create( name: "sandy cheeks", username: "sandy", email: "karate.chop@yo.mama", password: "abc123")

rick = User.create( name: "Rick Sanchez", username: "rick", email: "rick@backtothefuture.com", password: "abc123")
morty = User.create( name: "Morty Smith", username: "morty", email: "mortyu@anatomypark.com", password: "abc123")

kim = User.create( name: "Kim Possible", username: "kim", email: "kp@whatsthesitch.com", password: "abc123")
tim = User.create( name: "Timmy Turner", username: "timmy", email: "chocolate.shake@wish.com", password: "abc123")
jim = User.create( name: "Jimmy Neutron", username: "jimmy", email: "gottaBlast@think.com", password: "abc123")

# ------------------------------------------------- #

######## PROJECTS
pat_proj1 = Project.create(user: pat, name: "Embarrassing christmas Party Photo")

bob_proj1 = Project.create(user: bob, name: "Get drivers liscense")
bob_proj2 = Project.create(user: bob, name: "Spring Cleaning")

sandy_proj1 = Project.create(user: sandy, name: "Teach Spongebob Karate")
sandy_proj2 = Project.create(user: sandy, name: "Write a new song")

rick_proj1 = Project.create(user: rick, name: "Create Drinks")
rick_proj2 = Project.create(user: rick, name: "Clean up Morty's Mess")
rick_proj3 = Project.create(user: rick, name: "Put Morty in danger")

morty_proj1 = Project.create(user: morty, name: "Wreak Havoc")

kim_proj1 = Project.create(user: kim, name: "Stop Shego")

tim_proj1 = Project.create(user: tim, name: "Stop Vicky from taking over the tv-universe")
tim_proj2 = Project.create(user: tim, name: "Finish this science project (wish for the best lab in the universe)")

jim_proj1 = Project.create(user: jim, name: "Save the planet from an Alien Invasion")

# ------------------------------------------------- #

######## LISTS
# Patrick - Embarrassing christmas Party Photo
pat_proj1_list1 = List.create(project: pat_proj1, name: "Find a place to hide Spongebob's embarrassing picture")

# Spongebob - Get drivers liscense & Spring Cleaning
bob_proj1_list1 = List.create(project: bob_proj1, name: "Stress out Mrs.Puff")
bob_proj1_list2 = List.create(project: bob_proj1, name: "Practice Driving Skills")
bob_proj2_list1 = List.create(project: bob_proj2, name: "Living Room")
bob_proj2_list2 = List.create(project: bob_proj2, name: "Bed Room")
bob_proj2_list3 = List.create(project: bob_proj2, name: "Bath Room")

# Sandy - Teach Spongebob Karate & Write a new song
sandy_proj1_list1 = List.create(project: sandy_proj1, name: "Make Training Exercises")
sandy_proj2_list1 = List.create(project: sandy_proj2, name: "Write Lyrics")
sandy_proj2_list2 = List.create(project: sandy_proj2, name: "Write Chords/Tabs")

# Rick - Create Drinks, Clean up Morty's Mess, & Put Morty in danger
rick_proj1_list1 = List.create(project: rick_proj1, name: "Ingredients")
rick_proj2_list1 = List.create(project: rick_proj2, name: "Identify problem")
rick_proj2_list2 = List.create(project: rick_proj2, name: "Possible Solutions")
rick_proj3_list1 = List.create(project: rick_proj3, name: "Irresponsible ideas")

# Morty - Wreak Havoc
mroty_proj1_list1 = List.create(project: morty_proj1, name: "Wild Child Ideas")

# Kim - Stop Shego
kim_proj1_list1 = List.create(project: kim_proj1, name: "Get all my gadgets")
kim_proj1_list2 = List.create(project: kim_proj1, name: "Intercept Shego")


# Timmy - Stop Vicky from taking over the tv-universe & Finish this science project (wish for the best lab in the universe)
tim_proj1_list1 = List.create(project: tim_proj1, name: "Get inside of the TV")
tim_proj1_list2 = List.create(project: tim_proj1, name: "Find Vicky and STOP HER")
tim_proj2_list1 = List.create(project: tim_proj2, name: "Finish Science Project")
tim_proj2_list2 = List.create(project: tim_proj2, name: "Stop Goddard")
tim_proj2_list3 = List.create(project: tim_proj2, name: "Stop Mr. Crocker")
tim_proj2_list4 = List.create(project: tim_proj2, name: "Get back Home")

# Jimmy - Save the planet from an Alien Invasion
jim_proj1_list1 = List.create(project: jim_proj1, name: "Find out what happened to our parents")
jim_proj1_list2 = List.create(project: jim_proj1, name: "Train all the kids")
jim_proj1_list3 = List.create(project: jim_proj1, name: "Bring our Parents Home")


# ------------------------------------------------- #

######## TASKS
# Patrick
pat_proj1_list1_task1 = Task.create(list: pat_proj1_list1, content: "Under the couch.")
pat_proj1_list1_task2 = Task.create(list: pat_proj1_list1, content: "In a box with a secret compartment that only opens when you pull on the string.")

# Spongebob

bob_proj1_list1_task1 = Task.create(list: bob_proj1_list1, content: "Talk during class.")
bob_proj1_list2_task2 = Task.create(list: bob_proj1_list1, content: "Crash boat into classroom.")