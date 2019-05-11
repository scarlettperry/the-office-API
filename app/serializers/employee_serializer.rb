class EmployeeSerializer < ActiveModel::Serializer
  belongs_to :branch
  belongs_to :department
  attributes :id, :name, :title, :department_id, :branch_id
end
