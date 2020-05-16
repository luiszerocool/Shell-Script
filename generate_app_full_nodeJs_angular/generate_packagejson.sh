#!/bin/bash

#Package.json
package='{
  "name": "nodejs-mysql-authentication",
  "version": "1.0.0",
  "description": "nodejs login with jwt token",
  "main": "server.js",
  "scripts": {
    "test": "node server.js",
    "dev": "nodemon server.js"
  },
  "keywords": [
    "nodejs",
    "jwt",
    "passport",
    "express"
  ],
  "author": "Arjun Araneta",
  "license": "ISC",
  "dependencies": {
    "body-parser": "^1.17.2",
    "cors": "^2.8.4",
    "express": "^4.16.3",
    "jsonwebtoken": "^7.4.2",
    "mongodb": "^3.1.6",
    "mongoose": "^5.2.15",
    "mysql": "^2.14.1",
    "mysql2": "^1.6.1",
    "sequelize": "^4.38.0"
  },
  "devDependencies": {
    "nodemon": "^1.18.3"
  }
}
'
echo "$package" > ./_API_NodeJS-Generated/package.json
echo 'package.json generado correctamente!'

