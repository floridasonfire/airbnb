FactoryGirl.define do
  factory(:user) do
    username('NewUser')
    password('12345678')
    password_confirmation('12345678')
    email('NewUser@somewhere.com')
  end
end
