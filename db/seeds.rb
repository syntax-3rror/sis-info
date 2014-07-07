# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin = User.new #user_id = 1

admin.role = 'admin'
admin.cargo = 'administrador'
admin.email = 'admin@hotmail.com'
admin.password = 'admin123'
admin.password_confirmation = 'admin123'
admin.save!

#usuarios
usuario1 = User.new #user_id = 2
usuario1.role = 'mesero'
usuario1.cargo = 'mesero'
usuario1.email = 'usuario1@hotmail.com'
usuario1.password = '12345678'
usuario1.password_confirmation = '12345678'
usuario1.save!