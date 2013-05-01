(function() {
  var js;

  js = ["../components/jmpress/jmpress.js"];

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
        viewPort: {
          height: 500,
          width: 800,
          maxScale: 1
        },
        stepSelector: "section",
        animation: {
          transitionDuration: "1000ms"
        },
        mouse: {
          clickSelects: false
        }
      });
    });
  });

}).call(this);
