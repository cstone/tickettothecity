# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


admin = Admin.create([{email: 'admin@admin.com', password: 'admin123', password_confirmation: 'admin123'}])

site_title = DynamicContent.create([{title: 'Site Title', key: 'site_title', value: 'Ticket To The City'}])
site_name = DynamicContent.create([{title: 'Site Name', key: 'site_name', value: 'Ticket To The City'}])
site_address = DynamicContent.create([{title: 'Site Address', key: 'site_address', value: '123 Main Street'}])
site_city = DynamicContent.create([{title: 'Site City', key: 'site_city', value: 'Dallas'}])
site_state = DynamicContent.create([{title: 'Site State', key: 'site_state', value: 'Texas'}])
site_zip = DynamicContent.create([{title: 'Site Zip', key: 'site_zip', value: '75206'}])
site_phone = DynamicContent.create([{title: 'Site Phone', key: 'site_phone', value: '(555) 555-5555'}])
site_description = DynamicContent.create([{title: 'Site Description', key: 'site_description', value: 'Ut eu nulla eget massa blandit eleifend vel sedis lacus. Sed at viverra nulla. Fusce vel adipisci odio. Phasellus commodo, mauris eget pharetra scelerisque, est justo lacinia tortor.'}])
site_email = DynamicContent.create([{title: 'Site Email', key: 'site_email', value: 'tonya@tickettothecity.com'}])
site_footer_copyright = DynamicContent.create([{title: 'Site Copyright', key: 'footer_copyright', value: 'Copyright &copy;2014 TicketToTheCity.com
'}])
