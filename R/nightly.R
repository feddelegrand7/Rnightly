

nightly <- function(trigElement, bodyColor = "#282828", txtColor = "#f5f5f5", inpTxtColor = "#f5f5f5", inpBgColor = "#313131"){


  tags$script(HTML(glue::glue(

    "

var nightModeConfig = {{
  body: '{bodyColor}',
  texts: '{textColor}',
  inputs: {{
    color: '{inpColor}',
    backgroundColor: '{inpBgColor}',
  }}
}};

var Nightly = new Nightly(nightModeConfig, true);


    document.getElementById('{trigElement}').addEventListener('click', function(){{
    Nightly.toggle();
  }});

                 "



  )))














}

