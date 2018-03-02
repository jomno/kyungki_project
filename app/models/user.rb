class User < ApplicationRecord
  belongs_to :district, optional: true
  validates :name, :district_id, :phone, :birth, presence: true
  def district_count
    users_ary = []
    self.district.users.each do |u|
      users_ary << u.id
    end
    return users_ary.index(self.id)+1
  end
end
