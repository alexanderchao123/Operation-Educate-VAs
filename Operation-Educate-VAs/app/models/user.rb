class User < ApplicationRecord
    has_one :questionaire
    accepts_nested_attributes_for :questionaire
end
