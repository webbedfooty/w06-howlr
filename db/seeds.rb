# Put your seed data in here. This should be a series of .create! statements for
# each of your relevant models.
#
# You'll run it with rake db:seed
#
# For example:
#
# Insect.create!(name: "Fuzzy Mantis", description: "Really Fierce")
Wolf.create!(name: "Wolfy McWolferson",image: "image link goes here", bio: "I like big wolves and I cannot lie")
Howl.create!(text: "What you talkin' bout Wolf!", wolf_id: "1")
