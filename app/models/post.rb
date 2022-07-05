class Post < ApplicationRecord
  has_many :comments
  has_one_attached :image  

  
  validates :title, presence: true, uniqueness: true

  validates :body, presence: true
  validate :cant_say_balderdash




 def cant_say_balderdash
  if body =~ /balderdash/
    errors.add :body, "Can't say that word!" # :base base is used if want a global error
  end
 end

end
