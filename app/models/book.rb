class Book < ActiveRecord::Base
  #validates :title, :description, presence: true
  #validates :price, numericality: {greater_than_or_equal_to: 0.01}
  #validates :title, uniqueness:true       , allow_blank:true
  #validates :image_url, allow_blank:true, format: {
  #    with: /\.(gif|jpg|png|jpeg)\z/i,
  #    message: 'dsf дшоавдодшывода а'
  #}

  has_many :chapters
end
