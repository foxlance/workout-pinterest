class CommentsController < ApplicationController

  def create
    @pin = Pin.find(params[:pin_id])

    unless user_signed_in?
      return redirect_to @pin, notice: 'Please log in'
    end

    @comment = @pin.comments.build

    @comment.user_id = current_user.id
    @comment.message = params[:comment]['message']


    if @comment.save
      redirect_to @pin, notice: 'Added new comment!'
    else
      redirect_to @pin, notice: 'Error'
    end
  end

end
