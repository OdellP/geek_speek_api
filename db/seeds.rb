5.times do
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    username: Faker::Superhero.name
  )

  5.times do
    user.speeks.create(
      title: Faker::Lorem.sentence(word_count: 3),
      body: Faker::Lorem.paragraph(sentence_count: 5)
    )
  end
end
