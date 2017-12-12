class UsersController < ApplicationController
     def new
        @user=User.new
     end

     def show
     end

     def create
     end

     def destroy
        @user.destroy
        redirect_to root_path
     end

     def edit
     end
end
