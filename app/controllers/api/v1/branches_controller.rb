class Api::V1::BranchesController < ApplicationController
    def index
        @branches = Branch.all
        render json: @branches
    end

    #make a new branch
    def create
        @branch = Branch.create(branch_params)
        if @branch
            render json: @branch, status: :accepted
        else
            render json: {errors: @branch.errors.full_messages}, status: :unprocessable_entity 
        end
    end

    #edit branch name
    def update
        @branch = Branch.find(params[:id])
        if @branch
            render json: @branch, status: :accepted
        else
            render json: {errors: @branch.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private
    def branch_params
        params.requre(:branch).permit(:name, :city, :state)
    end
end
