class WelcomeController < ApplicationController::Base
    before_action :require_login

    def home
    end
    
end
