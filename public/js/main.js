(function() {
  var js;

  js = ["http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js", "../components/jmpress/jmpress.js"];

  require(js, function() {
    return $(function() {
      console.log('jquery engaged');
      $.jmpress("template", "auto", {
        children: function(idx) {
          return {
            x: idx * 1000,
            template: "auto"
          };
        }
      });
      return $("#jmpress").jmpress({
        stepSelector: "section"
      });
    });
  });

}).call(this);
