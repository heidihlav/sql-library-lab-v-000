def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
  FROM books
  WHERE books.series_id = 1
  ORDER BY books.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto
  FROM characters
  ORDER BY LENGTH(motto) DESC
  LIMIT 1;"
  # WHERE MAX(LENGTH(characters.motto)) FROM characters;
  # WHERE (LENGTH(characters.motto) - LENGTH(REPLACE(characters.motto, ' ', ''))
end

def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.species)
  FROM characters
  GROUP BY species
  ORDER BY species DESC
  LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM authors
  INNER JOIN subgenres
  ON authors.id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title
  FROM series
  INNER JOIN characters
  ON series.id = characters.series_id
  ORDER BY species DESC
  LIMIT 1;"
  # characters.species
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(*) character_books.character_id
  FROM characters_books
  INNER JOIN characters
  ON character_books.character_id = characters.id
  ORDER BY character_books.character_id DESC;"
  # GROUP BY character_books.character_id
end
