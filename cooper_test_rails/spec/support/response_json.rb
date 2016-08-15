module ResponseJSON
  def response_json
    JSON.parse(response_body)
  end
end
