class BranchSerializer < ActiveModel::Serializer
  has_many :employees
  has_many :departments, through: :employees
  attributes :id, :name, :city, :state
end
