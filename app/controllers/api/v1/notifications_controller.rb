
module Api
    module V1
        class NotificationsController < ApplicationController
            protect_from_forgery with: :null_session
            def index
              render json: Notification.all
            end
            
            def show
                notification = Notification.find(params[:id])
                render json: notification
            end

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