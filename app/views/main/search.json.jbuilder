json.movies do
  json.array!(@movies) do |movie|

    json.name movie.city
    json.url movie_path(movie)
  end
end




json.movies do
  json.array!(@directors) do |movie|

    json.name movie.name
    json.url movie_path(movie)
  end
end
