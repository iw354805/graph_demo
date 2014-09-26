json.array!(@questions) do |question|
  json.extract! question, :id, :title, :q_1, :q_1_count, :q_2, :q_2_count, :q_3, :q_3_count, :q_4, :q_4_count
  json.url question_url(question, format: :json)
end
