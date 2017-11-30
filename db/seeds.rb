# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Genre.create!([
	{name: "Action"}, 
	{name: "Adventure"}, 
	{name: "Casual"}, 
	{name: "Indie"}, 
	{name: "Massively Multiplayer"}, 
	{name: "Racing"}, 
	{name: "RPG"},
	{name: "Simulation"}, 
	{name: "Strategy"}, 
	{name: "Sports"}])


Game.create!([
	{
	name: "Counter-Strike",
	description:"Play the world's number 1 online action game. Engage in an incredibly realistic brand of terrorist warfare in this wildly popular team-based game. " +
				"Ally with teammates to complete strategic missions. Take out enemy sites. Rescue hostages. Your role affects your team's success. Your team's success affects your role.",
	price: 10.99,
	image: Rails.root.join("public/uploads/game/image/Counter_Strike.jpg").open,
	release_date: Date.parse("2000/11/1")
	},
	{
	name: "Counter-Strike: Source",
	description:"THE NEXT INSTALLMENT OF THE WORLD'S # 1 ONLINE ACTION GAME "+
				"Counter-Strike: Source blends Counter-Strike's award-winning teamplay action with the advanced technology of Source™ technology. "+
				"Featuring state of the art graphics, all new sounds, and introducing physics, Counter-Strike: Source is a must-have for every action gamer.",
	price: 22.79,
	image: Rails.root.join("public/uploads/game/image/Counter_Strike_Source.jpg").open,
	release_date: Date.parse("2004/11/1")
	},
	{
	name: "Counter-Strike: Global Offensive",
	description:"Counter-Strike: Global Offensive (CS: GO) will expand upon the team-based action gameplay that it pioneered when it was launched 14 years ago. "+
				"CS: GO features new maps, characters, and weapons and delivers updated versions of the classic CS content (de_dust2, etc.).",
	price: 16.99,
	image: Rails.root.join("public/uploads/game/image/Counter_Strike_Global_Offensive.jpg").open,
	release_date: Date.parse("2012/08/21")
	},
	{
	name: "Assassin's Creed® Origins",
	description:"ASSASSIN’S CREED® ORIGINS IS A NEW BEGINNING Ancient Egypt, a land of majesty and intrigue, is disappearing in a ruthless fight for power.",
	price: 79.99,
	image: Rails.root.join("public/uploads/game/image/Assassins_Creed_Origins.jpg").open,
	release_date: Date.parse("2017/10/26")
	},
	{
	name: "Stick Fight: The Game",
	description:"Stick Fight is a physics-based couch/online fighting game where you battle it out as the iconic stick figures from the golden age of the internet.",
	price: 5.49,
	image: Rails.root.join("public/uploads/game/image/Stick_Fight_The_Game.jpg").open,
	release_date: Date.parse("2017/09/28")
	},
	{
	name: "Cuphead",
	description:"Cuphead is a classic run and gun action game heavily focused on boss battles. "+
				"Inspired by cartoons of the 1930s, the visuals and audio are painstakingly created with the same techniques of the era, "+
				"i.e. traditional hand drawn cel animation, watercolor backgrounds, and original jazz recordings.",
	price: 21.99,
	image: Rails.root.join("public/uploads/game/image/Cuphead.jpg").open,
	release_date: Date.parse("2017/09/29")
	},
	{
	name: "PLAYERUNKNOWN'S BATTLEGROUNDS",
	description:"PLAYERUNKNOWN'S BATTLEGROUNDS is a last-man-standing shooter being developed with community feedback. "+
				"Players must fight to locate weapons and supplies in a massive 8x8 km island to be the lone survivor. This is BATTLE ROYALE.",
	price: 36.99,
	image: Rails.root.join("public/uploads/game/image/PLAYERUNKNOWNS_BATTLEGROUNDS.jpg").open,
	release_date: Date.parse("2017/03/23")
	},
	{
	name: "Rocket League®",
	description:"Soccer meets driving once again in the long-awaited, physics-based multiplayer-focused sequel to Supersonic Acrobatic Rocket-Powered Battle-Cars! "+
				"Choose a variety of high-flying vehicles equipped with huge rocket boosters to score amazing aerial goals and pull-off incredible game-changing saves!",
	price: 21.99,
	image: Rails.root.join("public/uploads/game/image/Rocket_League.jpg").open,
	release_date: Date.parse("2017/07/07")
	},
	{
	name: "Football Manager 2018",
	description:"Football Manager 2018 is the latest release in the best-selling, smash-hit series. "+
				"Putting you in the hot seat of any football club in more than 50 countries across the world, Football Manager 2018 is the closest thing to doing the job for real.",
	price: 59.99,
	image: Rails.root.join("public/uploads/game/image/Football_Manager_2018.jpg").open,
	release_date: Date.parse("2017/11/09")
	},
	{
	name: "Divinity: Original Sin 2",
	description:"The eagerly anticipated sequel to the award-winning RPG. "+
				"Gather your party. Master deep, tactical combat. Join up to 3 other players - but know that only one of you will have the chance to become a God.",
	price: 54.99,
	image: Rails.root.join("public/uploads/game/image/Divinity_Original_Sin_2.jpg").open,
	release_date: Date.parse("2017/11/09")
	},
	])

