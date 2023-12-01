-- What are all the primary types and how many pokemon have that type?
SELECT types.name "Primary Type", COUNT(pokemons.name) "Total Pokemon" FROM pokemons
       JOIN types ON pokemons.primary_type = types.id
       GROUP BY types.name;