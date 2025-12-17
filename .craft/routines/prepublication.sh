#!/bin/sh

sh .craft/procedures/npm-prepare.sh
sh .craft/procedures/pyproject-preset.sh
sh .craft/procedures/pylock-produce.sh
sh .craft/procedures/requirements-produce.sh
#sh .craft/procedures/version-shifter.sh

#npm shrinkwrap
#git add package.json package-lock.json npm-shrinkwrap.json 
#git commit -m "production of publication setup files at publish of vesion {{.PROJECT_VERSION}} "
#node -e "fs.writeFileSync('./npm-shrinkwrap.smelted.json', JSON.stringify(JSON.parse(fs.readFileSync('./npm-shrinkwrap.json'))))"
#git add package.json package-lock.json npm-shrinkwrap.json 
#git commit -m "production of publication setup files at publish of vesion {{.PROJECT_VERSION}} "
#git push

