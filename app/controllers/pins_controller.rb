class PinsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  def show
    @pin = Pin.find(params[:id])
  end

  def index
    @pins = Pin.all()
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = current_user.pins.build(pin_params)

    if @pin.save
      redirect_to @pin, notice: 'Pin was successfully created.'
    else
      render 'new'
    end
  end

  def edit
    @pin = Pin.find(params[:id])
  end

  def update
    @pin = Pin.find(params[:id])

    if @pin.update(pin_params)
      redirect_to @pin, notice: 'Pin was successfully edited.'
    else
      render 'edit'
    end
  end

  def destroy
    @pin = current_user.pins.find(params[:id])
    @pin.destroy

    redirect_to pins_path, notice: 'Pin was deleted.'
  end


  private

  def pin_params
    params.require(:pin).permit(:name, :description)
  end

end
