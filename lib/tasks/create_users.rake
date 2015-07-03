namespace :create_users do
  desc "TODO"
  task create_admins: :environment do
    User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)
  end

  desc "TODO"
  task create_users: :environment do
    20.times do |n|
    name  = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password = "password"
    User.create!(name:  name,
                 email: email,
                 password:              password,
                 password_confirmation: password)
    end
  end

  desc "TODO"
  task create_courses: :environment do
    5.times do |n|
      name = "Course-#{n+1}"
      description = Faker::Lorem.sentence(5)
      Course.create(name: name, description: description)
    end
  end

 end