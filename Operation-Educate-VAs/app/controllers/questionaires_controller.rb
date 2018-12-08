class QuestionairesController < ApplicationController
    def new
      @questionaire = Questionaire.new
    end

    def create
      @questionaire = Questionaire.new(questionaire_params)
      if @questionaire.save
        redirect_to questionaire_path(@questionaire)
      else
        render :new
      end
    end

    def edit
      @questionaire = Questionaire.find(id: params[:id])
    end

    def update
      @questionaire = Questionaire.find(id: params[:id])
      if @questionaire.update(questionaire_params)
        redirect_to questionaire_path(@questionaire)
      else
        render :edit
      end
    end

    private
      def questionaire_params
        params.require(:questionaire).permit(:name,:date_of_birth,:sex,:role_in_military, :time_in_military, :time_in_combat, :dependents, :education_level)
      end
end
