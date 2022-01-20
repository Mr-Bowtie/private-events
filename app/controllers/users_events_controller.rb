class UsersEventsController < ApplicationController
  def new
    @users_event = UsersEvent.new
  end

  def create
    @users_event = UsersEvent.create(users_event_params)
  end

  def destroy
    @users_event = UsersEvent.find(params[:users_event_id])
    @users_event.destroy
  end

  private

  def users_event_params
    params.permit(:attendee_id, :event_id)
  end
end
