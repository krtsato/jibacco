# frozen_string_literal: true

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  # Insert CORS request headers for API responses
  allow do
    # Access-Control-Allow-Origin: Origin の内容をそのまま返す
    origins '*'

    # /main-api/* の URL に対してのみ CORS 対応
    # Access-Control-Allow-Headers: OPTIONS に対してのみ Access-Control-Request-Headers の内容そのまま返す
    # Access-Control-Allow-Methods: GET, POST, PUT, PATCH, DELETE, OPTIONS
    resource '/main-api/*', headers: :any, methods: %i[GET POST PUT PATCH DELETE OPTIONS]
  end
end
