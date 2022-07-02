import React, { useState, useEffect } from "react";
import Axios from "axios";
import "./styles/ResumenNetflix.css";

function ResumenNetflix() {
    const [list, setList] = useState([]);
    // const [bandera, setBandera] = useState(true);


    useEffect(() => {
        setInterval(() => {
            Axios({
                url: "http://localhost:4000/mongo/deleteData",
            })
                .then((response) => {
                    console.log("Actualizado!")
                    // setBandera(true);

                })
                .catch((error) => {
                    console.log(error);
                });
            Axios({
                url: "http://localhost:4000/mongo/updatData",
                timeout: 1000 * 30,
                headers: {
                    "Content-Type": "application/json"
                },
            })
                .then((response) => {
                    console.log("Actualizado!")
                    Axios({
                        url: "http://localhost:4000/mongo/getData",
                        timeout: 1000 * 20,
                        headers: {
                            "Content-Type": "application/json"
                        },
                    })
                        .then((response) => {
                            setList(response.data);
                            // setBandera(true);

                        })
                        .catch((error) => {
                            console.log(error);
                        });

                })
                .catch((error) => {
                    console.log(error);
                });


        }, 900000);
        //   }, 900000);


        Axios({
            url: "http://localhost:4000/mongo/getData",
            timeout: 1000 * 20,
            headers: {
                "Content-Type": "application/json"
            },
        })
            .then((response) => {
                setList(response.data);
                // setBandera(true);

            })
            .catch((error) => {
                console.log(error);
            });
    }, [setList]);

    return (

        <div className="Dvi">
            {list.map((item) => (
                <div key={item._id} >
                    <table className="flat-table flat-table-1">
                        <thead>
                            <tr>
                                <th>Atributo</th>
                                <th>Valor</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>id</td>
                                <td>{item._id}</td>
                            </tr>
                            <tr>
                                <td>primaryTitle</td>
                                <td>{item.primaryTitle}</td>
                            </tr>
                            <tr>
                                <td>isAdult</td>
                                <td>{(item.isAdult === 0) ? "Familiar" : "Adultos"}</td>
                            </tr>
                            <tr>
                                <td>stratYear</td>
                                <td>{item.startYear}</td>
                            </tr>
                            <tr>
                                <td>endYear</td>
                                <td>{item.endYear}</td>
                            </tr>
                            <tr>
                                <td>runtime</td>
                                <td>{item.runtime}</td>
                            </tr>
                            <tr>
                                <td>titleType</td>
                                <td>{(item.titleType === null) ? "" : item.titleType}</td>
                            </tr>
                            <tr>
                                <td>cast</td>
                                <td>{JSON.stringify(item.cast)}</td>

                            </tr>
                            <tr>
                                <td>director</td>
                                <td>{JSON.stringify(item.director)}</td>

                            </tr>
                            <tr>
                                <td>writer</td>
                                <td>{JSON.stringify(item.writer)}</td>

                            </tr>
                            <tr>
                                <td>genre</td>
                                <td>{JSON.stringify(item.genre)}</td>

                            </tr>
                            <tr>
                                <td>rating</td>
                                <td>{item.rating}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            ))}
        </div>

    );
}

export default ResumenNetflix;

// this.state = {
//     _id: "",
//     primaryTitle:"",
//     isAdult:"",
//     startYear:"",
//     endYear:"",
//     runtime:"",
//     titleType:"",
//     cast:"",
//     director:"",
//     writer:"",
//     genre:"",
//     rating:""
// };