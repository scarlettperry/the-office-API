class Api::V1::DepartmentsController < ApplicationController
    def index
        @departments = Department.all
        render json: @departments
    end

    #make a new department
    def create
        @department = Department.create(department_params)
        if @department
            render json: @department, status: :accepted
        else
            render json: {errors: @department.errors.full_messages}, status: :unprocessable_entity
        end
    end

    #edit department name
    def update
        @department = Department.find(params[:id])
        if @department
            render json: @department, status: :accepted
        else
            render json: {errors: @department.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private
    def department_params
        params.require(:department).permit(:name)
    end
end
