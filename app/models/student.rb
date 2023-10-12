class Student < ApplicationRecord
   belongs_to :user
   # **********pagination*****************
   paginates_per 2

   has_one_attached:profile_image
   # ***************************
   has_many :blogs
   has_and_belongs_to_many :courses
   validates :first_name, presence:true 
   # uniqueness validation******************
   # validates :email,uniqueness:true
   # *******************************
   # length validation****************************
   validates :first_name, :last_name, length:{ minimum: 2, maximum: 50 }
   # *******************************************************
   # has_many_through*********

   has_many :student_projects
   has_many :projects,through: :student_projects

   def full_name
      "#{f_name} #{last_name}"
   end
end
