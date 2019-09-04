class WelcomeController < ApplicationController
  def index
    @hits = InformationType.search(params[:search])
    @search = params[:search]
  end

  def about
  end
end
