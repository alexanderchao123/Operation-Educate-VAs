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
      @output = @user.questionaire.compute_output
  end

  private
    def user_params
      params.require(:user).permit(:fname, :lname, :va_number, :email, questionaire_attributes: [:name,:date_of_birth,:sex,:role_in_military, :military_start_date, :time_in_combat, :dependents, :education_level, :city])
    end
end
