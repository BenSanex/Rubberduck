# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


## Production Seeds
User.create(
	full_name: "Ben Sanecki",
	username: "Ben",
	email: "ben@rubberduck.com",
	password: "password",
	avatar: "http://i.imgur.com/Qp8v3rb.jpg",
	is_mentor: true
)
User.create(
	full_name: "Denny Jovic",
	username: "Denny",
	email: "denny@rubberduck.com",
	password: "password",
	avatar: "http://i.imgur.com/XxMNPRC.jpg",
	is_mentor: true
)
User.create(
	full_name: "Scott Southard",
	username: "Scott",
	email: "scott@rubberduck.com",
	password: "password",
	avatar: "http://i.imgur.com/REUjBuX.jpg?1",
	is_mentor: true
)

Skill.create(sub_type: "Ruby")
Skill.create(sub_type: "JavaScript")
Skill.create(sub_type: "Java")
Skill.create(sub_type: "C++")
Skill.create(sub_type: "Python")
Skill.create(sub_type: "C")
Skill.create(sub_type: "PHP")
Skill.create(sub_type: "Perl")
Skill.create(sub_type: "Objective-C")
Skill.create(sub_type: "SQL")
Skill.create(sub_type: "C#")
Skill.create(sub_type: "Go")

## Development Seeds
# 5.times do
# 	mentor = User.create(
# 		full_name: Faker::Name.name,
# 		username: Faker::Beer.hop,
# 		email: Faker::Internet.email,
# 		password: "password",
# 		avatar: Faker::Avatar.image,
# 		is_mentor: true
# 	)
# 	Expertise.create(
# 		mentor_id: mentor.id,
# 		skill_id: rand(1..12),
# 		level: rand(1..5)
# 	)
# end

# 5.times do
# 	User.create(
# 		full_name: Faker::Name.name,
# 		username: Faker::Beer.hop,
# 		email: Faker::Internet.email,
# 		password: "password",
# 		avatar: Faker::Avatar.image,
# 		is_mentor: false
# 	)
# end

30.times do
	question = Question.create(
		student_id: rand(7..11),
		mentor_id: rand(1..3),
		skill_id: rand(1..12),
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
