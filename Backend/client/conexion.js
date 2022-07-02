const sql = require("mssql");

const dbSettings = {
    user: "audrie",
    password: "123",
    server: "DESKTOP-TC442HD",
    database: "NETFLIX",
    options: {
        encrypt: true, // for azure
        trustServerCertificate: true, // change to true for local dev / self-signed certs
    },
};

exports.getProducts = async (req, res) => {
    try {
        // const { id } = req.body;
        // this.detailed_title(id);
        const pool = await sql.connect(dbSettings);
        const result = await pool.request().query('SELECT id FROM title');
        let title = []
        array.forEach(element => {
            title.push(element);
        });
        res.json(result.recordset);
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};



exports.get_idTitles = async () => {
    try {
        const pool = await sql.connect(dbSettings);
        const result = await pool.request().query('SELECT id FROM title');
        let title = []
        result.recordset.forEach(element => {
            title.push(element.id);
        });
        // console.log(title);
        return title;
    } catch (error) {

        console.log(error.message);
        return "error"
    }
};


exports.detailed_title = async (id) => {
    try {
        const pool = await sql.connect(dbSettings);
        let queryString = `SELECT t.id, t.primaryTitle, t.isAdult, t.startYear, t.endYear, t.runtime, tp.name as Tipo FROM title t INNER JOIN titletype tp ON t.titleTypeId = tp.id WHERE t.id = ${id}`
        const result = await pool.request().query(queryString);
        // console.log(result.recordset[0].startYear)
        // console.log(result.recordset[0])
        return result.recordset[0];
    } catch (error) {

        console.log(error.message);
        return "error"
    }
};

//Retorna un array json que contiene el reparto del título -> [ { name: 'Fred Astaire' } ]
exports.cast_table = async (id) => {
    try {
        const pool = await sql.connect(dbSettings);
        let queryString = `SELECT p.name FROM crew c 
                            INNER JOIN person p ON c.personId = p.id 
                            INNER JOIN role r ON c.roleId = r.id 
                            WHERE c.titleId = ${id}
                            AND (r.name = 'actress' OR r.name = 'actor');`
        const result = await pool.request().query(queryString);
        // console.log(result.recordset[0].startYear)
        if (result.recordset[0] != undefined) {
            let reparto = []
            result.recordset.forEach(element => {
                reparto.push(element);
            });
            // console.log(reparto);
            return reparto;
        }
        // console.log(result.recordset[0])
        return result.recordset[0];


    } catch (error) {

        console.log(error.message);
        return "error"
    }
};

//Devuelve un array json de los participante de la película según el puesto solicitado -> [ { name: 'Humphrey Bogart' } ]
exports.get_creator = async (id_title, puesto) => {
    try {
        const pool = await sql.connect(dbSettings);
        let queryString = `SELECT p.name FROM crew c 
                            INNER JOIN person p ON c.personId = p.id 
                            INNER JOIN role r ON c.roleId = r.id 
                            WHERE c.titleId = ${id_title}
                            AND r.name = '${puesto}';`
        const result = await pool.request().query(queryString);
        // console.log(result.recordset[0].startYear)
        if (result.recordset[0] != undefined) {
            let reparto = []
            result.recordset.forEach(element => {
                reparto.push(element);
            });
            // console.log(reparto);
            return reparto;
        }
        // console.log(result.recordset[0])
        return result.recordset[0];
    } catch (error) {

        console.log(error.message);
        return "error"
    }
};

//Devuelve un array json con los géneros a los que pertenece la película -> [ { name: 'Comedy,Short' }, { name: 'Romance' } ]
exports.get_genres = async (id_title) => {
    try {
        const pool = await sql.connect(dbSettings);
        let queryString = `SELECT g.name FROM title_genre tg
                            INNER JOIN genre g ON tg.genreId = g.id 
                            WHERE tg.titleId = ${id_title}`
        const result = await pool.request().query(queryString);
        // console.log(result.recordset[0].startYear)
        if (result.recordset[0] != undefined) {
            let genero = []
            result.recordset.forEach(element => {
                genero.push(element);
            });
            // console.log(genero);
            return genero;
        }
        // console.log(result.recordset[0])
        return result.recordset[0];
    } catch (error) {

        console.log(error.message);
        return "error"
    }
};


exports.insertTitle = async (req, res) => {
    try {
        const { titulo, isAdult, anio, anioFin, tipo_titulo, runtime, rating } = req.body;
        const pool = await sql.connect(dbSettings);

        const result = await pool.request()
            .input('titulo', titulo)
            .input('isAdult', isAdult)
            .input('anio', anio)
            .input('anioFin', anioFin)
            .input('tipo_titulo', tipo_titulo)
            .input('runtime', runtime)
            .input('rating', rating)
            .execute('insert_title');
        return res.json("Insertado!")
    } catch (error) {

        console.log(error.message);
        return res.json("Error al insertar Titulo!")
    }
};


exports.get_rating = async (id_title) => {
    try {
        const pool = await sql.connect(dbSettings);
        let queryString = `SELECT SUM(t3.rating) + ISNULL((select r2.averageRating 
                            FROM [IMBD AZURE].[IMDB].[dbo].[title] t2, [IMBD AZURE].[IMDB].[dbo].[rating] r2
                            WHERE t2.id=r2.titleid
                            AND t2.id COLLATE Modern_Spanish_CI_AS=(select ri.idTitleIMDB
                            FROM [dbo].[RegistroIMDB] ri, [dbo].[title] t
                            where t.id=ri.idTitle
                            and t.id=${id_title})),0) as Rating
                            FROM title t3
                            WHERE t3.id=${id_title}`
        const result = await pool.request().query(queryString);
        // console.log(result.recordset[0].startYear)
        if (result.recordset[0] != undefined) {

            // console.log(result.recordset[0]);
            return result.recordset[0];
        }
        // console.log(result.recordset[0])
        return result.recordset[0];
    } catch (error) {

        console.log(error.message);
        return "error"
    }
};

const MongoClient = require('mongodb').MongoClient


var db;
var collection;

MongoClient.connect('mongodb://db2:123@3.143.249.36:27017/test', { useNewUrlParser: true, useUnifiedTopology: true }, (err, client) => {
    if (err) return console.error(err)
    console.log('Connected to Database')
    db = client.db('test')
    // console.log(collection);
})


exports.getUsuarios = async (req, res) => {

    db.collection('prueba').find().toArray()
        .then(results => {
            res.json(results);
        }).catch(error => console.error(error));
}



exports.insertData = async (req, res) => {
    try {
        const idTitles = await this.get_idTitles()
        
        for (let index = 0; index < idTitles.length; index++) {
            let id = idTitles[index];
            
            const details = await this.detailed_title(id);
            const cast = await this.cast_table(id);
            const director = await this.get_creator(id, 'director');
            const writer = await this.get_creator(id, 'writer');
            const genero = await this.get_genres(id);
            const rating = await this.get_rating(id);
            let data = {
                "_id": details.id,
                "primaryTitle": details.primaryTitle,
                "isAdult": details.isAdult,
                "startYear": details.startYear,
                "endYear": details.endYear,
                "runtime": details.runtime,
                "titleType": details.Tipo,
                "cast": cast,
                "director": director,
                "writer": writer,
                "genre": genero,
                "rating": rating.Rating
            }
            await db.collection('data').insertOne(data)
        }

        return res.status(200).json("Actualizado!");

    } catch (error) {
        console.log(error)
        return res.status(400).json("Error al actualizar!")
    }


}

exports.getData = async (req, res) => {
    try {
        
        
        await db.collection('data').find().toArray()
        .then(results => {
            return res.status(200).json(results);
        }).catch(error => {
            console.error(error);
            return res.status(400).json("error");
        });

    } catch (error) {
        console.log(error)
        return res.json("Error al actualizar!")
    }


}

exports.dropData = async (req, res) => {
    try {
        
        
        await db.collection("data").drop(function (err, delOK) {
            if (err) {
                console.log("No existe Data!");
                return res.json("No existe Data");
            }
            if (delOK) {
                console.log("Collection deleted");
                return res.status(200).json("Borrado!");
            }
           
        });
    } catch (error) {
        console.log(error)
        return res.json("Error al actualizar!")
    }


}

