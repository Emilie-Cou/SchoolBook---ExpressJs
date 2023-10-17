const dbConnection = require('./db');
const mssql = require('mssql');

const sbStudentModel = {
    student : async (id) => {
        try {
            const db = await dbConnection.getDbConnection();
            let resultBlog = (await db.query(`select * from Blog where IdClasse = '${id}'`)).recordset;
            for(let blog of resultBlog)
            {
                blog.listComm = (await db.query(`select * from BlogCom where IdBlog = '${blog.IdBlog}'`)).recordset
            }
            db.close();
            return resultBlog
        }
        catch (error) {
            console.error(error);
        }
    },

    studentAddCom : async (comData) => {
        try {
            const db = await dbConnection.getDbConnection();
            const sqlQuery = new mssql.PreparedStatement(db);
            sqlQuery.input('idBlog', mssql.Int, comData.idBlog);
            sqlQuery.input('idClasse', mssql.NVarChar, comData.idClasse);
            sqlQuery.input('prenom', mssql.NVarChar, comData.prenom);
            sqlQuery.input('content', mssql.NVarChar, comData.content);
            await sqlQuery.prepare('insert into [BlogCom] (IdClasse, IdBlog, Prenom, Content) values (@idClasse, @idBlog, @prenom, @content)');
            await sqlQuery.execute(comData);
            db.close();
            return `student/${comData.idClasse}`
        }
        catch (error) {
            console.error(error);
        } 
    },

    studentSendMsg : async (MsgData) => {
        try {
            const db = await dbConnection.getDbConnection();
            const sqlQuery = new mssql.PreparedStatement(db);
            sqlQuery.input('idClasse', mssql.NVarChar, MsgData.idClasse);
            sqlQuery.input('prenom', mssql.NVarChar, MsgData.prenom);
            sqlQuery.input('content', mssql.NVarChar, MsgData.content);
            await sqlQuery.prepare('insert into [MsgParent] (IdClasse, Prenom, Content) values (@idClasse, @prenom, @content)');
            await sqlQuery.execute(MsgData);
            db.close();
            return `student/${MsgData.idClasse}`
        }
        catch (error) {
            console.error(error);
        } 
    },
};

module.exports = sbStudentModel;