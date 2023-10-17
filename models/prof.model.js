const dbConnection = require('./db');
const mssql = require('mssql');

const profModel = {
    getAll : async (req, res) => {
        const db = await dbConnection.getDbConnection();
        let result = await db.query('select p.Nom, c.NomClasse, p.IdProf, c.IdClasse, p.Img from Professor as p join Classe as c on c.IdProf = p.IdProf')
        db.close();
        return result.recordset
    },
};

module.exports = profModel;