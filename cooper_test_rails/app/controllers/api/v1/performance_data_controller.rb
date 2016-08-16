class Api::V1::PerformanceDataController < ApplicationController
  def create
    #@dat@data = PerformanceData.new(performance_data_params)a = PerformanceData.new(params[:performance_data])
    @data = PerformanceData.new(performance_data_params)
    if @data.save
      render json: ({message: 'all good'})
    else
      render json: ({error: @data.errors.full_messages})
    end
  end

  def index
    @collection = current_api_v1_user.performance_data
    render json: ({entries: @collection})
  end

  private
    def performance_data_params
      params.require(:performance_data).permit!
    end
end
