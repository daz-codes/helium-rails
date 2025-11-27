class Project < ApplicationRecord
  enum :stage, {
      development: "development",
      staging: "staging",
      preprod: "preprod",
      production: "production"
    }
end
