const dbConnection = require('./db');
const mssql = require('mssql');

const sbProfModel = {
    prof : async (id) => {
        try {
            const db = await dbConnection.getDbConnection();
            let resultBlog = (await db.query(`select * from Blog where IdClasse = '${id}'`)).recordset;
            for(let blog of resultBlog)
            {
                blog.listComm = (await db.query(`select * from BlogCom where IdBlog = '${blog.IdBlog}'`)).recordset;
            }
            db.close();
            return resultBlog
        }
        catch (error) {
            console.error(error);
        }
    },

    profMsg : async (id) => {
        try {
            const db = await dbConnection.getDbConnection();
            let resultMsg = (await db.query(`select * from MsgParent where IdClasse = '${id}'`)).recordset;
            db.close();
            return resultMsg
        }
        catch (error) {
            console.error(error);
        }
    },

    profAddCom : async (comData) => {
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
            return `prof/${comData.idClasse}`
        }
        catch (error) {
            console.error(error);
        }
    },

    profAddArt : async (artData) => {
        try {
            const db = await dbConnection.getDbConnection();
            const sqlQuery = new mssql.PreparedStatement(db);
            sqlQuery.input('titre', mssql.NVarChar, artData.titre);
            sqlQuery.input('imgPath', mssql.NVarChar, artData.imgPath);
            sqlQuery.input('desc', mssql.NVarChar, artData.desc);
            sqlQuery.input('idClasse', mssql.NVarChar, artData.idClasse);
            await sqlQuery.prepare('INSERT INTO [Blog] ([IdClasse], [Titre], [Img], [Desc]) VALUES (@idClasse, @titre, @imgPath, @desc)');
            await sqlQuery.execute(artData);
            db.close();
            return `prof/${artData.idClasse}`
        }
        catch (error) {
            console.error(error);
        }
    },
};

module.exports = sbProfModel;