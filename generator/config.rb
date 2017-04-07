###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end

activate :livereload
activate :relative_assets
activate :directory_indexes
configure :build do
  set :http_prefix, '/RuslimOrg'
end

activate :deploy do |deploy|
  deploy.deploy_method = :git
  deploy.remote = 'https://github.com/inuritdino/RuslimOrg'
  deploy.branch = 'gh-pages'
  deploy.strategy = :force_push
end
