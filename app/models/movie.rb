# == Schema Information
#
# Table name: movies
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  year       :integer
#  released   :integer
#  genre      :string(255)
#  director   :string(255)
#  writer     :string(255)
#  actors     :string(255)
#  plot       :string(255)
#  poster     :string(255)
#  imdbRating :integer
#  imdbVotes  :integer
#  imdbID     :string(255)
#  response   :string(255)
#  rank       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Movie < ActiveRecord::Base
  attr_accessible :name
  has_many :clubs
  has_many :users, :through => :clubs

end
