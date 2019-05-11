class Api::V1::EmployeesController < ApplicationController
    def index
        @employees = Employee.all
        render json: @employees
    end
end
