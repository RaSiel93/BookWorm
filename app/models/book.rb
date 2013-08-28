class Book < ActiveRecord::Base
  validates :title, :description, presence: true
  validates :title, uniqueness:true, allow_blank:true
  #validates :price, numericality: {greater_than_or_equal_to: 0}
  #validates :image_url, allow_blank:true, format: {
  #    with: /\.(gif|jpg|png|jpeg)\z/i,
  #    message: 'dsf дшоавдодшывода а'
  #}

  has_many :chapters
  has_one :category
end