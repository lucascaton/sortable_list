# encoding: utf-8

Kernel.puts 'Creating users...'

users = [
  { name: 'Lucas', position: 1 },
  { name: 'Aline', position: 2 },
  { name: 'Louis', position: 3 },
  { name: 'Viktor', position: 4 },
  { name: 'Dayana', position: 5 }
]

users.each { |user| User.find_or_create_by_name(user) }

Kernel.puts 'Done.'
