class User < ActiveRecord::Base
end
# == Schema Information
#
# Table name: users
#
#  id            :integer(4)      not null, primary key
#  login         :string(255)
#  nick          :string(255)
#  password      :string(255)
#  address       :string(1024)
#  age           :integer(4)
#  gender        :string(255)
#  community_id  :integer(4)
#  imsi          :string(255)
#  imei          :string(255)
#  clienttype    :string(255)
#  devicemodel   :string(255)
#  screensize    :string(255)
#  rank          :string(255)
#  answers_count :integer(4)
#  portraitlink  :string(1024)
#  created_at    :datetime
#  updated_at    :datetime
#

