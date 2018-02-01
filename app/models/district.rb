class District < ApplicationRecord
  belongs_to :city
  has_many :users

  def self.exist_user
    district_ary = []
    User.all.each do |u|
      district_ary << u.district_id
    end
    district_ary.uniq
    return self.where(id: district_ary)
  end
end
