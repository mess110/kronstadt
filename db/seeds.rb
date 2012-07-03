# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

RadioStation.create(name: "rock", url: "http://www.profm.ro/radio/profm_rock")
RadioStation.create(name: "classic rock", url: "http://www.profm.ro/radio/profm_classicrock")

q = Question.create(text: "What is the meaning of life?")
q.answers << Answer.create(text: "Food")
q.answers << Answer.create(text: "42", correct: true)
q.answers << Answer.create(text: "A recharger for a laptop")
q.answers << Answer.create(text: "Quatro fromaggi pizza with bacon and mushrooms")

q = Question.create(text: "In the 2nd century A.D., the Roman Empire reached its greatest extent under the Emperor Trajan. His army conquered a kingdom that had its capital at Sarmizegetusa, and many Romanians claim that their identity as a separate culture began when the Romans left and Daco-Roman easants and shepherds remained. What was this kingdom called?")
q.answers << Answer.create(text: "Dacia", correct: true)
q.answers << Answer.create(text: "Maramures")
q.answers << Answer.create(text: "Wallachia")
q.answers << Answer.create(text: "Moldavia")
