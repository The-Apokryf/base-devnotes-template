
// while opening chromium with devtools and go to https://raw.githubusercontent.com/The-Apokryf/base-devnotes-template/refs/heads/master/AGENTS.md
console.log(((owner, repo)=>document.body.innerText.split(
    "\n"
).filter(
    x=>x.trim().length>0
).filter(
    x=>x.startsWith("- _[")
).map(
    x=>x.substring(4).split("][")[0]
).map(
    x=>`[${x}]: https://raw.githubusercontent.com/${owner}/${repo}/refs/heads/master/${x}`
).join("\n"))("the-Apokryf", "base-devnotes-template"))
// this code generates links to guide LLMs directly to source files on github

`https://api.github.com/repos/${owner}/${repo}/contents/${path}`