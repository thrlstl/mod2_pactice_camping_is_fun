class SignupsController < ApplicationController

def new
    @signup = Signup.new
    @campers = Camper.all 
    @activities = Activity.all
end

def create
    @signup = Signup.new(signup_params)

    if @signup.save
        flash[:success] = "You're signup up!"
        redirect_to camper_path(@signup.camper)
    else
        flash[:my_errors] = @signup.errors.full_messages
        redirect_to new_signup_path
    end
end

private

def signup_params
    params.require(:signup).permit(:time, :camper_id, :activity_id)
end

end
