const dbConnection = require('./db');
const mssql = require('mssql');

const classeModel = {
    getAll : async () => {
        const db = await dbConnection.getDbConnection();
        let result = await db.query("select c.IdClasse, c.CourteDescription, c.Img, c.NomClasse, p.Nom from Classe as c join Professor as p on c.IdProf = p.IdProf and p.IdClasse not in ('Dir', 'SEC')");
        db.close();
        return result.recordset
    },

    getOne : async (id) => {
        console.log(id);
        const db = await dbConnection.getDbConnection();
        let result = await db.query(`SELECT c.IdClasse, c.Description, c.Img, c.NomClasse, p.Nom FROM Classe as c join Professor as p on c.IdProf = p.IdProf WHERE c.IdClasse = '${id}'`)
        db.close();
        return result.recordset
    },

    addClasse : async () => {
        const db = await dbConnection.getDbConnection();
    },

    updateClasse : async () => {
        const db = await dbConnection.getDbConnection();
    },

    deleteClasse : async () => {
        const db = await dbConnection.getDbConnection();
    },

};

module.exports = classeModel;