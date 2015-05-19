class CustomNotificationsController < ApplicationController
  before_action :set_custom_notification, only: [:show, :edit, :update, :destroy]

  # GET /custom_notifications
  # GET /custom_notifications.json
  def index
    @custom_notifications = CustomNotification.all
  end

  # GET /custom_notifications/1
  # GET /custom_notifications/1.json
  def show
    @name_of_food = @food.find_by_id[:id]
  end

  # GET /custom_notifications/new
  def new
    @custom_notification = CustomNotification.new
  end

  # GET /custom_notifications/1/edit
  def edit
  end

  # POST /custom_notifications
  # POST /custom_notifications.json
  def create
    @custom_notification = CustomNotification.new(custom_notification_params)

    respond_to do |format|
      if @custom_notification.save
        format.html { redirect_to @custom_notification, notice: 'Custom notification was successfully created.' }
        format.json { render :show, status: :created, location: @custom_notification }
      else
        format.html { render :new }
        format.json { render json: @custom_notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_notifications/1
  # PATCH/PUT /custom_notifications/1.json
  def update
    respond_to do |format|
      if @custom_notification.update(custom_notification_params)
        format.html { redirect_to @custom_notification, notice: 'Custom notification was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom_notification }
      else
        format.html { render :edit }
        format.json { render json: @custom_notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_notifications/1
  # DELETE /custom_notifications/1.json
  def destroy
    @custom_notification.destroy
    respond_to do |format|
      format.html { redirect_to custom_notifications_url, notice: 'Custom notification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_notification
      @custom_notification = CustomNotification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def custom_notification_params
      params.require(:custom_notification).permit(:user_id, :food_id, :days)
    end
end
