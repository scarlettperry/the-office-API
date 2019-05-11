class Api::V1::DepartmentsController < ApplicationController
    def index
        @departments = Department.all
        render json: @departments
    end

    #make a new department

    #edit department name
end
