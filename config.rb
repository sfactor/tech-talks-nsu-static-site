###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (https://middlemanapp.com/advanced/dynamic_pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# configure :development do
#   activate :livereload
# end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end
helpers do
require 'date'
        def russian_date (str_date, add_year=true)
                
                begin
                        date = Date.parse(str_date)
                rescue
                        return str_date
                end

                res = date.day.to_s + " "

                case date.month
                        when 1
                        res += "января"
                        when 2
                        res += "февраля"
                        when 3
                        res += "марта"
                        when 4
                        res += "апреля"
                        when 5
                        res += "мая"
                        when 6
                        res += "июня"
                        when 7
                        res += "июля"
                        when 8
                        res += "августа"
                        when 9
                        res += "сентября"
                        when 10
                        res += "октября"
                        when 11
                        res += "ноября"
                        when 12
                        res += "декабря"
                end

                if add_year
                        res += " "
                        res += date.year.to_s
                end

                return res
end
end
set :css_dir, 'css'

set :js_dir, 'cs'

set :images_dir, 'img'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
