# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Category.create(name: 'Kategorija 1', color: "#196319")
#Category.create(name: 'Kategorija 2', color: "#004C80")
#Category.create(name: 'Kategorija 3', color: "#E6B800")
#Category.create(name: 'Kategorija 4', color: "#914791")

Category.where(color: "#196319").first.update(name: 'College')
Category.where(color: "#004C80").first.update(name: 'Free time')
Category.where(color: "#E6B800").first.update(name: 'Job')
Category.where(color: "#914791").first.update(name: 'Other')

Note.where(category_id: nil).destroy_all