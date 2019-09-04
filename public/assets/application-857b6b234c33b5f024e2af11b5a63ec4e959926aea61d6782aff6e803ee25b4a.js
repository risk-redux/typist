(function() {
  $(document).ready(function() {
    $('tr[data-link]').click(function() {
      var href;
      href = $(this).attr('data-link');
      if (href) {
        window.location = href;
      }
    });
  });

}).call(this);
