# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Contact.create!(
	first_name: "Marcel", 
	last_name: "Degas", 
	email: "marcel.degas@gmail.com",
	message: "This is a test" )

Blog.create!(
	title: "Welcome to the new VITAFIT website!", 
	content: "Hi everyone, I am so excited to announce our new Workout plans!
This week we start a new chapter in the story of VITAFIT, we are laughing our workout plans, that is much more than a conventional exercise guide, but also a coaching plan. 
What does that mean? Our goal here is to help you get in the best shape of your life, but also teach you and guide you trough the process of changing your habits so you can have a permanent change.
You will learn how to make smarter choices towards a healthier and longer life. Also, our plans are 100\% personalized and designed according to your body and fitness level.
One more exciting news: you will have access to our app, that you can download on your phone or tablet and take it with you anywhere, that way you can workout at home, at the gym, outdoors, etc.
Let us know if you have any questions about our programs and let\'s get you started!")
