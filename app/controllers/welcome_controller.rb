class WelcomeController < ApplicationController
    def index
        render json: { status: 200, message: "Purse API" }
      end
end
