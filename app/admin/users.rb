# coding: utf-8
ActiveAdmin.register User do
  menu :label => "用户信息"

  index do
    [:id, :login, :nick, :address].each {|col| column col}
    column "portrait" do |user|
      raw "<img src=\"#{user.id}/portrait\" alt=\"portrait\">"
    end
    default_actions

  end

  member_action :portrait do
    @user = User.find params[:id]
    render :text=> Base64.decode64(@user.portrait)
  end



end

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
