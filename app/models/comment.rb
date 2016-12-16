class Comment < ActiveRecord::Base
  belongs_to :customer
  
  validates :body,length: {maximum: 200 }, presence: true
   
  validates :customer_id, presence: true
end