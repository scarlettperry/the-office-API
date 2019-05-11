class DepartmentSerializer < ActiveModel::Serializer
  has_many :employees
  has_many :branches, through: :employees
  attributes :id, :name
end
