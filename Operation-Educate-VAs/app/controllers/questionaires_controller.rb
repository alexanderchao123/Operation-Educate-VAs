class QuestionairesController < ApplicationController

    def index
        @questionaire = Questionaire.new
    
    end
    def new
        @questionaire = Questionaire.new
    end
    def create
        @questionaire = Questionaire.new(questionaire_params)
    end
    def edit
        @questionaire = Questionaire.find(params[:id])
    end
    def update
        @questionaire = Questionaire.find(params[:id])
        @questionaire.update(questionaire_params)

    end

    private
    def questionaire_params
        params.require(:questionaire).permit(:name,:date_of_birth,:sex,:role_in_military, :time_in_military, :time_in_combat, :dependents, :education_level)
    end

end
