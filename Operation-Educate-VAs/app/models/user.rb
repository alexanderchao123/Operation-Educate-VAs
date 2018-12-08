class User < ApplicationRecord
    has_one :questionaire
    accepts_nested_attributes :questionaire
    has_secure_password
end
