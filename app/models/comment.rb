class Comment < ActiveRecord::Base
  belongs_to :customer
  
  validates :body,length: {maximum: 20 }, presence: true
  validates :customer_id, presence: true
end
