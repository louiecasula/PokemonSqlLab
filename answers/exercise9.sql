-- How many pokemon have a secondary type Poison
SELECT types.name "Secondary Type", COUNT(pokemons.name) "Total Pokemon" FROM pokemons
       JOIN types ON pokemons.secondary_type = types.id
       WHERE pokemons.secondary_type = (SELECT id FROM types WHERE name = "Poison")
       GROUP BY types.name;