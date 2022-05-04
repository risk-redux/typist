// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

$(document).ready(function() {
    $('tr[data-link]').click(function() {
      const href = $(this).attr('data-link');
      if (href) {
        window.location = href;
      }
    });
  });