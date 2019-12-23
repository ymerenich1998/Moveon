# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

['rik@gmail.com', 'admin@example.com', 'dius@gmail.com'].each do |email|
  Worker.find_or_create_by(email: email) do |worker|
    worker.password = '123456'
    worker.full_name = email.split('@').first.to_s
    worker.password_confirmation
  end
end

[
  {
    name: 'Audi',
    models: %w[s1 s2]
  },
  {
    name: 'Honda',
    models: %w[s1 s2]
  }
].each do |mark|
  m = Mark.find_or_create_by(name: mark[:name])
  mark[:models].each do |model|
    Model.find_or_create_by(name: model, mark_id: m.id)
  end
end
