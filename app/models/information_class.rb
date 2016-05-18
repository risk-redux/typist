class InformationClass < ActiveRecord::Base
  has_many :information_groups
  has_many :information_types, through: :information_groups
end
