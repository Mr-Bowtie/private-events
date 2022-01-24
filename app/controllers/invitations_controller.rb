class InvitationsController < ApplicationController
  def new
    @invitation = current_user.created_invitations.build
  end

  def create
    @invitation = Invitation.create(invitation_params)
  end

  private

  def invitation_params
    params.require(:invitation).permit(:invite_creator_id, :recipient_id, :event_id)
  end
end
