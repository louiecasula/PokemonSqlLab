-- How many pokemon only belong to one trainer and no other?
SELECT COUNT(*) "Pokemon Owned by 1 Trainer"
       FROM (
             SELECT pokemon_id FROM pokemon_trainer
             GROUP BY pokemon_id
             HAVING COUNT(pokemon_id) = 1
             ) p;