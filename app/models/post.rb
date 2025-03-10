class Post < ApplicationRecord
  validates :title, length: { minimum: 2 }
  validates :title,:description, presence: true

  before_save do
    self.title = self.title.capitalize
  end

end
