FactoryBot.define do
  factory :user do
    transient do
      person { Gimei.name }
    end
    email { Faker::Internet.free_email }
    password = '1a' + Faker::Internet.password(min_length: 4, mix_case: true)
    password { password }
    password_confirmation { password }
    nickname { Faker::Name.name }
    last_name { person.last.kanji }
    first_name { person.first.kanji }
    last_name_kana { person.last.katakana }
    first_name_kana { person.first.katakana }
    birth_date { Faker::Date.in_date_period }
  end
end
