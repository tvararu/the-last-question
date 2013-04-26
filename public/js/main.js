(function() {
  var js;

  js = ["http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"];

  require(js, function() {
    return $(function() {
      return console.log('hello jquery');
    });
  });

}).call(this);
