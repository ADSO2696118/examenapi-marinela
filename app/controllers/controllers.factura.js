import { pool } from "../config/db.mysql.js";

export const mostrarFactura = async (req, res) => {

    let id = req.params['id'];

    try {
        const respuesta = await pool.query(`CALL sp_MostrarFactura(${id});`);
        res.json({ "res": respuesta })
    } catch (error) {
        res.json({ "error": error })
    }

};

export const ListarFactura = async (req, res) => {
    try {
        const respuesta = await pool.query(`CALL sp_ListarFactura();`);
        res.json({ "res": respuesta })
    } catch (error) {
        res.json({ "error": error })
    }
};

export const crearFactura = async (req, res) => {

    const nombre = req.body.nombre;
    const total = req.body.total;

    try {

        const respuesta = await pool.query(`CALL sp_CrearFactura('${nombre}', '${total}');`);
        if (respuesta[0].affectedRows == 1) {
            res.json({ "res": respuesta })
        } else {
            res.json({ "error": "No se pudo crear la Factura" })
        }

    } catch (err) {
        res.json({ "error": err })
    }
};

export const modificarFactura = async (req, res) => {
    let id = req.body.id;

    try {
        const respuesta = await pool.query(`CALL sp_ModificarFactura(${id});`);
        if (respuesta[0].affectedRows == 1) {
            res.json({ "res": respuesta })
        } else {
            res.json({ "error": "No se puedo modificar la factura" })
        }

    } catch (erro) {
        res.json({ "erro": erro })
    }
};

export const eliminarFactura = async (req, res) => {

    const id = req.body.id;

    try {
        const respuesta = await pool.query(`CALL sp_EliminarFactura(${id});`);


        if (respuesta[0].affectedRows == 1) {
            res.json({ "res": respuesta })
        } else {
            res.json({ "error": "No se pudo eliminar la factura" })
        }

    } catch (erro) {
        res.json({ "erro": erro })
    }

};