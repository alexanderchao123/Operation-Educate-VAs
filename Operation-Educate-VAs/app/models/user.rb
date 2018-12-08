class User < ApplicationRecord
    has_one :questionaire
    has_secure_password 
end
