# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


addresses = Address.create([
  {ip_block: '1.2.0.0/16', ip_address: '1.2.3.4', device: 'device1'},
  {ip_block: '1.2.0.0/16', ip_address: '1.2.3.6', device: 'device2'},
  {ip_block: '1.2.0.0/16', ip_address: '1.2.128.1', device: 'device3'},
  {ip_block: '1.2.0.0/16', ip_address: '1.2.128.2', device: 'device4'}
  ])