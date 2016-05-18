class InformationGroupsController < ApplicationController
  def index
    # Hi!
  end

  def show
    @information_group = InformationGroup.find(params[:id])
  end
end
