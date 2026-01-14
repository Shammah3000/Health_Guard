const admin = require("firebase-admin");

admin.initializeApp({
    credential: admin.credentila.applicationDefault(),
});

const db = admin.firestore();
module.exports = {admin, db};