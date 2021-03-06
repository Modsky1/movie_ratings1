class Movie < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :year
  validates_presence_of :genre

  has_many :cast_members
  has_many :actors, through: :cast_members

  belongs_to :genre
  belongs_to :studio



  def self.search(query)
    # Replace this with the appropriate ActiveRecord calls...
    all.where("title iLIKE '%#{query}%' OR synopsis iLIKE '%#{query}%'")
  end

  def self.highest_rated(count)
    # Replace this with the appropriate ActiveRecord calls...
    all.where("rating IS NOT NULL").order(rating: :desc).last(count)
  end

  def self.lowest_rated(count)
    # Replace this with the appropriate ActiveRecord calls...
    all.order(:rating).first(count)
  end

  def self.most_recent(count)
    # Replace this with the appropriate ActiveRecord calls...
    all.order(year: :desc).last(count)
  end
end
