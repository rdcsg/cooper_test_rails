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
end
