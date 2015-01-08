# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'
CSV.foreach(Rails.root.join("db/seeds.csv"), headers:true) do |row|
  Product.find_or_create_by(name: row[0], price: row[1], photo: row[2], length: row[3], width: row[4], depth: row[5], quantity: row[6], year: row[7], make: row[8], model: row[9], color: row[10], description: row[11])
end
