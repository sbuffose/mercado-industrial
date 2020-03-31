FactoryBot.define do
  factory :product do
    association :owner, factory: :user
    industry
    sequence(:title) { |n| "Title #{n}" }
    sequence(:description) { |n| "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam minima quam debitis neque, nisi, quos vitae tenetur dolor aspernatur deserunt facilis vel provident qui culpa voluptatibus, nulla mollitia! Culpa, saepe! #{n}" }
    status { rand(0..3) }
    target { 0 }
    condition { rand(0..4) }
    currency { rand(0..1) }
    price { [0, rand(1000..9999)].sample }
    address { "San Martin de Tours 2908, CABA, Buenos Aires" }
    age { condition.zero? ? 0 : rand(1..10) }
    pick_up { true }
    phone_number { owner.phone_number }
    email { owner.email }
    city { "Buenos Aires" }
    comment { [nil, "comment"].sample }
    expires_at { rand(20..30).days.from_now }

    trait :donate do
      target { 1 }
      price { 0 }
    end

    trait :recycle do
      target { 2 }
    end

  end
end
