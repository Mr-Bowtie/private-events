class InvitationsController < ApplicationController
  before_action :setup_invitation, only: %i[ destroy update ]

  def new
    @invitation = current_user.created_invitations.build
  end

  def create
    @invitation = Invitation.create(invitation_params)
    redirect_back_or_to(Event.find(params[:event_id]))
  end

  def destroy
    @invitation.destroy
    invite_event_attendee = @invitation.event.users_events.find_by(attendee_id: @invitation.recipient.id)
    # if there is a users_event attached to the recipient of the invitation,
    # destroy that users_event as well. prevents user from still showing as
    # attending after deleting the invitations
    unless invite_event_attendee.nil?
      invite_event_attendee.destroy
    end
    redirect_back_or_to(Event.find(params[:event_id]))
  end

  def update
    @invitation.update_attribute(:response, params[:response])
    if params[:response] == 'attend'
      @event = Event.find(params[:event_id])
      @event.users_events.create(attendee_id: current_user.id, event_id: params[:event_id])
    end
    redirect_back_or_to(Event.find(params[:event_id]))
  end

  private

  def invitation_params
    params.require(:invitation).permit(:invite_creator_id, :recipient_id, :event_id)
    # params.permit(:response)
  end

  def setup_invitation
    @invitation = Invitation.find(params[:id])
  end
end
