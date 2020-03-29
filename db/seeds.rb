author1 = Author.create(first_name: "Maria", last_name: "Owens")
author2 = Author.create(first_name: "Tara", last_name: "Westover")
# author = Author.create(first_name: "Dan", last_name: "Bader")

book1 = Book.create(
  author: author1, 
  title: 'Where the Crawdads Sing', 
  isbn: "9781472154668",
  price: 22.99,
  short_description: "For years, rumors of the 'Marsh Girl' have haunted Barkley Cove, a quiet town on the North Carolina coast. So in late 1969, when handsome Chase Andrews is found dead, the locals immediately suspect Kya Clark, the so-called Marsh Girl. But Kya is not what they say. Sensitive and intelligent, she has survived for years alone in the marsh that she calls home, finding friends in the gulls and lessons in the sand. Then the time comes when she yearns to be touched and loved. When two young men from town become intrigued by her wild beauty, Kya opens herself to a new life - until the unthinkable happens.",
)

book3 = Book.create(
  author: author1, 
  title: 'Cry of the Kalahari', 
  isbn: "9780395647806",
  price: 23.62,
  short_description: "Carrying little more than a change of clothes and a pair of binoculars, two young Americans, Mark and Delia Owens, caught a plane to Africa, bought a thirdhand Land Rover, and drove deep into the Kalahari Desert. There they lived for seven years, in an unexplored area with no roads, no people, and no source of water for thousands of square miles. In this vast wilderness the Owenses began their zoology research, working along animals that had never before been exposed to humans.",
)

book3 = Book.create(
  author: author2, 
  title: 'Educated : A Memoir', 
  isbn: "9780399590504",
  price: 29.01,
  short_description: "Born to survivalists in the mountains of Idaho, Tara Westover was seventeen the first time she set foot in a classroom. Her family was so isolated from mainstream society that there was no one to ensure the children received an education, and no one to intervene when one of Tara's older brothers became violent. When another brother got himself into college, Tara decided to try a new kind of life. Her quest for knowledge transformed her, taking her over oceans and across continents, to Harvard and to Cambridge University. Only then would she wonder if she'd traveled too far, if there was still a way home.",
)



