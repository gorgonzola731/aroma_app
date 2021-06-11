ADMIN_EMAIL = "admin@example.com".freeze
ADMIN_PASSWORD = "password".freeze

AdminUser.find_or_create_by!(email: ADMIN_EMAIL) do |admin_user|
  admin_user.password = ADMIN_PASSWORD
  admin_user.password_confirmation = ADMIN_PASSWORD
end
