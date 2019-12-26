class InformationTypesController < ApplicationController
  def index
    @information_types = InformationType.all

    respond_to do |format|
      format.html {}
      format.json { render json: @information_types.as_json(except: [:id, :information_group_id, :created_at, :updated_at]) }
    end
  end

  def show
    @information_type = InformationType.find_by(type_code: params[:type_code])

    respond_to do |format|
      format.html {}
      format.json { render json: @information_type.as_json(except: [:id, :information_group_id, :created_at, :updated_at]) }
    end
  end
end
