FactoryBot.define do
  factory :order_address do
    transient do
      address { Gimei.address }
    end
    token {"tok_abcdefghijk00000000000000000"}
    postcode {"123-1234"}
    prefecture_id { Faker::Number.between(from: 2, to: 48) }
    city { address.city.kanji }
    block { address.town.kanji }
    building {"建物名"}
    phone_number {"09012345678"}
  end
end
