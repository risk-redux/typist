class InformationGroup < ActiveRecord::Base
  belongs_to :information_class, optional: true
  has_many :information_types
end
