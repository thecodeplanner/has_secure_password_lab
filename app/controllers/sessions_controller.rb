class SessionsController < ActionController::Base
    def create
        @user = User.find_by(name: params[:user][:name])
        return head(:forbidden) unless @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        @user = user

        redirect_to controller: 'welcome', action: 'home'


    end
end
