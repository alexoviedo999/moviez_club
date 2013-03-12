# == Schema Information
#
# Table name: clubs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  user_id    :integer
#  movie_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Club < ActiveRecord::Base
  attr_accessible :movie_id, :user_id
  belongs_to :user
  belongs_to :movie
end
