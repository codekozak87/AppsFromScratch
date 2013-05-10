class ProblemsController < ApplicationController

  def index
    @problems = Problem.all
  end

  def show
    @problem = Problem.find_by_id(params[:id])
  end

  def new
    @problem = Problem.new
  end

  def create
    @problem = Problem.new
    
    if @problem.save
            redirect_to problems_url
          else
      render 'new'
    end
  end

  def edit
    @problem = Problem.find_by_id(params[:id])
  end

  def update
    @problem = Problem.find_by_id(params[:id])
    
    if @problem.save
            redirect_to problems_url
          else
      render 'edit'
    end
  end

  def destroy
    @problem = Problem.find_by_id(params[:id])
    @problem.destroy
        redirect_to problems_url
      end
end
