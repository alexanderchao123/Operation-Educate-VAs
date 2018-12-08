class Questionaire < ApplicationRecord
    has_many :questionaire_skills
    has_many :skills, through: :questionaire_skills
    belongs_to :user, optional: true

    def compute_output
      output = 0
      cutoff_date = '9/11/2001'
      start_date = '5/14/2004' #change to self.military_start_date
      discharge_date = '8/13/2008' #change to self.discharge_date
      expiration_date = '1/1/2013'
      start_date_values = start_date.split('/')
      discharge_date_values = discharge_date.split('/')
      cutoff_date_object = Date.new(2001, 9, 11)
      expiration_date_object = Date.new(2013, 1, 1)
      start_date_object = Date.new(start_date_values[2].to_i, start_date_values[0].to_i, start_date_values[1].to_i)
      discharge_date_object = Date.new(discharge_date_values[2].to_i, discharge_date_values[0].to_i, discharge_date_values[1].to_i)
      days_served = (discharge_date_object - start_date_object).to_i
      if (Time.now.year - discharge_date_object.year) > 15 && (discharge_date_object <= expiration_date_object)
        return 'Sorry you are not eligible for education benefits under this bill'
      elsif (Time.now.year - discharge_date_object.year) > 15 && (discharge_date_object > expiration_date_object) && (start_date_object > cutoff_date_object) && (days_served >= 90 && days_served <= 1095)
        output = 22805.34 * 0.40
      elsif (Time.now.year - discharge_date_object.year) > 15 && (discharge_date_object > expiration_date_object) && (start_date_object > cutoff_date_object) && (days_served > 1095)
        output = 22805.34
      elsif (Time.now.year - discharge_date_object.year) < 15 && (start_date_object > cutoff_date_object) && (days_served >= 90 && days_served <= 1095)
        output = 22805.34 * 0.40
      elsif (Time.now.year - discharge_date_object.year) < 15 && (start_date_object > cutoff_date_object) && (days_served > 1095)
        output = 22805.34
      elsif days_served < 90
        return 'Sorry you are not eligible for education benefits under this bill'
      end
      return output
    end



end
