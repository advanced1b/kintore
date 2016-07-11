FactoryGirl.define do
  factory :admin do

    name do
      index = 1
      loop do
        name = "name#{index}"
        index += 1
        break name unless Admin.exists?(name: name)
      end
    end

    login do
      index = 1
      loop do
        login = "login#{index}"
        index += 1
        break login unless Admin.exists?(login: login)
      end
    end
    password { "password" }
  end
end
