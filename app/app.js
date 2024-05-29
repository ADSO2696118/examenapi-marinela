import express from "express";
import ruta from "./routes/index.js";
import { config } from "dotenv";
config();

const app = express();

app.set("port", process.env.PORT || 3000);

app.use("/", ruta)

export default app;