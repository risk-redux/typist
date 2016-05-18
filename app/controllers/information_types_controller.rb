class InformationTypesController < ApplicationController
  def index
    # Hi!
  end

  def show
    @information_type = InformationType.find(params[:id])
  end
end
