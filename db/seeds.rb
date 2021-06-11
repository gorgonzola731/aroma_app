ADMIN_EMAIL = "admin@example.com"
ADMIN_PASSWORD = "password"

AdminUser.find_or_create_by!(email: ADMIN_EMAIL) do |admin_user|
  admin_user.password = ADMIN_PASSWORD
  admin_user.password_confirmation = ADMIN_PASSWORD
  puts "管理者の初期データインポートに成功しました。"
end
