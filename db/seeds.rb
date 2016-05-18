# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

ImpactLevel.delete_all
csv_text = File.read(Rails.root.join('db', 'seeds', 'impact_level.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  impact_level = ImpactLevel.new

  impact_level.impact_level = row['impact_level']
  impact_level.name = row['name']
  impact_level.description = row['description']

  impact_level.save

  puts "\tImpactLevel %s created." % [impact_level.name]
end
puts "%i ImpactLevel entries inserted" % [ImpactLevel.count]

SecurityObjective.delete_all
csv_text = File.read(Rails.root.join('db', 'seeds', 'security_objective.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  security_objective = SecurityObjective.new

  security_objective.name = row['name']
  security_objective.description = row['description']

  security_objective.save

  puts "\tSecurityObjective %s created." % [security_objective.name]
end
puts "%i SecurityObjective entries inserted" % [SecurityObjective.count]

InformationClass.delete_all
csv_text = File.read(Rails.root.join('db', 'seeds', 'information_class.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  information_class = InformationClass.new

  information_class.class_code = row['class_code']
  information_class.name = row['name']
  information_class.description = row['description']

  information_class.save

  puts "\tInformationClass %s created." % [information_class.name]
end
puts "%i InformationClass entries inserted" % [InformationClass.count]

InformationGroup.delete_all
csv_text = File.read(Rails.root.join('db', 'seeds', 'information_group.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  information_group = InformationGroup.new

  information_group.information_class_id = row['information_class_id']
  information_group.group_code = row['group_code']
  information_group.name = row['name']
  information_group.description = row['description']

  information_group.save

  puts "\tInformationGroup %s created." % [information_group.name]
end
puts "%i InformationGroup entries inserted" % [InformationGroup.count]

InformationType.delete_all
csv_text = File.read(Rails.root.join('db', 'seeds', 'information_type.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  information_type = InformationType.new

  information_type.information_group_id = row['information_group_id']
  information_type.type_code = row['type_code']
  information_type.name = row['name']
  information_type.description = row['description']
  information_type.confidentiality_impact_level = row['confidentiality_impact_level']
  information_type.integrity_impact_level = row['integrity_impact_level']
  information_type.availability_impact_level = row['availability_impact_level']
  information_type.confidentiality_impact_description = row['confidentiality_impact_description']
  information_type.integrity_impact_description = row['integrity_impact_description']
  information_type.availability_impact_description = row['availability_impact_description']

  information_type.save

  puts "\tInformationType %s created." % [information_type.name]
end
puts "%i InformationType entries inserted" % [InformationType.count]
