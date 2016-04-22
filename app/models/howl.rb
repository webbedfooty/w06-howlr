# Howl.rb

# + text
# + image
# + likes

class Howl < ActiveRecord::Base

  validates :text, presence: true
  validates :wolf_id, presence: true


  belongs_to :wolves

end
