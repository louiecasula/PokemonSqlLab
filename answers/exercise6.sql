-- What is each pokemon's primary type?
SELECT pokemons.name "Pokemon", types.name "Type" FROM pokemons
       JOIN types ON pokemons.primary_type = types.id;