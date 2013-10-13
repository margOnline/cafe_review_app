FactoryGirl.define do

  factory :cafe do
    id 1
    name 'Jen\'s Bakery'
    description 'Fresh from the oven'
  end

  factory :review do

    trait :excellent_post do 
      post 'excellent review'
    end

    trait :good_post do 
      post 'very good review'
    end
    
    trait :rating_4 do 
      rating 4
    end
    
    trait :rating_5 do 
      rating 5
    end
  end

end