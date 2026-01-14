const express = require("express");
const router = express.Router();
const { addVitals } = require("../controllers/vitals.controller");

router.post("/",addVitals);

module.exports = router;