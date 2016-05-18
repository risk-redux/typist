class InformationType < ActiveRecord::Base
  belongs_to :information_group
  belongs_to :information_class
end
