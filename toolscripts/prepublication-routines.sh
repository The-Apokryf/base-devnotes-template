#!/bin/sh

uv sync
uv lock
git add uv.lock pyproject.toml
git commit -m "update of uv and python metadependencies descriptors at publish of new vesion"
uv export --format pylock.toml > ./pylock.toml
git add pylock.toml
git commit -m "uv export to pylock at publish of new vesion"
uv export --format requirements.txt > ./requirements.txt
git add requirements.txt
git commit -m "uv export to basic requirements python file at publish of new vesion"
npm install
npm audit fix
git add ./package.json ./package-lock.json
git commit -m "npm package refresh with fixes including locking procedure at publish of new vesion"
#npm shrinkwrap
#git add package.json package-lock.json npm-shrinkwrap.json 
#git commit -m "production of publication setup files at publish of vesion {{.PROJECT_VERSION}} "
#node -e "fs.writeFileSync('./npm-shrinkwrap.smelted.json', JSON.stringify(JSON.parse(fs.readFileSync('./npm-shrinkwrap.json'))))"
#git add package.json package-lock.json npm-shrinkwrap.json 
#git commit -m "production of publication setup files at publish of vesion {{.PROJECT_VERSION}} "
#git push
node -e "fs.writeFileSync('./smelted.package-lock.json', JSON.stringify(JSON.parse(fs.readFileSync('./package-lock.json'))))"
rm ./package-lock.json
mv ./smelted.package-lock.json ./package-lock.json
git add package.json package-lock.json 
git commit -m "production of publication setup files at publish of vesion new"
uv version --bump minor
npm version minor
git add .
git commit -m "version shifts"
