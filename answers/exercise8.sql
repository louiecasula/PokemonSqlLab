-- What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT name "Pokemon" FROM pokemons
       JOIN pokemon_trainer ON pokemons.id = pokemon_trainer.pokemon_id
       WHERE pokemon_trainer.trainerID = "303";