# Howl.rb

# + text
# + image
# + likes

class Wolf < ActiveRecord::Base

  validates :text
  validates :image
  validates :likes

  belongs_to :wolves

end
