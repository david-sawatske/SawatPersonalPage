# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


base_url = 'http://res.cloudinary.com/sawatskeda10/image/upload/'

projects = ['BlueChip', 'ReduxWeather', 'ReactTube']
proj_image = [base_url + 'v1522785928/bc_uq29ib.gif', base_url + 'v1522861793/weatber_lrv2tn.png', base_url + 'v1522861793/tube_d8gncz.png']

techs = ['jQuery', 'Rails', 'Redux', 'React' ]
tech_icons = ['v1522761437/jquery_kamagb.png', 'v1522761437/rails_sydwpm.png', 'v1522761604/redux_ef5nyt.png', 'v1522761437/react_wdsukh.png']

for i in 0..2 do
  Project.create!(title: projects[i], description: i, image: proj_image[i])
end

for i in 0..3 do
  Technology.create!(name: techs[i], icon: base_url + tech_icons[i])
end

Project.all.each do |proj|
  for i in 1..3 do
    i = rand(1..4)
    proj.technologies << Technology.find(i)
  end
end
