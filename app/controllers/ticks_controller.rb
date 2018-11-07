class TicksController < ApplicationController
  def destroy
    @climber = Climber.find(params[:climber_id])
    @tick = @climber.ticks.find(params[:id])
    @tick.destroy
    redirect_to climber_path(@climber)
  end

  def create
    @climber = Climber.find(params[:climber_id])
    @tick = @climber.ticks.create(tick_params)
    redirect_to climber_path(@climber)
  end

  private
    def tick_params
      params.require(:tick).permit(:name, :send_date, :grade)
    end
end
