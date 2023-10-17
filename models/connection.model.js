const dbConnection = require('./db');
const mssql = require('mssql');

const connectionModel = {
    connect : async (userData) => {
        try {
            const db = await dbConnection.getDbConnection();
            const sqlQuery = new mssql.PreparedStatement(db);
            sqlQuery.input('user', mssql.NVarChar, userData.user);
            sqlQuery.input('password', mssql.NVarChar, userData.password);

            if (userData.user.length == 6 && userData.password.length == 8) {
                // Je suis prof, je vérifie si mdp=mdp et user=user
                let sbProf = (await db.query(`select IdClasse from Professor where '${userData.user}' = IdProf and '${userData.password}' = Password`)).recordset;
                db.close();
                // Je renvoie l'id pour la redirection de la page
                return `prof/${sbProf[0].IdClasse}`
            } 
            else if (userData.user.length == 7 && userData.password.length == 9) {
                // Je suis student, je vérifie si mdp=mdp et user=user
                let sbStudent = (await db.query(`select distinct IdClasse from Student where '${userData.user}' = IdStudent and ('${userData.password}' = Password1 or '${userData.password}' = Password2)`)).recordset;
                db.close();
                // Je renvoie l'id pour la redirection de la page
                return `student/${sbStudent[0].IdClasse}`
            } 
            else {
                // J'ai un problème
                console.log('Il y a une erreur dans l\'encodage des données.');
            }
        }
        catch (error) {
            console.error(error);
        }
    },
};

module.exports = connectionModel;