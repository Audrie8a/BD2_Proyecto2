const express = require("express");
const router = express.Router();
const peticionesMongo= require("../client/conexion");

router.get("/get", peticionesMongo.getUsuarios);
router.get("/data", peticionesMongo.insertData);

module.exports = router;