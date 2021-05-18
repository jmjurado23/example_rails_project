puts '#####   Iniciando prueba    #####'
user_repository = Core::UserRepository.new
puts '- Repositorio de usuario generado'
user1 = user_repository.create({email: 'user1@email.com'})
user2 = user_repository.create({email: 'user2@email.com'})
puts '- Usuarios almacenados en base de datos'

invoice_repository = Ticketing::Invoice::EntityRepository.new
puts '- Repositorio de facturas generado'
invoice1 = invoice_repository.create(amount: 1_000, owner_id: user1.id)
invoice2 = invoice_repository.create(amount: 2_000, owner_id: user1.id)
invoice3 = invoice_repository.create(amount: 3_000, owner_id: user2.id)
invoice3 = invoice_repository.create(amount: 4_000, owner_id: user2.id)
puts '- Factura almacenada en base de datos'

user_json = Core::BasicUserRepresentation.new(user_repository.all)
puts '- Representación de usuario generada'
puts user_json.as_json
