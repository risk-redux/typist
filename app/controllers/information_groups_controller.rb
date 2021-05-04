class InformationGroupsController < ApplicationController
  def show
    @information_group = InformationGroup.find_by(group_code: params[:group_code])

    respond_to do |format|
      format.html {}
      format.json {
        render json: JSON.pretty_generate(@information_group.as_json(except: [:id, :information_class_id, :created_at, :updated_at],
        include: [
          information_types: { except: [:id, :information_group_id, :created_at, :updated_at] }
        ]))
      }
    end
  end
end
