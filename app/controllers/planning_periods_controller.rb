class PlanningPeriodsController < ApplicationController
  def index
    @planning_periods = PlanningPeriod.all
  end

  def new
    @planning_period = PlanningPeriod.new
  end

  def create
    @planning_period = PlanningPeriod.new(planning_period_params)
    if @planning_period.save
      redirect_to @planning_period
    end

  end

  private

  def planning_period_params
    params.require(:planning_period).permit(:month)
  end

end
