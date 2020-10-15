Rule.destroy_all

base_url = "http://rulesofacquisitionnode.herokuapp.com/api/v1/rules/"

(1..286).to_a.each do |counter|
  base_url
  rule_json = JSON.parse(RestClient.post(base_url, {"rule_number" => counter.to_s}.to_json))
  p Rule.create!(rule_number: rule_json["data"]["rule_number"].to_i, scripture: rule_json["data"]["scripture"])
end
