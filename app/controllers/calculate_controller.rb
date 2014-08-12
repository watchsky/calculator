class CalculateController < ApplicationController
  def index
  end

  def add
    @result = params[:number1].to_f + params[:number2].to_f
    respond_to do |format|
      format.json {render :json => {:result => @result.to_s}}
    end
  end

  def del
    @result = params[:number1].to_f - params[:number2].to_f
    respond_to do |format|
      format.json {render :json => {:result => @result.to_s}}
    end
  end

  def mul
    @result = params[:number1].to_f * params[:number2].to_f
    respond_to do |format|
      format.json {render :json => {:result => @result.to_s}}
    end
  end

  def div
    @result = params[:number1].to_f / params[:number2].to_f
    respond_to do |format|
      format.json {render :json => {:result => @result.to_s}}
    end
  end

end
