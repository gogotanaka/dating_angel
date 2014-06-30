default: &default
  adapter: postgresql
  encoding: unicode
  pool: 5
  username: dating_angel
  timeout: 5000
  password:

development:
  <<: *default
  database: dating_angel_development

test:
  <<: *default
  database: dating_angel_test

production:
  <<: *default
  database: dating_angel_production
