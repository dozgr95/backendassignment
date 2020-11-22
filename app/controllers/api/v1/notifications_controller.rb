
module Api
    module V1
        class NotificationsController < ApplicationController
            protect_from_forgery with: :null_session
            
            # get all notifications
            def index
              render json: Notification.all
            end
            
            # get notifications for a client
            def show
                client = Client.find(params[:id])
                notifications = Notification.all
                client_notifications = notifications
                    .select { |notification| client.companies.include? notification.company }
                render json: client_notifications
            end

            # patch /id -> marks a notification as read
            def update
                notification = Notification.find(params[:id])
                notification.update(
                    params.permit(:title, :description)
                )
                notification.active = false
                notification.save
                render json: notification
            end
        end
    end
end