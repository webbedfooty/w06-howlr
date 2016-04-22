# Wolf.rb

# + name   must be present and unique
# + image
# + description

class Wolf < ActiveRecord::Base

  validates :name, presence: true, uniqueness: {case_sensitive: false}
  validates :image, presence: true
  validates :bio, presence: true

  has_many :howls

end
