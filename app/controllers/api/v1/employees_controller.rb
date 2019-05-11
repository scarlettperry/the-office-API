class Api::V1::EmployeesController < ApplicationController
    def index
        @employees = Employee.all
        render json: @employees
    end

    # make a create endpoint

    #make a update endpoint

    #makde a delete endpoint
end
