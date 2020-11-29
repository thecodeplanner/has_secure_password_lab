class UsersController < ActionController::Base
    def new
    end

    
    def create
        @user = User.create(user_params)
        return redirect to controller: 'users', action: 'new' unless @user.save
        session[:user_id] = @user.id
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end

end