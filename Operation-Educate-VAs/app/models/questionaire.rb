class Questionaire < ApplicationRecord
    has_many :questionaire_skills
    has_many :skills, through: :questionaire_skills
    belongs_to :user
end
