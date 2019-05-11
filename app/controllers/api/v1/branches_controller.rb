class Api::V1::BranchesController < ApplicationController
    def index
        @branches = Branch.all
        render json: @branches
    end

    #make a new branch

    #edit branch name
    
end
