class Employee < ApplicationRecord
    belongs_to :department
    belongs_to :branch

    validates :name, :title, :branch_id, :department_id, presence: true
    validates :branch_id, :department_id, numericality: true
end
