class UsersController < ApplicationController
    
   def index
       
       @users = User.all
       
       render("/users/index")
   end
   
   
   def show
       
       @user = User.find(params.fetch("id_to_display"))
       
       render("/users/show")
   end
   
   def likes
       
       render("/users/likes")
   end
   
end