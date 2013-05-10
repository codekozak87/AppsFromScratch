class SolutionsController < ApplicationController

  def index
    @solutions = Solution.all
  end

  def show
    @solution = Solution.find_by_id(params[:id])
  end

  def new
    @solution = Solution.new
  end

  def create
    @solution = Solution.new
    
    if @solution.save
            redirect_to solutions_url
          else
      render 'new'
    end
  end

  def edit
    @solution = Solution.find_by_id(params[:id])
  end

  def update
    @solution = Solution.find_by_id(params[:id])
    
    if @solution.save
            redirect_to solutions_url
          else
      render 'edit'
    end
  end

  def destroy
    @solution = Solution.find_by_id(params[:id])
    @solution.destroy
        redirect_to solutions_url
      end
end
