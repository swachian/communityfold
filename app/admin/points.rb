# coding: utf-8
ActiveAdmin.register Point do
  menu :label => "热点"
  
  index do
    [:id, :point_id, :cat, :rate, :ratecounts].each {|col| column col}
    default_actions
  end
  
  form do |f|
    f.inputs "编辑" do
      f.input :cat
      f.input :rate
      f.input :ratecounts
      f.input :point_id, :label=>"Point_id"
      #[:point_id, :cat, :rate, :ratecounts].each { |col| f.input col } 
    end
  end
  
end

#  id         :integer(4)      not null, primary key
#  point_id   :string(255)
#  cat        :integer(4)
#  rate       :float
#  ratecounts :integer(4)
#  created_at :datetime
#  updated_at :datetime