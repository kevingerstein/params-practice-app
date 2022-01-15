class ParamsController < ApplicationController

  def index
    no_params_msg = "No phrase parameter included in url. Please use the ?phrase=example_phrase at the end of the url."
    obj = params[:phrase].nil? ? {message: no_params_msg} : obj = params[:phrase].upcase
    render json: obj.as_json
  end

  def show
    render json: {message: params[:phrase].upcase }
  end
  
end
