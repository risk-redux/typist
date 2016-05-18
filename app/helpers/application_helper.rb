module ApplicationHelper
  # Quick way to automate pretty page titles.
  def view_title(page_title)
    content_for(:title) { page_title }
  end

  # Quick way to highlight active navigation bar areas.
  def is_active(controller)
    params[:controller] == controller ? "active" : nil
  end

  def information_types_table(information_types)
    render("shared/information_type_table", information_types: information_types)
  end

  def impact_level_label(impact_level)
    @impact_level = ImpactLevel.find(impact_level)

    case impact_level
    when 1
      @impact_level_color = "info"
    when 2
      @impact_level_color = "warning"
    when 3
      @impact_level_color = "danger"
    else
      @impact_level_color = "default"
    end

    render("shared/impact_level_label", impact_level: @impact_level, impact_level_color: @impact_level_color)
  end
end
