const express = require("express");
const router = express.Router();
const peticionesMongo= require("../client/conexion");

router.get("/get", peticionesMongo.getUsuarios);
router.get("/updatData", peticionesMongo.insertData);
router.get("/getData",peticionesMongo.getData);
router.get("/deleteData", peticionesMongo.dropData);


module.exports = router;