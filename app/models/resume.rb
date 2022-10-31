class Resume < ApplicationRecord
    validates :title, presence: { message: 'This part does not blank' }
    validates :body, presence: true, length: { minimum: 10 }
end
