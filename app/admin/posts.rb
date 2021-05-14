ActiveAdmin.register Post do
  permit_params :title, :aroma, :content, :user_id, :image
end
