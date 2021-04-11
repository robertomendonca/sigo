if user_signed_in?
  json.user do
    json.(current_user, :id, :email, :auditor_role, :controller_role, :superuser_role)
  end
  
end