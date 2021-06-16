class MainController < ApplicationController
    def index
    end

    def guess
        # Store the user input from the form to variable number
        number = params[:number].to_i
        # Test if user input
        if number > session[:number]
            # if the number is higher display flash message
             flash.now[:alert] = "Number Too High!"
        elsif number < session[:number]
            # if the number is low display flash message
            flash.now[:alert] = "Number Too Low!"
        else
            # if the number is correct display flash message
            flash.now[:notice] = "Correct! The number is #{session[:number]}!"
        end
        # debugging
        puts session[:number]
        # still render the current page
        render :index
    end

    def new_number
        # generate new number and store to the session variable
        session[:number] = rand 100+1
        # redirect to the root path
        redirect_to root_path

    end
end