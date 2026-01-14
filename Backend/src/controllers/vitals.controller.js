const { db } = require("../config/firebase");

exports.addVitals = async(req, res) => {
    try {
        const { patientId, heartRate, spo2, temperature } = req.body;

        if (!patientId) {
            return res.status(400).json({ error: "patientId required"});
        }

        const data = {
            heartRate,
            spo2,
            temperature,
            timestamp: new Date(),
        };

        await db.collection("vitals")
           .doc(patientId)
           .collection("records")
           .add(data);

        res.status(201).json({message: "Vitals stored successfully"});
    } catch (err) {
        res.status(500).json({error: err.message});
    }     
};
