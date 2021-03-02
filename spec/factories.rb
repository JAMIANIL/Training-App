FactoryBot.define do
    factory :team do
        name {"teamname"}
        strength {24}
      end

      factory :country do
        name {"countryname"}
        players_representing {24}
      end
end
