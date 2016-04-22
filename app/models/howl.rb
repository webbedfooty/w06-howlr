# Howl.rb

# + text
# + image
# + likes

class Howl < ActiveRecord::Base

  validates :text, presence: true
  validates :image
  validates :wolf_id, presence: true
  validates :likes

  belongs_to :wolves

end
