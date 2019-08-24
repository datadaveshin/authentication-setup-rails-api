Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "http//localhost:8000"
    resource "*", headers: :any, methods:[:get, :post, :patch, :delete, :options, :head], credentials: true
  end

  allow do
    origins Rails.application.credentials[:production][:domain]
    resource "*", headers: :any, methods:[:get, :post, :patch, :delete, :options, :head], credentials: true
  end

end
