# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.delete_all
City.create(:id => 1, :name=>'Istanbul', :prev => '', :status=>true)
City.create(:id => 2, :name=>'Baku', :prev => 'Istanbul', :status=>true)
City.create(:id => 3, :name=>'Phuket', :prev => 'Baku', :status=>false)
City.create(:id => 4, :name=>'Kyoto', :prev => 'Phuket', :status=>true)
City.create(:id => 5, :name=>'Melbourne', :prev => 'Kyoto', :status=>false)
