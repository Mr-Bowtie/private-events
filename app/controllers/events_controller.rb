class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]

  def index
    @events = Event.all
  end

  def new
    @event = current_user.created_events.build
  end

  def create
    @event = current_user.created_events.build(event_params)

    if @event.save
      # flash.now[:notice] = 'Event was created'
      redirect_to @event, notice: 'Event successfully created'
    else
      flash.now[:alert] = 'Event fields cannot be left blank'
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to @event, notice: 'Event was successfully updated'
    else
      render :edit, status: :unprocessable_entity
      flash[:alert] = 'Event fields cannot be left blank'
    end
  end

  def destroy
    @event.destroy
    redirect_back_or_to users_show_path, status: 303
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :location, :date, :visibility)
  end
end
