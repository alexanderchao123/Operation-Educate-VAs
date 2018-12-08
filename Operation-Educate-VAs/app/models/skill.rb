class Skill < ApplicationRecord
    has_many :questionaire_skills
    has_many :questionaires, through: :questionaire_skills
end
