
class NotificationsController < ApplicationController 
    def index
        @adminviewtitle = 'Admin view for all Notifications'
        @notifications = Notification.all
    end

    def new
        @formtitle = 'This is the Form for Admins'
        @notification = Notification.new
    end
    
    def show
        @notification = Notification.find(params[:id])
    end

    def create
        @notification = Notification.new(notification_params)
        if(@notification.save)
            redirect_to @notification
        else
            render 'new'
        end        
    end

    private def notification_params
        params.require(:notification).permit(:title, :description, :active, :date)
    end
end
