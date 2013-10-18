require 'faker'

# create a few users
User.create :name => 'Drifting Wave',
            :email => 'dw@email.com',
            :password => 'password'

User.create :name => 'Shady Penguin',
            :email => 'sp@email.com',
            :password => 'password'

User.create :name => Faker::Name.name,
            :email => Faker::Internet.email,
            :password => 'password'


# create a few albums

Album.create :title => 'coyotes'
Album.create :title => 'fireflies'


# create a few photos

Dir.foreach("public/images/coyotes") do |filename|
 Photo.create :name => filename,
              :url => "public/images/coyotes/#{filename}",
              :album_id => 1,
              :user_id => 1
end

Dir.foreach("public/images/fireflies") do |filename|
 Photo.create :name => filename,
              :url => "public/images/fireflies/#{filename}",
              :album_id => 2,
              :user_id => 1
end

