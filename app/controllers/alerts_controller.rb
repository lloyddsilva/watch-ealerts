class AlertsController < ApplicationController
  before_action :set_alert, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @alerts = Alert.all
    respond_with(@alerts)
  end

  def show
    respond_with(@alert)
  end

  def new
    @alert = Alert.new
    respond_with(@alert)
  end

  def edit
  end

  def create
    @alert = Alert.new(alert_params)
    flash[:notice] = 'Alert was successfully created.' if @alert.save
    respond_with(@alert)
  end

  def update
    flash[:notice] = 'Alert was successfully updated.' if @alert.update(alert_params)
    respond_with(@alert)
  end

  def destroy
    @alert.destroy
    respond_with(@alert)
  end

  private
    def set_alert
      @alert = Alert.find(params[:id])
    end

    def alert_params
      params.require(:alert).permit(:title, :content, :latitude, :longitude)
    end
end
