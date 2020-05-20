user = User.create!(
  username: 'Mike Michaelson',
  about: 'Yes, my name is Michael Michaelson.',
  email: 'user@email.com',
  password: 'password',
  password_confirmation: 'password'
)

10.times do |n|
  username = Faker::TvShows::SiliconValley.unique.character
  about = Faker::TvShows::TheITCrowd.quote
  email = Faker::Internet.email
  password = 'password'
  password_confirmation = password
  User.create!(
    username: username,
    about: about,
    email: email,
    password: password,
    password_confirmation: password
  )
end

p "added #{User.count} users"

100.times do |n|
  title = Faker::Book.title
  body = Faker::Lorem.paragraph(sentence_count: 20, supplemental: true)
  user_id = User.pluck(:id).sample
  created_at = Faker::Time.between(from: DateTime.now - 1.year, to: DateTime.now)
  updated_at = Faker::Time.between(from: DateTime.now - 1.year, to: DateTime.now)
  Post.create!(
    title: title,
    body: body,
    user_id: user_id,
    created_at: created_at,
    updated_at: updated_at
  )
end

p "added #{Post.count} posts"

1000.times do |n|
  message = Faker::TvShows::Community.quotes
  post_id = Post.pluck(:id).sample
  user_id = User.pluck(:id).sample
  Comment.create!(
    message: message,
    post_id: post_id,
    user_id: user_id,
  )
end

p "added #{Comment.count} comments"
