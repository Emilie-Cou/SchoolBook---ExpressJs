const dbConnection = require('./db');
const mssql = require('mssql');

const commentModel = {
    getAll : async () => {
        const db = await dbConnection.getDbConnection();
        let result = await db.query('SELECT * FROM [Commentaire]');
        db.close();
        return result.recordset
    },

    addComment : async (userData) => {
        try {
            const db = await dbConnection.getDbConnection();
            const sqlQuery = new mssql.PreparedStatement(db);
            sqlQuery.input('prenom', mssql.NVarChar, userData.prenom);
            sqlQuery.input('content', mssql.NVarChar, userData.content);
            await sqlQuery.prepare('INSERT INTO [Commentaire] (Prenom, Content) VALUES (@prenom, @content)');
            await sqlQuery.execute(userData);
            db.close();
        }
        catch (error) {
            console.error(error);
        }
    },
};

module.exports = commentModel;