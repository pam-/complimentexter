class NotificationsController < ApplicationController

  def create
    @notification = Notification.new(notification_params)
    @notification.text
    redirect_to new_notification_path 
  end

  private
  def notification_params
    params.permit(:to_number)
  end
end