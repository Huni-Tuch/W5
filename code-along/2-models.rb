# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table

#puts "There are #{Company.all.count} companies"

new_company = Company.new
new_company["name"] = "Apple"
new_company["city"] = "Cupertino"
new_company["state"] = "California"
new_company["url"] = "https://apple.com"
new_company.save

#puts "There are #{Company.all.count} companies"

new_company = Company.new
new_company["name"] = "Amazon"
new_company["city"] = "Seattle"
new_company["state"] = "Washington"
new_company.save

zebra = Company.new #just playing with varaible names
zebra["name"] = "Twitter"
zebra["city"] = "San Francisto"
zebra["state"] = "California"
zebra["url"] = "https://twitter.com"
zebra.save

#puts "There are #{Company.all.count} companies"

all_companies = Company.all
#puts all_companies.inspect


# 3. query companies table to find all row with California company

cali_companies = Company.where({"state" => "California"})

#puts "cali companies: #{cali_companies.count}"

# 4. query companies table to find single row for Apple

apple = Company.find_by({"name" => "Apple"})
#puts apple["url"]

# 5. read a row's column value

# 6. update a row's column value

amazon = Company.find_by({"name" => "Amazon"})
#puts amazon.inspect
amazon["url"] = "https://amazon.com"
amazon.save
#puts amazon.inspect


# 7. delete a row


twitter = Company.find_by({"name" => "Twitter"})
puts twitter.inspect
twitter.destroy

twitter = Company.find_by({"name" => "Twitter"})
puts twitter.inspect