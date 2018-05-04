# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

base_url = 'http://res.cloudinary.com/sawatskeda10/image/upload/'

projects = ['BlueChip', 'ReduxTube']
proj_image = ['v1525177089/bc_dkfloc.gif', 'v1525052410/rt_v4zxte.gif']

# tech = { 'JavaScript': 'v1522761437/javascript_b28lzh.png',
#          'React': 'v1522761437/react_wdsukh.png',
#          'Redux': 'v1522761604/redux_ef5nyt.png',
#          'Ruby': 'v1523409763/ruby_wfhcff.png',
#          'Rails': 'v1522761437/rails_sydwpm.png',
#          'CoffeScript': 'v1522761982/coffee_uwvb0d.png',
#          'PostgreSQL': 'v1522761437/postgresql_jkueat.png',
#          'jQuery': 'v1522761437/jquery_kamagb.png',
#          'Git': 'v1522761437/git_eghrws.png',
#          'CSS': 'v1522761437/css_okaqwz.png',
#          'HTML5': 'v1522761437/HTML5_yt9z5i.png',
#          'RSpec': 'v1522761437/rspec_akzu2f.png' }

 techs = [ 'Redux', 'React', 'Ruby', 'Rails', 'CoffeScript', 'PostgreSQL',
          'jQuery', 'Git', 'CSS', 'HTML5', 'RSpec']
 tech_icons = ['v1522761604/redux_ef5nyt.png',
               'v1522761437/react_wdsukh.png', 'v1523409763/ruby_wfhcff.png', 'v1522761437/rails_sydwpm.png',
               'v1522761982/coffee_uwvb0d.png', 'v1522761437/postgresql_jkueat.png',
               'v1522761437/jquery_kamagb.png', 'v1522761437/git_eghrws.png',
               'v1522761437/css_okaqwz.png', 'v1522761437/HTML5_yt9z5i.png',
               'v1522761437/rspec_akzu2f.png']

for i in 0..1 do
  Project.create!(title: projects[i], description: 'temp')
end

for i in 0..10 do
  Technology.create!(name: techs[i], icon: base_url + tech_icons[i])
end

[4, 1, 2, 6, 9, 10].each do |tech_index|
  Project.first.technologies << Technology.find(tech_index)
end

[1, 2, 7, 9, 10].each do |tech_index|
  Project.find(2).technologies << Technology.find(tech_index)
end

Project.first.update!(description: "A web app for competing against your friends in fantasy stock leagues. Up-to-the-minute stock quotes and in depth data make you feel like you're trading in the real market!",
                      git_url: "https://github.com/david-sawatske/BlueChip",
                      live_url: "http://www.blue-chip.sawatske.com")

Project.find(2).update!(description: "This web app provides a quick way to create a YouTube playlist.",
                        git_url: "https://github.com/david-sawatske/ReduxTube",
                        live_url: "http://www.redux-tube.sawatske.com")
User.create!(email: 'tester@ex.com', password: 'password', name: 'One Tester', roles: 'site_admin')
