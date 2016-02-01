class PillTakenEventsController < ApplicationController
  # GET /pill_taken_events
  # GET /pill_taken_events.json
  def index
    @pill_taken_events = PillTakenEvent.all

    # being bad -- this is really a SPA
    @latest_pill = @pill_taken_events.order(created_at: :desc).first

    # combining index and new
    @pill_taken_event = PillTakenEvent.new
  end

  # POST /pill_taken_events
  # POST /pill_taken_events.json
  def create
    @pill_taken_event = PillTakenEvent.new(pill_taken_event_params)

    respond_to do |format|
      if @pill_taken_event.save
        format.html { redirect_to pill_taken_events_path, notice: 'Pill taken event was successfully created.' }
        format.json { redirect_to pill_taken_events_path, status: :created }
      else
        format.html { redirect_to pill_taken_events_path }
        format.json { render json: @pill_taken_event.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def pill_taken_event_params
      params[:pill_taken_event]
    end
end
