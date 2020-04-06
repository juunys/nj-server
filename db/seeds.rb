# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserRole.create(name: 'Usuário', query_name: 'user')
UserRole.create(name: 'Admin', query_name: 'admin')

StatusUser.create(name: 'Ativo', query_name: 'active')

User.create(id: 1, first_name: 'Mary', last_name: 'Jane', email: 'admin@nanajun.com', password: '123', user_role_id: 2, status_user_id: 1)
