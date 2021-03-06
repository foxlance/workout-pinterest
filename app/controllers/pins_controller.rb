class PinsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  def show
    @pin = Pin.find(params[:id])
  end

  def index
    @pins = Pin.includes(:user).order('created_at DESC').all()
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
    authorize @pin
  end

  def update
    @pin = Pin.find(params[:id])
    authorize @pin

    if @pin.update(pin_params)
      redirect_to @pin, notice: 'Pin was successfully edited.'
    else
      render 'edit'
    end
  end

  def destroy
    @pin = current_user.pins.find(params[:id])
    authorize @pin

    @pin.destroy

    redirect_to pins_path, notice: 'Pin was deleted.'
  end

  def like
    @pin = Pin.find(params[:id])

    @pin.liked_by current_user
    notice = 'You liked this Pin!'

    unless @pin.vote_registered?
      @pin.disliked_by current_user
      notice = 'You unliked this Pin!'
    end

    # Do not use :back, if your logged out, you wont redirect properly
    redirect_to @pin, notice: notice
  end


  private

  def pin_params
    params.require(:pin).permit(:name, :description, :image)
  end

end
