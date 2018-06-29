# make a dog class that has 3 attributes : name, breed, age 
#make a counter that says how may dogs have been created 


class Dog 
  attr_accessor(:name,:breed,:age)
@@counter = 0 

def initialize(name,breed,age)
    @name=name
    @breed=breed
    @age=age
    @@counter += 1
end

def get_name
  "This dog's name is #{@name.capitalize}."
end 

def get_breed
  " #{@name.capitalize}'s breed is #{@breed.capitalize}."
end

def get_age
  " Also, #{@name.capitalize}'s age is #{@age}!"
end
end 








