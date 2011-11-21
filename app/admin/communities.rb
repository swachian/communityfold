# coding: utf-8
require 'csv'
ActiveAdmin.register Community do
  menu :label => "社区"
  filter :communityname
  filter :address
  
  collection_action :import_csv, :method => :post do
    Community.connection.execute("delete from communities ")
    CSV.foreach(params[:file].tempfile) do |r|
      if r[0] =~ /\d+/
        c = Community.create(:id2=>r[0], :district=>r[1],:town => r[2] , :communityname=>r[3], :address=>r[5], :x=>r[6], :y=>r[7])
        logger.info c
      end
      
    end
    Community.connection.execute("update communities set id = id2 ")
    redirect_to :action => :index, :notice => "CSV imported successfully!"
  end
  
  collection_action :import_csv_g, :method => :get do

  
  end
  
  action_item :only => :index do
    link_to('上传csv', import_csv_g_admin_communities_path, :method =>:get)
  end

end
