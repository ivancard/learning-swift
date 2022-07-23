import Foundation

struct Movie {
	let title: String
	let description: String
	let imgMovie: String
	let rateMovie: Float
	let genre: Genres
	
	public static let movieList = [
		
		// Action
		Movie(
			"Thor: Love and Thunder",
			description: "Thor's retirement is interrupted by a galactic killer known as Gorr the God Butcher, who seeks the extinction of the gods. To combat the threat, Thor enlists the help of King Valkyrie, Korg and ex-girlfriend Jane Foster, who - to Thor's surprise - inexplicably wields his magical hammer, Mjolnir, as the Mighty Thor. Together, they embark upon a harrowing cosmic adventure to uncover the mystery of the God Butcher's vengeance and stop him before it's too late.",
			genre: .action,
			imgMovie: "imgThor",
			rateMovie: 4.5),
		Movie(
			"The Adam project",
			description: "Adam Reed, age 12 and still grieving his father's sudden death the year before, walks into his garage one night to find a wounded pilot hiding there. This mysterious pilot turns out to be the older version of himself from the future, where time travel is in its infancy. He has risked everything to come back in time on a secret mission.",
			genre: .action,
			imgMovie: "imgAdamProject",
			rateMovie: 3.0),
		Movie(
			"Dr Strange: In the multiverse of madness",
			description: "Following the events of Spider-Man No Way Home, Doctor Strange unwittingly casts a forbidden spell that accidentally opens up the multiverse. With help from Wong and Scarlet Witch, Strange confronts various versions of himself as well as teaming up with the young America Chavez while traveling through various realities and working to restore reality as he knows it. Along the way, Strange and his allies realize they must take on a powerful new adversary who seeks to take over the multiverse.",
			genre: .action,
			imgMovie: "imgDrStrange",
			rateMovie: 4.0),
		Movie(
			"Memory",
			description: "Alex Lewis (Liam Neeson) is an expert assassin with a reputation for discreet precision. Caught in a moral quagmire, Alex refuses to complete a job that violates his code and must quickly hunt down and kill the people who hired him before they and FBI agent Vincent Serra (Guy Pearce) find him first. Alex is built for revenge but, with a memory that is beginning to falter, he is forced to question his every action, blurring the line between right and wrong.",
			genre: .action,
			imgMovie: "imgMemory",
			rateMovie: 3.5),
		Movie(
			"Uncharted",
			description: "Street-smart Nathan Drake (Tom Holland) is recruited by seasoned treasure hunter Victor \"Sully\" Sullivan (Mark Wahlberg) to recover a fortune amassed by Ferdinand Magellan and lost 500 years ago by the House of Moncada. What starts as a heist job for the duo becomes a globe-trotting, white-knuckle race to reach the prize before the ruthless Santiago Moncada (Antonio Banderas), who believes he and his family are the rightful heirs.",
			genre: .action,
			imgMovie: "imgUncharted",
			rateMovie: 2.5),
		
		// Horror
		
		Movie(
			"Midsommar",
			description: "Dani (Florence Pugh) and Christian (Jack Reynor) are a young American couple with a relationship on the brink of falling apart. But after a family tragedy keeps them together, Christian invites a grieving Dani to join him and his friends on a trip to a once-in-a-lifetime midsummer festival in a remote Swedish village. What begins as a carefree summer holiday in the North European land of eternal sunlight takes a sinister turn when the insular villagers invite their guests to partake in festivities that render the pastoral paradise increasingly unnerving and viscerally disturbing.",
			genre: .horror,
			imgMovie: "imgMidsommar",
			rateMovie: 3.5),
		Movie(
			"Halloween kills",
			description: "And the Halloween night when Michael Myers returned isn't over yet. Minutes after Laurie Strode (Curtis), her daughter Karen (Judy Greer) and granddaughter Allyson (Andi Matichak) left masked monster Michael Myers caged and burning in Laurie's basement, Laurie is rushed to the hospital with life-threatening injuries, believing she finally killed her lifelong tormentor. But when Michael manages to free himself from Laurie's trap, his ritual bloodbath resumes. ",
			genre: .horror,
			imgMovie: "imgHalloween",
			rateMovie: 2.0),
		Movie(
			"Hellraiser",
			description: "When Kirsty's father, Larry, and stepmother, Julia, move into Larry's childhood home, Kirsty and her boyfriend take a room nearby. Unfortunately for all involved, Larry's house is already occupied: before the family's arrival, Larry's disreputable brother, Frank, used a supernatural puzzle box to summon a gang of other-dimensional demon sadists. Now, Frank requires a series of blood sacrifices to escape the clutches of Pinhead and the cenobites.",
			genre: .horror,
			imgMovie: "imgHellraiser",
			rateMovie: 2.5),
		Movie(
			"Scream",
			description: "Like the original movie 25 years ago, a cute teenage girl is at home alone when the phone rings. A man wants to play a game with her. With the threat of killing her best friend, Tara's forced to play along. She barely survives the ghost face masked intruder's stabbing. Her 5 year older sister, Sam(antha), who left home at 18 due to mental problems, Sam's boyfriend and Tara's high school friends visit her at the hospital.",
			genre: .horror,
			imgMovie: "imgScream",
			rateMovie: 2.0),
		Movie(
			"The chainsaw massacre",
			description: "Like the original movie 25 years ago, a cute teenage girl is at home alone when the phone rings. A man wants to play a game with her. With the threat of killing her best friend, Tara's forced to play along. She barely survives the ghost face masked intruder's stabbing. Her 5 year older sister, Sam(antha), who left home at 18 due to mental problems, Sam's boyfriend and Tara's high school friends visit her at the hospital.",
			genre: .horror,
			imgMovie: "imgTexasMassacre",
			rateMovie: 2.0),
		
		// Fantasy
		
		Movie(
			"Fantastic Beasts: The secrets of Dumbledore",
			description: "Professor Albus Dumbledore knows the powerful Dark wizard Gellert Grindelwald is moving to seize control of the wizarding world. Unable to stop him alone, he entrusts Magizoologist Newt Scamander to lead an intrepid team of wizards, witches and one brave Muggle baker on a dangerous mission, where they encounter old and new beasts and clash with Grindelwald's growing legion of followers. But with the stakes so high, how long can Dumbledore remain on the sidelines?",
			genre: .fantasy,
			imgMovie: "imgFantasticBeasts",
			rateMovie: 3.0),
		Movie(
			"Harry Potter: and the prisoner of Azkaban",
			description: "Harry Potter (Daniel Radcliffe) is having a tough time with his relatives (yet again). He runs away after using magic to inflate Uncle Vernon's (Richard Griffiths') sister Marge (Pam Ferris), who was being offensive towards Harry's parents. Initially scared for using magic outside the school, he is pleasantly surprised that he won't be penalized after all.",
			genre: .fantasy,
			imgMovie: "imgHarryPotter",
			rateMovie: 4.0),
		Movie(
			"The Hobbit",
			description: "After the Dragon leaves the Lonely Mountain, the people of Lake-town see a threat coming. Orcs, dwarves, elves and people prepare for war. Bilbo sees Thorin going mad and tries to help. Meanwhile, Gandalf is rescued from the Necromancer's prison and his rescuers realize who the Necromancer is.",
			genre: .fantasy,
			imgMovie: "imgHobbit",
			rateMovie: 4.0),
		Movie(
			"The Lord of the rings",
			description: "The final confrontation between the forces of good and evil fighting for control of the future of Middle-earth. Frodo and Sam reach Mordor in their quest to destroy the One Ring, while Aragorn leads the forces of good against Sauron's evil army at the stone city of Minas Tirith.",
			genre: .fantasy,
			imgMovie: "imgLotr",
			rateMovie: 4.5),
		Movie(
			"Valerian",
			description: "In the twenty-eighth century, space station Alpha is a city where beings from different planets live together exchanging their knowledge and culture. Peace is granted by a human force, including Major Valerian (Dane DeHaan) and his partner Sergeant Laureline (Cara Delevingne). They are assigned by the Defense Minister (Herbie Hancock) to retrieve the last species of converter in a dangerous mission.",
			genre: .fantasy,
			imgMovie: "imgValerian",
			rateMovie: 2.5),
		
		// Animation
		
		Movie(
			"Lightyear",
			description: "While spending years attempting to return home, marooned Space Ranger Buzz Lightyear encounters an army of ruthless robots commanded by Zurg who are attempting to steal his fuel source.",
			genre: .animation,
			imgMovie: "imgBuzz",
			rateMovie: 2.0),
		Movie(
			"Minions: The rise of Gru",
			description: "While spending years attempting to return home, marooned Space Ranger Buzz Lightyear encounters an army of ruthless robots commanded by Zurg who are attempting to steal his fuel source.",
			genre: .animation,
			imgMovie: "imgMinions",
			rateMovie: 3.5),
		Movie(
			"Turning Red",
			description: "Meilin (voice of Rosalie Chiang) is a confident, dorky 13-year-old torn between staying her mother's dutiful daughter and the chaos of adolescence. Her protective, if not slightly overbearing mother, Ming (voice of Sandra Oh), is never far from her daughter - an unfortunate reality for the teenager. And as if changes to her interests, relationships and body weren't enough, whenever she gets too excited (which is practically ALWAYS), she \"poofs\" into a giant red panda.",
			genre: .animation,
			imgMovie: "imgRed",
			rateMovie: 3.0),
		Movie(
			"The Sea beast",
			description: "In an era when terrifying beasts roamed the seas, monster hunters were celebrated heroes and none were more beloved than the great Jacob Holland. But when young Maisie Brumble stows away on his fabled ship, he's saddled with an unexpected ally. Together they embark on an epic journey into uncharted waters and make history.",
			genre: .animation,
			imgMovie: "imgSeaBeast",
			rateMovie: 2.5),
		Movie(
			"Sonic 2: The hedgehog",
			description: "After settling in Green Hills, Sonic is ready for more freedom, and Tom and Maddie agree to leave him home while they go on vacation. But, no sooner are they gone, when Dr. Robotnik comes back, this time with a new partner, Knuckles, in search for an emerald that has the power to both build and destroy civilizations.",
			genre: .animation,
			imgMovie: "imgSonic",
			rateMovie: 2.5),
	]
	
	init(_ title: String, description: String, genre: Genres, imgMovie: String, rateMovie: Float) {
		self.title = title
		self.description = description
		self.imgMovie = imgMovie
		self.rateMovie = rateMovie
		self.genre = genre
	}
}

enum Genres: String, CaseIterable {
	case horror = "Horror"
	case action = "Action"
	case fantasy = "Fantasy"
	case animation = "Animation"
}

