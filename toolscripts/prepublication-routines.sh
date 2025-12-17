#!/bin/sh

uv sync
uv lock
git add uv.lock pyproject.toml
git commit -m "update of uv and python metadependencies descriptors at publish of new vesion  on now at $(node -e "console.log('UNIXUSAT'+Date.now())")"
uv export --format pylock.toml > ./pylock.toml
git add pylock.toml
git commit -m "uv export to pylock at publish of new vesion on now at $(node -e "console.log('UNIXUSAT'+Date.now())")"
uv export --format requirements.txt > ./requirements.txt
git add requirements.txt
git commit -m "uv export to basic requirements python file at publish of new vesion on now at $(node -e "console.log('UNIXUSAT'+Date.now())")"
npm install
npm audit fix
git add ./package.json ./package-lock.json
git commit -m "npm package refresh with fixes including locking procedure at publish of new vesion  on now at $(node -e "console.log('UNIXUSAT'+Date.now())")"
#npm shrinkwrap
#git add package.json package-lock.json npm-shrinkwrap.json 
#git commit -m "production of publication setup files at publish of vesion {{.PROJECT_VERSION}} "
#node -e "fs.writeFileSync('./npm-shrinkwrap.smelted.json', JSON.stringify(JSON.parse(fs.readFileSync('./npm-shrinkwrap.json'))))"
#git add package.json package-lock.json npm-shrinkwrap.json 
#git commit -m "production of publication setup files at publish of vesion {{.PROJECT_VERSION}} "
#git push
cp package-lock.json tmp.package-lock.json
npm shrinkwrap
node -e "fs.writeFileSync('./npm-shrinkwrap.smelted.json', JSON.stringify(JSON.parse(fs.readFileSync('./npm-shrinkwrap.json'))))  on now at $(node -e "console.log('UNIXUSAT'+Date.now())")"
mv ./tmp.package-lock.json ./package-lock.json
rm ./npm-shrinkwrap.json
mv ./npm-shrinkwrap.smelted.json ./npm-shrinkwrap.json
git add .
git commit -m "production of publication setup files at publish of vesion new  on now at $(node -e "console.log('UNIXUSAT'+Date.now())")"



