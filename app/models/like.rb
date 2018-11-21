# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  photo_id   :integer
#  user_id    :integer
#

class Like < ApplicationRecord
    
    validates :photo_id, :user_id, presence: true
    
    belongs_to :photo
    belongs_to :user
    
end
