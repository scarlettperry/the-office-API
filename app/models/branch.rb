class Branch < ApplicationRecord
    has_many :employees
    has_many :departments, through: :employees

    validates :name, uniqueness: true
    validates :city, :state, presence: true
end
