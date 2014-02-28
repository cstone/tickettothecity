class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_dynamic_content

  def after_sign_in_path_for(admin)
    admin_events_path
  end

  def after_sign_out_path_for(admin)
    root_path
  end


  def get_dynamic_content
    @site_title = DynamicContent.get_value(:site_title)
    @site_name = DynamicContent.get_value(:site_name)
    @site_address = DynamicContent.get_value(:site_address)
    @site_city = DynamicContent.get_value(:site_city)
    @site_state = DynamicContent.get_value(:site_state)
    @site_phone = DynamicContent.get_value(:site_phone)
    @site_email = DynamicContent.get_value(:site_email)
    @site_description = DynamicContent.get_value(:site_description)
    @footer_copyright = DynamicContent.get_value(:footer_copyright)
    @home_title = DynamicContent.get_value(:home_title)
    @home_content = DynamicContent.get_value(:home_content)
    @banners = Banner.all
    @home_featured_restaurants = Restaurant.featured.all(order: "RANDOM()", limit: 4)
    @footer_city_guide = CityGuide.first
  end
end
