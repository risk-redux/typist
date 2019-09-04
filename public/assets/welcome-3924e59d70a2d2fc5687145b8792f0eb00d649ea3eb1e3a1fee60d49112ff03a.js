(function() {
  var liveSearch, searchSub;

  searchSub = function() {
    var form, formData, url;
    $("#welcome").hide(1000);
    url = "/welcome";
    form = $("#big-search");
    formData = form.serialize();
    return $.get(url, formData, null, "script");
  };

  liveSearch = function() {
    var timer;
    timer = 0;
    return $("#big-search-field").bind("keyup", function() {
      clearTimeout(timer);
      return timer = setTimeout(searchSub, 200);
    });
  };

  $(document).ready(liveSearch);

  $(document).on('page:load', liveSearch);

}).call(this);
