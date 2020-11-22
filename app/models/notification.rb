class Notification < ApplicationRecord
    validates :title, presence: true, 
        length: {minimum: 5}
    validates :description, presence: true, 
        length: {minimum: 5}
    validates :company, presence: true
end
