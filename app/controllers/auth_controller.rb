class AuthController < ApplicationController

    def create
        user = User.find_by({username: params[:username], password: params[:password]})

        if user
            render json: {
                message: "Login Successful",
                user:user
            }
        else
            render json: {
                message: "Login Failed"
            }
        end
    end

end