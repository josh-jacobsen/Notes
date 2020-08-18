# Node

Setting header limits on Node so WDS doens't blow up:

- `cmd`: `set NODE_OPTIONS "--max-http-header-size=15000" && npm run start`
- `powershell`: `$env:NODE_OPTIONS="--max-http-header-size=15000"; npm run start`
- `bash`: `NODE_OPTIONS="--max-http-header-size=15000" npm run start`

```
╭─josh@Joshs-MacBook-Pro  ~/Documents/work/wind-alerts  ‹containers*›
╰─$ npm run start:prod                                                                                                                                                           1 ↵

> wind-alerts@1.0.0 start:prod /Users/josh/Documents/work/wind-alerts
> webpack && node server/server.js

Hash: 26a1726840008cf7c55b
Version: webpack 1.13.1
Time: 20603ms
        Asset       Size  Chunks             Chunk Names
    bundle.js    1.62 MB       0  [emitted]  main
bundle.js.map    2.59 MB       0  [emitted]  main
   index.html  569 bytes          [emitted]
     main.css   42 bytes          [emitted]
    + 531 hidden modules
events.js:160
      throw er; // Unhandled 'error' event
      ^

Error: listen EADDRINUSE :::8080
    at Object.exports._errnoException (util.js:1012:11)
    at exports._exceptionWithHostPort (util.js:1035:20)
    at Server._listen2 (net.js:1252:14)
    at listen (net.js:1288:10)
    at Server.listen (net.js:1384:5)
    at EventEmitter.listen (/Users/josh/Documents/work/wind-alerts/node_modules/express/lib/application.js:617:24)
    at Object.<anonymous> (/Users/josh/Documents/work/wind-alerts/server/server.js:19:5)
    at Module._compile (module.js:541:32)
    at Object.Module._extensions..js (module.js:550:10)
    at Module.load (module.js:458:32)

npm ERR! Darwin 15.6.0
npm ERR! argv "/Users/josh/.nvm/versions/node/v6.3.1/bin/node" "/Users/josh/.nvm/versions/node/v6.3.1/bin/npm" "run" "start:prod"
npm ERR! node v6.3.1
npm ERR! npm  v3.10.3
npm ERR! code ELIFECYCLE
npm ERR! wind-alerts@1.0.0 start:prod: `webpack && node server/server.js`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the wind-alerts@1.0.0 start:prod script 'webpack && node server/server.js'.
npm ERR! Make sure you have the latest version of node.js and npm installed.
npm ERR! If you do, this is most likely a problem with the wind-alerts package,
npm ERR! not with npm itself.
npm ERR! Tell the author that this fails on your system:
npm ERR!     webpack && node server/server.js
npm ERR! You can get information on how to open an issue for this project with:
npm ERR!     npm bugs wind-alerts
npm ERR! Or if that isn't available, you can get their info via:
npm ERR!     npm owner ls wind-alerts
npm ERR! There is likely additional logging output above.

npm ERR! Please include the following file with any support request:
npm ERR!     /Users/josh/Documents/work/wind-alerts/npm-debug.log
```

Te above message is delivered when processes are still running (note the line about `Error: listen EADDRINUSE :::8080`

Run `$ ps aux | grep webpack` and `ps aux | grep node`

Follow this up with `kill $(ps aux | grep 'webpack' | awk '{print $2}')` and `kill $(ps aux | grep 'node' | awk '{print $2}')`
