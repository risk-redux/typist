class InformationTypesController < ApplicationController
  def index
    @information_types = InformationType.all
  end

  def show
    @information_type = InformationType.find(params[:id])
  end
end
