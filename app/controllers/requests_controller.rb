class RequestsController < ApplicationController

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    if @request.save
      redirect_to request_path(@request), notice: "Request saved!"
    else
      flash[:alert] = "See errors below:"
      render :new
    end
  end

  def show
  end

  def update
  end

  def index
    @requests = Request.all
  end

  def destroy
  end
  private
  def request_params
    params.require(:request).permit(:name,:email,:department,:message,:done)
  end
end
