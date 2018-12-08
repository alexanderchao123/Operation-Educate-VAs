class UsersController < ApplicationController
  def new
    @user = User.new()
    @user.questionaire = Questionaire.new()
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
      @user = User.find(params[:id])
      @schools = School.where(:city  => @user.questionaire.city)
     #to be eligible for the 9/11 bill a vet must be on active duty for 90 days after 9/11
     # the offer expires 15 years after your discharge date if date is later than 1/1/13

     #if you are eligible
        # you can get full tuition up to 22,805.34
        # if tuition is greater you get the max number 22,805.34

        #tuition = .4(max) if time is = 90 days
        # if time in military is > 3 years after 9/11 then tuition = 22,805.34
  end

  private
    def user_params
      params.require(:user).permit(:fname, :lname, :va_number, :email, questionaire_attributes: [:name,:date_of_birth,:sex,:role_in_military, :military_start_date, :time_in_combat, :dependents, :education_level, :city])
    end
end
