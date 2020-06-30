class LogsController < ApplicationController
  def new
    @log = Log.new
  end

  def create
    @log = Log.new(log_params)
    @log.user = current_user

    if @log.save
      redirect_to logs_path
    else
      render 'logs/new'
    end
  end

  private

  def log_params
    params.require(:log).permit(:start_time, :end_time, :rating, :observation, :location_id)
  end
end
