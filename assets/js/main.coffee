js = ["http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js", "../components/jmpress/jmpress.js"]

require js, ->
  $ ->
    console.log 'jquery engaged'
    
    $.jmpress "template", "auto",
      children: (idx) ->
        x: idx * 1000
        template: "auto"
    
    $("#jmpress").jmpress
      stepSelector: "section"
    
    