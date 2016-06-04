# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do 
	User.create(
		full_name: Faker::Name.name,
		username: Faker::Beer.hop,
		email: Faker::Internet.email,
		password: "password",
		avatar: Faker::Avatar.image,
		is_mentor: true
	)
end

5.times do 
	User.create(
		full_name: Faker::Name.name,
		username: Faker::Beer.hop,
		email: Faker::Internet.email,
		password: "password",
		avatar: Faker::Avatar.image,
		is_mentor: false
	)
end

50.times do
	question = Question.create(
		student_id: rand(6..10),
		mentor_id: rand(1..5),
		skills_id: 1,
		title: Faker::Lorem.sentence,
		content: Faker::Lorem.paragraph,
		solved?: true,
		tag: "hi"
	)
	Rating.create(
		number: rand(1..5),
		question_id: question.id
	)
end

Skill.create(sub_type: "Ruby")