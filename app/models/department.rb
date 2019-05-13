class Department < ApplicationRecord
    has_many :employees
    has_many :branches, through: :employees

    validates :name, presence: true, uniqueness: true
end
