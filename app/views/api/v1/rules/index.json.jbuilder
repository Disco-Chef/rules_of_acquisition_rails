# json.data do
#   json.rules do
#     @rules.each do |rule|
#       json.rule_number rule.rule_number
#       json.scripture rule.scripture
#     end
#   end
# end

json.data do
  json.rules do
    json.array! @rules do |rule|
      json.extract! rule, :rule_number, :scripture
    end
  end
end
