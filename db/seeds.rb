# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
hisuica = User.create!(
  username: 'hisuica',
  email: 'hisuica@gmail.com'
)

Schedule.create!(
  [
    {
      title: 'First',
      description: 'This is First Schedule',
      priority: 'low',
      severity: 'low',
      completed: 'false',
      user: hisuica
    },
    {
      title: 'Second',
      description: 'This is Second Schedule',
      priority: 'high',
      severity: 'low',
      completed: 'false',
      user: hisuica
    },
    {
      title: 'Third',
      description: 'This is Third Schedule',
      priority: 'low',
      severity: 'high',
      completed: 'false',
      user: hisuica
    },
    {
      title: 'Fourth',
      description: 'This is Fourth Schedule',
      priority: 'high',
      severity: 'high',
      completed: 'true',
      user: hisuica
    }
  ]
)