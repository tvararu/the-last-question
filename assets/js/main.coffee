js = ["../components/jmpress/jmpress.js"]

require js, ->
  $ ->
    console.log 'jquery engaged'
    
    $.jmpress "template", "auto",
      children: (idx) ->
        x: idx * 1000
        template: "auto"
    
    $("#jmpress").jmpress
      viewPort:
        height: 500
        width: 800
        maxScale: 1
      stepSelector: "section"
      animation:
        transitionDuration: "1000ms" # Length of animation
      mouse:
        clickSelects: false
      fullscreen: true
      beforeChange: (element, eventData) ->
        $("#little-arrow").css display: "none"
      idle: () ->
        $("#little-arrow").delay(5000).css display: "block"