class InformationType < ActiveRecord::Base
  belongs_to :information_group, optional: true
  belongs_to :information_class, optional: true

  def self.search(search)
    @hits = []

    if search && search.length > 0
      information_types = InformationType.all

      regexp_search = Regexp.new(search, Regexp::IGNORECASE)

      @hits = information_types.select{ |row| regexp_search.match(row.name) || regexp_search.match(row.type_code) || regexp_search.match(row.description) }
    else
      @hits = []
    end

    return @hits
  end
end
