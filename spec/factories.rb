Factory.define :user do |user|
  user.name               "Ren Pollock"
  user.email              "willpol1@umbc.edu"
  user.password           "secret"
  user.password_confirmation  "secret"
end

Factory.sequence :name do |n|
  "Person #{n}"
end
Factory.sequence :email do |n|
  "person-#{n}@example.com"
end
