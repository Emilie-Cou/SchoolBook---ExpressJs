const mssql = require('mssql');

const sqlConfig = {  
    user: process.env.DB_USERNAME,  
    password: process.env.DB_PASSWORD,  
    database: process.env.DB_DATABASE,  
    server: process.env.DB_SERVER,  
    options: {    
        trustServerCertificate: true // true si travail en dev local ou self-signed certs
    }
};

const getDbConnection = async () => {
    const db = await mssql.connect(sqlConfig)
    return db
};

const testDbConnection = async () => {
    try {
        const db = await getDbConnection()
        db.close()
        console.log('Connexion à la DB réussie! Et coupée...');
        return true
    }
    catch (error) {
        console.log('Connexion à la DB impossible!');
        console.error(error);
        return false
    }
};

module.exports = {
    getDbConnection,
    testDbConnection,
};
