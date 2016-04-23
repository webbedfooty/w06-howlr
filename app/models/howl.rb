# Howl.rb

# + text
# + image
# + likes

class Howl < ActiveRecord::Base

  validates :text, presence: true
  validates :wolf, presence: true


  belongs_to :wolf

end
