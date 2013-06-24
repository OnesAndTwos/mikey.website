require 'sinatra'
require 'sinatra/assetpack'
require 'require_all'

class MikesWebsite < Sinatra::Application
  enable :sessions
  register Sinatra::AssetPack

  set :public_folder => File.join(root, 'assets')
  set :views => File.join(root, 'views')

  assets {
    serve '/js',     from: 'assets/js'
    serve '/css',    from: 'assets/css'
    serve '/images', from: 'assets/images'
    serve '/vendor', from: 'assets/vendor'

    js :html5shiv, '/js/html5shiv.js', %w(/vendor/html5shiv/*.js)
    js :vendor, '/js/vendor.js', %w(/vendor/jquery/*.js /vendor/bootstrap/js/*.js)
    js :app, '/js/app.js', %w(/js/**/*.js)

    css :vendor, '/css/vendor.css', %w(/vendor/bootstrap/css/bootstrap.css)
    css :app, '/css/app.css', %w(/css/**/*.css)
    css :responsive, '/css/responsive.css', %w(/vendor/bootstrap/css/bootstrap-responsive.css)

    js_compression  :jsmin    # :jsmin | :yui | :closure | :uglify
    css_compression :simple   # :simple | :sass | :yui | :sqwish
  }

end

application_root = File.expand_path(File.dirname(__FILE__))
require_all File.join(application_root, 'routes')