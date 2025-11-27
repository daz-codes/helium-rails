# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "rubymonkey", to: "https://cdn.jsdelivr.net/gh/daz-codes/rubymonkey/index.js"
pin "helium", to: "https://cdn.jsdelivr.net/gh/daz-codes/helium@6095f83/helium.js"
pin_all_from "app/javascript/helium_modules", under: "helium_modules"
