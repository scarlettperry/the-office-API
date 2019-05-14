class Api::V1::BranchesController < ApplicationController
    def index
        @branches = Branch.all
        render json: @branches
    end

    #make a new branch
    def create
        @branch = Branch.create(branch_params)
        if @branch.valid?
            render json: @branch, status: :accepted
        else
            render json: {errors: @branch.errors.full_messages}, status: :unprocessable_entity 
        end
    end

    def update
        @branch = Branch.find(params[:id])
        @branch.update(branch_params)
        if @branch.valid?
            render json: @branch, status: :accepted
        else
            render json: {errors: @branch.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private
    def branch_params
        params.require(:branch).permit(:name, :city, :state)
    end
end
