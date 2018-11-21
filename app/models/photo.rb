# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  caption    :text
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Photo < ApplicationRecord
    
    validates :image, presence: true
    
    has_many :likes, :dependent => :destroy
    has_many :comments, :dependent => :destroy
    belongs_to :user
    has_many :fans, :through => :likes, :source => :user
    
end
