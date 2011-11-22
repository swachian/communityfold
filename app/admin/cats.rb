# coding: utf-8
ActiveAdmin.register Cat do
  menu :label=>"分类表"
  
  index do
    [:id, :name, :cat_id].each {|col| column col}
    default_actions
  end
  
  form do |f|
    f.inputs "编辑" do
      f.input :name
      f.input :cat_id
    end
    f.buttons
  end
end
