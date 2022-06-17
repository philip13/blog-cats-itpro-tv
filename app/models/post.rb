class Post < ApplicationRecord
  has_many :comments
  
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" } #, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
  validates :title, presence: true, uniqueness: true

  validates :body, presence: true
  validate :cant_say_balderdash




 def cant_say_balderdash
  if body =~ /balderdash/
    error.add :body, "Can't say that word!" # :base base is used if want a global error
  end
 end

end
