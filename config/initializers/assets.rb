# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.precompile += %w( style.css )
Rails.application.config.assets.precompile += %w( scripts.js jquery.appear.min.js jquery.countTo.js jquery.countdown.min.js )
Rails.application.config.assets.precompile += %w( settings.css jquery.themepunch.tools.min.js jquery.parallax-1.1.3.js jquery.magnific-popup.min.js)
Rails.application.config.assets.precompile += %w( jquery-ui.min.css jquery-ui.min.js owl.carousel.js jquery.themepunch.revolution.min.js)
Rails.application.config.assets.precompile += %w( bootstrap.min.css bootstrap.min.js SmoothScroll.js jquery.countdown.min.js jquery-1.11.0.min.js)
Rails.application.config.assets.precompile += %w( font-lotusicon.css owl.carousel.css magnific-popup.css bootstrap-select.min.css isotope.pkgd.min.js bootstrap-select.js)

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
