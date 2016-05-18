class InformationClassesController < ApplicationController
  def index
    @information_classes = InformationClass.all
  end
end
