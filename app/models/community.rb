class Community < ActiveRecord::Base
  geocoded_by :address
  #after_validation :geocode, :if => :address_changed? #fetch coordinates
  def get_x_y
    Geocoder.coordinates(address)
  end
#after_validation :reverse_geocode # fetch address

#每一个request请求都自动带上了location这个method

#Point.near('中国上海浦东新区福山路380号') 其实是在本地库里面查出
#Geocoder.coordinates('中国上海浦东新区福山路380号') 获得地址的经纬度
#根据near等search到的结果，有distance 和bearing两个属性自动被加上
end

# == Schema Information
#
# Table name: communities
#
#  id            :integer(4)      not null, primary key
#  communityname :string(255)
#  x             :float
#  y             :float
#  town          :string(255)
#  district      :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  address       :string(255)
#

