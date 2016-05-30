module Quintype::Routes
  class Railtie < Rails::Railtie
    config.quintype_routes = ActiveSupport::OrderedOptions.new

    initializer "quintype-routes.register_routes" do |app|
      app.config.middleware.insert_before(Rack::Runtime, Rack::ReverseProxy) do
        api_host = app.config.quintype_routes.quintype_host

        raise "Please set config.quintype_routes.quintype_host" unless app.config.quintype_routes.quintype_host

        reverse_proxy '/api', api_host
        reverse_proxy '/login', api_host
        reverse_proxy '/auth.form', api_host
        reverse_proxy '/admin', api_host
        reverse_proxy '/shrubbery', api_host
        reverse_proxy '/sitemap', api_host
        reverse_proxy '/feed', api_host
        reverse_proxy '/rss-feed', api_host
        reverse_proxy '/stories.rss', api_host
        reverse_proxy '/news_sitemap.xml', api_host
      end
    end
  end
end
