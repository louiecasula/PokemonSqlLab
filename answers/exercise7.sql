-- What is Rufflet's secondary type?
SELECT pokemons.name "Pokemon", types.name "Secondary Type" FROM pokemons
       JOIN types ON pokemons.secondary_type = types.id
       WHERE pokemons.name = "Rufflet";