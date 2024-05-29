import { Router } from "express";
import { ListarFactura, crearFactura, eliminarFactura, modificarFactura, mostrarFactura } from "../controllers/controllers.factura.js";

const rutaFactura = Router();

rutaFactura.get("/factura/:id", mostrarFactura );
rutaFactura.get("/factura", ListarFactura );
rutaFactura.post("/factura", crearFactura );
rutaFactura.put("/factura", modificarFactura);
rutaFactura.delete("/factura", eliminarFactura);

export default rutaFactura;