# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# student=Student.create(
# first_name:'uday',
# last_name:'das',
# email:'uday123@gmail.com'   
# )



# Student.all.each do |student|
#     student.blogs.create(title:"dummy blog for student #{student.id}",context:"custom content pending#{student.id}")
# end

# course1=[
#     {name: "java" ,descrition: " this is about java"},
#     {name:"pythone" ,descrition: "this is about phythone"},
#     {name:"ruby" ,descrition: "this is about ruby"},
#     {name:"nodeJS",descrition: "this is about nodeJS"}
# ]

# course1=[
#     {name: "toufiq"},
#     {name:"palash" },
#     {name:"rajat" },
#     {name:"sourabh"}
# ]
# course1.each do |course1_attributes|
#     Teacher.create(course1_attributes)
#   end

#   student =[
#     {name: "bhasker"},
#     {name: "uday"},
#     {name: "jyoti"},
#     {name: "sharukh"}
#   ]
#   student.each do |course1_attributes|
#     Child.create(course1_attributes)
#   end

courses=[
  {name:"ruby"},
  {name:"java"},
  {name:"js"},
  {name:"phython"}
]
courses.each do |course|
  Course.create(course)
end