#!/bin/sh

echo "# REGENERATE package-lock.json"

npm install
npm audit fix
node -e "fs.writeFileSync('./tmp.package-lock.json', JSON.stringify(JSON.parse(fs.readFileSync('./package-lock.json'))))"
rm ./package-lock.json
mv ./tmp.package-lock.json ./package-lock.json
git add ./package.json ./package-lock.json
git commit -m "npm package refresh with fixes including locking procedure at publish of new vesion  on now at $(node -e "console.log('UNIXUSAT'+Date.now())")"