GameGenre.create!([
	{
		game: Game.find_by(name: "Counter-Strike"),
		genre: Genre.find_by(name: "Action")
	},
	{
		game: Game.find_by(name: "Counter-Strike: Source"),
		genre: Genre.find_by(name: "Action")
	},
	{
		game: Game.find_by(name: "Counter-Strike: Global Offensive"),
		genre: Genre.find_by(name: "Action")
	},
	{
		game: Game.find_by(name: "Assassin's Creed® Origins"),
		genre: Genre.find_by(name: "Action")
	},
	{
		game: Game.find_by(name: "Assassin's Creed® Origins"),
		genre: Genre.find_by(name: "Adventure")
	},
	{
		game: Game.find_by(name: "Assassin's Creed® Origins"),
		genre: Genre.find_by(name: "RPG")
	},
	{
		game: Game.find_by(name: "Stick Fight: The Game"),
		genre: Genre.find_by(name: "Action")
	},
	{
		game: Game.find_by(name: "Stick Fight: The Game"),
		genre: Genre.find_by(name: "Casual")
	},
	{
		game: Game.find_by(name: "Stick Fight: The Game"),
		genre: Genre.find_by(name: "Indie")
	},
	{
		game: Game.find_by(name: "Cuphead"),
		genre: Genre.find_by(name: "Action")
	},
	{
		game: Game.find_by(name: "Cuphead"),
		genre: Genre.find_by(name: "Indie")
	},
	{
		game: Game.find_by(name: "PLAYERUNKNOWN'S BATTLEGROUNDS"),
		genre: Genre.find_by(name: "Action")
	},
	{
		game: Game.find_by(name: "PLAYERUNKNOWN'S BATTLEGROUNDS"),
		genre: Genre.find_by(name: "Adventure")
	},
	{
		game: Game.find_by(name: "PLAYERUNKNOWN'S BATTLEGROUNDS"),
		genre: Genre.find_by(name: "Massively Multiplayer")
	},
	{
		game: Game.find_by(name: "Rocket League®"),
		genre: Genre.find_by(name: "Action")
	},
	{
		game: Game.find_by(name: "Rocket League®"),
		genre: Genre.find_by(name: "Indie")
	},
	{
		game: Game.find_by(name: "Rocket League®"),
		genre: Genre.find_by(name: "Racing")
	},
	{
		game: Game.find_by(name: "Rocket League®"),
		genre: Genre.find_by(name: "Sports")
	},
	{
		game: Game.find_by(name: "Football Manager 2018"),
		genre: Genre.find_by(name: "Simulation")
	},
	{
		game: Game.find_by(name: "Football Manager 2018"),
		genre: Genre.find_by(name: "Sports")
	},
	{
		game: Game.find_by(name: "Divinity: Original Sin 2"),
		genre: Genre.find_by(name: "Adventure")
	},
	{
		game: Game.find_by(name: "Divinity: Original Sin 2"),
		genre: Genre.find_by(name: "RPG")
	},
	{
		game: Game.find_by(name: "Divinity: Original Sin 2"),
		genre: Genre.find_by(name: "Strategy")
	},
	])