class Education < ApplicationRecord
    validates :title, presence: true
    validates :begin_date, presence: true
    validates :end_date, presence: true
    validates :location, presence: true
    validates :body, presence: true
end
