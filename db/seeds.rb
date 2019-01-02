#Movie seeds
detectivepikachu = Movie.find_or_create_by(name: "Detective Pikachu")
lionking = Movie.find_or_create_by(name: "Lion King")
marypoppins = Movie.find_or_create_by(name: "Mary Poppins")


#Actor seeds
ryanreynolds = Actor.find_or_create_by(name: "Ryan Reynolds")
justicesmith = Actor.find_or_create_by(name: "Justice Smith")
beyonce = Actor.find_or_create_by(name: "Beyoncé")
emilyblunt = Actor.find_or_create_by(name: "Emily Blunt")

#Movie Actor seeds
detectivepikachu.actors << ryanreynolds
detectivepikachu.actors << justicesmith
lionking.actors << beyonce
marypoppins.actors << emilyblunt
