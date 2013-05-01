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
        height: 640
        width: 840
        maxScale: 1
      stepSelector: "section"
      animation:
        transitionDuration: "1000ms" # Length of animation
      mouse:
        clickSelects: false
      fullscreen: true
      notSupportedClass: 'no-jmpress'
      beforeChange: (element, eventData) ->
        $("#little-arrow").css display: "none"
      idle: () ->
        $("#little-arrow").css display: "block"