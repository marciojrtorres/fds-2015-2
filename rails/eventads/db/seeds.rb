# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Evento.create(titulo:'Semana Acadêmica IFRS',
  resumo: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed gravida dictum eros ut laoreet. Pellentesque sit amet magna dapibus, fringilla sapien vel, varius nisi. Sed blandit erat tincidunt felis euismod, at tincidunt nibh accumsan. Cras suscipit elementum auctor. Integer lacinia sapien eu tellus ultrices tristique.',
  data:Time.new(2015, 10, 26, 19, 0, 0),
  local: 'Alfredo Huch, 475 - IFRS - Anfiteatro')

Evento.create(titulo:'BrazilJS',
  resumo: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed gravida dictum eros ut laoreet. Pellentesque sit amet magna dapibus, fringilla sapien vel, varius nisi. Sed blandit erat tincidunt felis euismod, at tincidunt nibh accumsan. Cras suscipit elementum auctor. Integer lacinia sapien eu tellus ultrices tristique.',
  data:Time.new(2016, 8, 16, 10, 0, 0),
  local: 'Teatro do Bourbon Country - Porto Alegre')

Evento.create(titulo:'Front in POA',
  resumo: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed gravida dictum eros ut laoreet. Pellentesque sit amet magna dapibus, fringilla sapien vel, varius nisi. Sed blandit erat tincidunt felis euismod, at tincidunt nibh accumsan. Cras suscipit elementum auctor. Integer lacinia sapien eu tellus ultrices tristique.',
  data:Time.new(2015, 11, 14, 10, 0, 0),
  local: 'UniRitter - Rua Orfanotrófio, 515 - Alto Teresópolis - POA')
