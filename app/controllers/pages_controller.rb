class PagesController < ApplicationController
    def welcome 
        @users = User.all
    end 
end
