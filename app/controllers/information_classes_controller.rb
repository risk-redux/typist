class InformationClassesController < ApplicationController
  def index
    @information_classes = InformationClass.all

    respond_to do |format|
      format.html {}
      format.json {
        render json: JSON.pretty_generate(@information_classes.as_json(except: [:id, :created_at, :updated_at],
        include: [
          information_groups: { except: [:id, :created_at, :updated_at] }
        ]))
      }
    end
  end
end
