50.times do |n|
  title = Faker::Book.title
  body = Faker::Lorem.sentences(number: 30)
  Post.create!(
    title: title,
    body: body
  )
end

p "added #{Post.count} posts"

user = User.create!(email: 'user@email.com', password: 'password', password_confirmation: 'password')

p "added #{User.count} users"
