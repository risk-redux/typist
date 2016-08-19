module InformationTypesHelper
  def description_text(information_type)
    raw = information_type.description.split(".")

    lead = "%s." % [raw[0]]
    rest = "%s" % [raw[1..raw.length].join(".")]

    render("information_types/shared/description_text", lead: lead, rest: rest)
  end

  def security_category_panel(information_type)
    cia = [information_type.confidentiality_impact_level, information_type.integrity_impact_level, information_type.availability_impact_level]

    case cia.max
    when 3
      panel_class = "panel-danger"
    when 2
      panel_class = "panel-warning"
    when 1
      panel_class = "panel-info"
    else
      panel_class = "panel-default"
    end

    render("information_types/shared/security_category_panel", information_type: information_type, panel_class: panel_class)
  end

  def impact_level_label(impact_level)
    case impact_level
    when 3
      label_text = "High"
      label_class = "label-danger"
    when 2
      label_text = "Moderate"
      label_class = "label-warning"
    when 1
      label_text = "Low"
      label_class = "label-info"
    else
      label_text = "Null"
      label_class = "label-default"
    end

    render("information_types/shared/impact_level_label", label_text: label_text, label_class: label_class)
  end

  def security_category_line(information_type)
    render("information_types/shared/security_category_line", information_type: information_type)
  end
end
