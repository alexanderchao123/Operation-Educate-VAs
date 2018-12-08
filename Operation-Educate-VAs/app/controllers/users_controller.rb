class UsersController < ApplicationController
  def new
    @user = User.new()
    @user.questionaire = Questionaire.new()
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # login_user(@user)
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
      @user = User.find(params[:id])
      @schools = School.where(:city  => @user.questionaire.city)
  end

  def confirmation
    UserMailer.with(user: @user).confirmation_email.deliver_later
  end

  private
    def user_params
      params.require(:user).permit(:fname, :lname, :va_number, :email, questionaire_attributes: [:date_of_birth, :sex, :city, :role_in_military, :military_start_date, :time_in_combat, :dependents, :discharge_date, :education_level, :part_online_fulltime])
    end
end
