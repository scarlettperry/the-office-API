class Api::V1::BranchesController < ApplicationController
    def index
        @branches = Branch.all
        render json: @branches
    end
end
