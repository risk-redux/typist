module InformationTypesHelper
  def description_text(information_type)
    raw = information_type.description.split(".")

    lead = "%s." % [raw[0]]
    rest = "%s" % [raw[1..raw.length].join(".")]

    render("information_types/shared/description_text", lead: lead, rest: rest)
  end

  def security_category_card(information_type)
    cia = [information_type.confidentiality_impact_level, information_type.integrity_impact_level, information_type.availability_impact_level]

    case cia.max
    when 3
      card_class = "border-danger"
    when 2
      card_class = "border-warning"
    when 1
      card_class = "border-info"
    else
      card_class = "border-default"
    end

    render("information_types/shared/security_category_card", information_type: information_type, card_class: card_class)
  end

  def impact_level_badge(impact_level)
    case impact_level
    when 3
      badge_text = "High"
      badge_class = "badge-danger"
    when 2
      badge_text = "Moderate"
      badge_class = "badge-warning"
    when 1
      badge_text = "Low"
      badge_class = "badge-info"
    else
      badge_text = "Null"
      badge_class = "badge-default"
    end

    render("information_types/shared/impact_level_badge", badge_text: badge_text, badge_class: badge_class)
  end

  def security_category_line(information_type)
    render("information_types/shared/security_category_line", information_type: information_type)
  end
end
