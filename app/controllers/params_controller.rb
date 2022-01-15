class ParamsController < ApplicationController

  def index
    obj = params[:phrase].nil? ? {message: "No phrase parameter included in url. Please use the ?phrase=example_phrase at the end of the url."} : obj = params[:phrase].upcase
    render json: obj.as_json
  end

  def show
    render json: params[:phrase].upcase.as_json
  end
  
end
