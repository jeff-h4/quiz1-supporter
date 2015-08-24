class RequestsController < ApplicationController

  before_action :find_request, only: [:show,:edit,:update,:destroy]
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
    if @request.update request_params
      redirect_to request_path(@request), notice: "Request updated!"
    else
      flash[:alert] = "See errors below:"
      render :edit
    end
  end

  def index
    @requests = Request.all
  end

  def destroy
    @request.destroy
    redirect_to requests_path
  end
  private
  def request_params
    params.require(:request).permit(:name,:email,:department,:message,:done)
  end
  def find_request
    @request = Request.find params[:id]
  end
end
