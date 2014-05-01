json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :exercise_type, :day, :month, :year, :time_used
  json.url exercise_url(exercise, format: :json)
end
