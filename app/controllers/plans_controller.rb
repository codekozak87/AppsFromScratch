class PlansController < ApplicationController

  def index
    @plans = Plan.all
  end

  def show
    @plan = Plan.find_by_id(params[:id])
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new
    @plan.name = params[:name]
    @plan.execution = params[:execution]
    @plan.vertical = params[:vertical]
    @plan.problem = params[:problem]
    @plan.solution = params[:solution]
    
    if @plan.save
            redirect_to plans_url
          else
      render 'new'
    end
  end

  def edit
    @plan = Plan.find_by_id(params[:id])
  end

  def update
    @plan = Plan.find_by_id(params[:id])
    @plan.plan_name = params[:plan_name]
    @plan.idea_name = params[:idea_name]
    @plan.problem = params[:problem]
    @plan.solution = params[:solution]
    
    if @plan.save
            redirect_to plans_url
          else
      render 'edit'
    end
  end

  def destroy
    @plan = Plan.find_by_id(params[:id])
    @plan.destroy
        redirect_to plans_url
      end
end
