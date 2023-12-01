-- How many pokemon have a secondary type?
SELECT COUNT(name) FROM pokemons WHERE secondary_type IS NOT NULL;