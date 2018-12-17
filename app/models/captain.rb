class Captain < ActiveRecord::Base
  has_many :boats
  has_many :classifications, through: :boats

  def self.catamaran_operators
    includes(boats: :classifications).where(classifications: {name: 'Catamaran'})
  end

  def self.sailors
    where(boat: :sailboat)
  end
end
