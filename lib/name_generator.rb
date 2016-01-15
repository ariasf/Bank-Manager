module NameGenerator
	def random_first_name
		%w(Oliver Jack Harry Jacob Charlie Thomas Oscar William James George Alfie Joshua 
		Noah Ethan Muhammad Archie Leo Henry Joseph Samuel Riley Daniel Mohammed 
		Alexander Max Lucas Mason Logan Isaac Benjamin Dylan Jake Edward Finley 
		Freddie Harrison Tyler Sebastian Zachary Adam Theo Jayden Arthur Toby Luke 
		Lewis Matthew Harvey Harley David Ryan Tommy Michael Reuben Nathan Blake Mohammad 
		Jenson Bobby Luca Charles Frankie Dexter Kai Alex Connor Liam Jamie Elijah Stanley 
		Louie Jude Callum Hugo Leon Elliot Louis Theodore Gabriel Ollie Aaron Frederick 
		Evan Elliott Owen Teddy Finlay Caleb Ibrahim Ronnie Felix Aiden Cameron Austin 
		Kian Rory Seth Robert Albert Sonny Amelia Olivia Emily Ava Isla Jessica Poppy Isabella Sophie Mia Ruby Lily 
		Grace Evie Sophia Ella Scarlett Chloe Isabelle Freya Charlotte Sienna Daisy 
		Phoebe Millie Eva Alice Lucy Florence Sofia Layla Lola Holly Imogen Molly Matilda 
		Lilly Rosie Elizabeth Erin Maisie Lexi Ellie Hannah Evelyn Abigail Elsie Summer Megan 
		Jasmine Maya Amelie Lacey Willow Emma Bella Eleanor Esme Eliza Georgia Harriet Gracie 
		Annabelle Emilia Amber Ivy Brooke Rose Anna Zara Leah Mollie Martha Faith Hollie Amy 
		Bethany Violet Katie Maryam Francesca Julia Maria Darcey Isabel Tilly Maddison Victoria 
		Isobel Niamh Skye Madison Darcy Aisha Beatrice Sarah Zoe Paige Heidi Lydia).sample
	end
	def random_last_name
		%w(SMITH JOHNSON WILLIAMS BROWN JONES MILLER DAVIS GARCIA RODRIGUEZ WILSON MARTINEZ 
		ANDERSON TAYLOR THOMAS HERNANDEZ MOORE MARTIN JACKSON THOMPSON WHITE LOPEZ LEE 
		GONZALEZ HARRIS CLARK LEWIS ROBINSON WALKER PEREZ HALL YOUNG ALLEN SANCHEZ WRIGHT 
		KING SCOTT GREEN BAKER ADAMS NELSON HILL RAMIREZ CAMPBELL MITCHELL ROBERTS CARTER 
		PHILLIPS EVANS TURNER TORRES PARKER COLLINS EDWARDS STEWART FLORES MORRIS NGUYEN 
		MURPHY RIVERA COOK ROGERS MORGAN PETERSON COOPER REED BAILEY BELL GOMEZ KELLY HOWARD 
		WARD COX DIAZ RICHARDSON WOOD WATSON BROOKS BENNETT GRAY JAMES REYES CRUZ HUGHES 
		PRICE MYERS LONG FOSTER SANDERS ROSS MORALES POWELL SULLIVAN RUSSELL ORTIZ JENKINS 
		GUTIERREZ PERRY BUTLER BARNES FISHER HENDERSON COLEMAN SIMMONS PATTERSON JORDAN 
		REYNOLDS HAMILTON GRAHAM KIM GONZALES ALEXANDER RAMOS WALLACE GRIFFIN WEST COLE 
		HAYES CHAVEZ GIBSON BRYANT ELLIS STEVENS MURRAY FORD MARSHALL OWENS MCDONALD HARRISON 
		RUIZ KENNEDY WELLS ALVAREZ WOODS MENDOZA CASTILLO OLSON WEBB WASHINGTON TUCKER FREEMAN 
		BURNS HENRY VASQUEZ SNYDER SIMPSON CRAWFORD JIMENEZ PORTER MASON SHAW GORDON WAGNER 
		HUNTER ROMERO HICKS DIXON HUNT PALMER ROBERTSON BLACK HOLMES STONE MEYER BOYD MILLS 
		WARREN FOX ROSE RICE MORENO SCHMIDT PATEL FERGUSON NICHOLS HERRERA MEDINA RYAN FERNANDEZ 
		WEAVER DANIELS).sample
	end
	def random_full_name
		random_first_name.titleize + " " + random_last_name.titleize
	end
end