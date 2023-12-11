FactoryBot.define do
  factory :campground do
    name { "Cape Perpetua Campground" }
    overview { "From steep cliffs to rolling hills, and soft sand dunes to verdant forests, Cape Perpetua Campground has got access to every blissful nature escape you could possibly need, plus some. Such as tide pools, which, just, yes. Drinking water, flush toilets, picnic tables, and campfire rings complete this dreamy locale, which spans wide enough to host 37 tent, auto, and trailer sites, including 1 groupe site, and 37 RV sites. Take a long hike or chill right at your temporary home for your whole stay. Either way, you’re guaranteed a rejuvenating time. Here’s the <a href=\"http://www.fs.usda.gov/recarea/siuslaw/recreation/recarea/?recid=42273&amp;actid=29\" target=\"_blank\" rel=\"nofollow\">campground’s website</a> so you can get a handle on when this sweet place is open to campers!" }
    state { "Oregon" }
    city { "Yachats" }
    cover_photo_url { "https://img.hipcamp.com/image/upload/c_fill,f_auto,g_auto,h_900,q_60,w_2040/v1430097775/campground-photos/tvlw1lbddoithfcvrxmd.jpg" }
    contributed_photos do
      [
        "https://img.hipcamp.com/image/upload/c_fill,f_auto,g_auto,h_900,q_60,w_2040/v1430097775/campground-photos/tvlw1lbddoithfcvrxmd.jpg",
        "https://img.hipcamp.com/image/upload/c_fill,f_auto,g_auto,h_900,q_60,w_2040/v1432156074/campground-photos/xmdo3hpcfm7q8bjmqo7f.jpg"
      ]
    end

    trait :not_viewed do
      last_viewed_at { nil }
    end
      
    trait :viewed do
      last_viewed_at { Time.current }
    end
  end
end
