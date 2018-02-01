class City < ApplicationRecord
  has_many :districts

  def user_ids
    users_ary = []
    self.districts.each do |d|
      d.users.each do |u|
        users_ary << u.id
      end
    end
    return users_ary
  end

  def self.exist_user
    districts = District.exist_user
    city_hash = {}
    districts.each do |d|
      if city_hash[d.city.id].nil?
        city_hash[d.city.id] = d.users.count
      else
        city_hash[d.city.id] += d.users.count
      end
    end
    city_hash = city_hash.sort_by {|k,v|v}.reverse.to_h
    return city_hash
    # city_ary.uniq
    # cities = City.where(id: city_ary)
    # return cities
  end


end
