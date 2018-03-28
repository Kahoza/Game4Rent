class EventsController < ApplicationController

  def new
    @event = Event.new
    @game = Game.find(params[:game_id])
  end

  def create
    @event = Event.new(event_params)
    @event.game = Game.find(params[:game_id])
    if @event.save
      redirect_to game_path(@event.game)
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
    @event.game = Game.find(params[:game_id])
  end

  private

  def event_params
    params.require(:event).permit(:start_date, :end_date)
  end
end
