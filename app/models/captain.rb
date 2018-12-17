class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    includes('boats').where(classifications: {name: 'Catamaran'})

  end
end
