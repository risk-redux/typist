class WelcomeController < ApplicationController
  def index
    @search = search_parameters
    @hits = InformationType.search(@search)

    @placeholder = InformationType.select(:name).sample(1).first.name.titlecase
  end

  def about
  end

  private

  def search_parameters
    params[:search].to_s
  end
end
