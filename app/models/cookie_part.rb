class CookiePart < ActiveRecord::Base
  validates_uniqueness_of :part, :scope => :victim_id

  belongs_to :victim
end
