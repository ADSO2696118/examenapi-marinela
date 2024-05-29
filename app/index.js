import app from "./app.js";

app.listen(app.get("port"), ()=>{
    console.log( `Backend - Ejecutandose en el puerto: http://localhost:${app.get("port")}` );
})