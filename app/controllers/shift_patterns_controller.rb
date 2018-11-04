class ShiftPatternsController < ApplicationController
  def index
    @shift_patterns = ShiftPattern.all
  end

  def new
    @shift_pattern = ShiftPattern.new
  end

  def create
    @planning_period = PlanningPeriod.find(params[:planning_period_id])
    @shift_pattern = @planning_period.shift_patterns.create(shift_pattern_params)
    flash[:notice] = "Pattern was successfully created."
    redirect_to planning_period_path(@planning_period)
  end

  private

  def shift_pattern_params
    params.require(:shift_pattern).permit(:planning_period_id, :shift_start, :shift_length, :breaks, :requirements)
  end

end
