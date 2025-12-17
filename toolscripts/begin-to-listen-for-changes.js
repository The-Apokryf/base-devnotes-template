
import fs from "node:fs";
import os from 'node:os';
//import child_process from 'node:child_process';
import path from "node:path";
//import 
import url from 'node:url';


console.log("test")

fs.watch(
    path.join(path.dirname(url.fileURLToPath(import.meta.url)), ".."), 
    {recursive:true},
    (eventType, filename)=>{
        console.log(eventType);
        // could be either 'rename' or 'change'. new file event and delete
        // also generally emit 'rename'
        console.log(filename);
    }
    
)