class ApplicationController < ActionController::Base
    before_action :generate_random_number

    def generate_random_number
        if session[:number] == nil
            number = rand 101
            session[:number] = number
        end
    end
end
