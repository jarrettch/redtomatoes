json.set! :boxOfficeMovies do
  json.array! @box_office do |movie|
    json.title movie.title
    json.consensus movie.critics_consensus
    json.critics_score movie.ratings.critics_score
    json.audience_score movie.ratings.audience_score
    json.poster movie.posters.detailed
  end
end

json.set! :opening do
  json.array! @opening do |movie|
    json.title movie.title
    json.consensus movie.critics_consensus
    json.critics_score movie.ratings.critics_score
    json.audience_score movie.ratings.audience_score
  end    
end

json.set! :top_rentals do
  json.array! @top_rentals do |movie|
    json.title movie.title
    json.consensus movie.critics_consensus
    json.critics_score movie.ratings.critics_score
    json.audience_score movie.ratings.audience_score
  end
end

json.set! :new_releases do
  json.array! @new_releases do |movie|
    json.title movie.title
    json.consensus movie.critics_consensus
    json.critics_score movie.ratings.critics_score
    json.audience_score movie.ratings.audience_score   
  end
end