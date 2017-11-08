# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions
require 'sass-globbing'

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :sprockets
sprockets.append_path File.join(root, "bower_components")
sprockets.append_path File.join(root, "node_modules")


helpers do
  def replace_link
    charset = %w{ 2 3 4 6 7 9 A C D E F G H J K M N P Q R T V W X Y Z}
    string = 'http://replace.com/' << (0...16).map{ charset.to_a[rand(charset.size)] }.join
    return string
  end
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript
# end
