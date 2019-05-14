class Api::V1::EmployeesController < ApplicationController
    def index
        @employees = Employee.all
        render json: @employees
    end

    def create
        @employee = Employee.create(employee_params)
        if @employee.valid?
            render json: @employee, status: :accepted
        else
            render json: { errors: @employee.errors.full_messages}, status: :unprocessable_entity
        end
        
    end

    def update
        @employee = Employee.find(params[:id])
        @employee.update(employee_params)
        if @employee.valid?
            render json: @employee, status: :accepted
        else
            render json: {errors: @employee.errors.full_messages}, status: :unprocessable_entity
        end
    end

    # TODO: make "delete endpoint", set active to false"

    private 
    def employee_params
        params.require(:employee).permit(:name, :title, :active, :branch_id, :department_id)
    end
    
end
