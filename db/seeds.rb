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
    models: %w[A1 A2 A3 A4 A5 A6]
  },
  {
    name: 'Honda',
    models: %w[Civic]
  },
  {
    name: 'BMW',
    models: %w[M1 M2 M3 M4 M5 M6 M8 X3 X5]
  },
  {
    name: 'LADA',
    models: %w[2101 2102 2103 2104 2105 2106 2107 2108 2109 2116 2199]
  }
].each do |mark|
  m = Mark.find_or_create_by(name: mark[:name])
  mark[:models].each do |model|
    Model.find_or_create_by(name: model, mark_id: m.id)
  end
end

%w[
  name1
  name2
  name3
].each do |service|
  Service.find_or_create_by(name: service)
end

[
  {
    full_name: 'Vasya Pypkin',
    phone: "0999999999",
    address: "Minauska",
    desc: "Temp"
  },
  {
    full_name: 'name2',
    phone: "",
    address: "",
    desc: ""
  },
  {
    full_name: 'name1',
    phone: "",
    address: "",
    desc: ""
  },
].each do |customer|
  Customer.find_or_create_by(full_name: customer[:full_name],phone: customer[:phone],address: customer[:address], desc: customer[:desc])
end
