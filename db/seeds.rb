require 'faker'

5.times do
  name = Faker::JapaneseMedia::OnePiece.unique.character
  puts "User: #{name}"
  User.create(username: name,
              password: "password")
end

15.times do
  Message.create(body: Faker::JapaneseMedia::OnePiece.quote,
                 user_id: Faker::Number.within(range: 1..5))
end