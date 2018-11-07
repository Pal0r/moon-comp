class ClimbersController < ApplicationController
  def index
    @climbers = Climber.all
  end

  def show
    @climber = Climber.find(params[:id])
  end

  def new
    @climber = Climber.new
  end

  def edit
    @climber = Climber.find(params[:id])
  end

  def update
    @climber = Climber.find(params[:id])

    if @climber.update(climber_params)
      redirect_to @climber
    else
      render 'edit'
    end
  end

  def create
    @climber = Climber.new(climber_params)

    if @climber.save()
      redirect_to @climber
    else
      render 'new'
    end
  end

  def destroy
    @climber = Climber.find(params[:id])
    @climber.destroy

    redirect_to climbers_path
  end

  private
    def climber_params
      params.require(:climber).permit(:name)
    end
end
