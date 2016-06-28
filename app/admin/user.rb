ActiveAdmin.register User do

  permit_params :name,:login,:password_digest,:sex,:height,:weight,:body_type

  index do
    column "name",:name
    column "login",:login
    column "password_digest",:password_digest
    column "sex",:sex
    column "height",:height
    column "weight",:weight
    column "body_type",:body_type
    actions
  end

  form do |f|
    f.inputs User do
      f.input :name
      f.input :login
      f.input :password_digest
      f.input :sex
      f.input :height
      f.input :weight
      f.input :body_type
      f.actions
    end
  end

  show do |b|
    attributes_table do
      row :name
      row :login
      row :password_digest
      row :sex
      row :height
      row :weight
      row :body_type
    end
      active_admin_comments
  end

  end

  # 検索
  ActiveAdmin.register User do |u|
      filter :name, :login => 'name & loginで検索'
  end
