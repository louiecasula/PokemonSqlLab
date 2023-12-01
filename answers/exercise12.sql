-- Final report. I've sorted the trainers in descending order of average level for all pokemon in their party.
    -- This makes a "master table" with the specified columns from each table incorporated:
    SELECT pokemons.name "Pokemon Name", trainers.trainername "Trainer Name", pokemon_trainer.pokelevel "Level",
            ptype.name "Primary Type", stype.name "Secondary Type"
        FROM pokemons
        JOIN pokemon_trainer ON pokemon_trainer.pokemon_id = pokemons.id
        JOIN trainers ON trainers.trainerID = pokemon_trainer.trainerID
        JOIN types ptype ON pokemons.primary_type = ptype.id
        LEFT JOIN types stype ON pokemons.secondary_type = stype.id
    -- And this query sorts the trainers by average pokemon level:
    SELECT trainers.trainerID "ID", trainers.trainername "Trainer Name", AVG(pokemon_trainer.pokelevel) "Average Pokemon Level"
        FROM pokemon_trainer
        JOIN trainers ON trainers.trainerID = pokemon_trainer.trainerID
        GROUP BY ID
        ORDER BY AVG(pokemon_trainer.pokelevel) DESC;
    -- But now I'm struggling to combine the two tables... >_>