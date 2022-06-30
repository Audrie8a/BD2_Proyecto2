const express = require("express");
const router = express.Router();
const peticionesClient= require("../client/conexion");

router.post("/get", peticionesClient.getProducts);
router.post("/insert",peticionesClient.insertTitle)

module.exports = router;