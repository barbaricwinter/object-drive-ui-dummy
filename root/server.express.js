(function(express, join){
    "use strict";
    return express()
        .use(express.static(join("/", "public")))
        .listen(24852)
        }(
          require("express"),
          require("path").join
          ));
