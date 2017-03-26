{
  "name": "dummyauth",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "author": "",
  "license": "ISC",
  "devDependencies": {
    "express": "^4.14.0"
  }
}
/srv/object-drive-ui-compose # cat dockers/dummy/
Dockerfile         chm_drive          me                 package.json       run.sh             server.express.js
/srv/object-drive-ui-compose # cat dockers/dummy/server.express.js 
(function(express, join){
    "use strict";
    return express()
        .use(express.static(join("/", "public")))
        .listen(24852)
        }(
          require("express"),
          require("path").join
          ));
