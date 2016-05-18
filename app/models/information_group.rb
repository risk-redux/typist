class InformationGroup < ActiveRecord::Base
  belongs_to :information_class
  has_many :information_types
end
