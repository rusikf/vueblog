module RequestSpecHelper
  # Parse JSON response to ruby hash
  def json
    JSON.parse(response.body)
  end

  def json_attrs
    json['data']['attributes']
  end

  def headers
    { 'Content-Type' => 'application/vnd.api+json' }
  end
end

