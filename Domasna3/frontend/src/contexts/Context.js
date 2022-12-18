import React, { useState, useEffect } from "react";
import axios from 'axios';
  
export const Context = React.createContext();

export const ContextProvider = ({ children }) => {
    const [accommodations, setAccommodations] = useState([]);
    const [userAccommodations, setUserAccommodations] = useState([]);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        const fetchData = async () => {
            let { data } = await axios.get('http://localhost:8080/accommodation');
            setAccommodations(data);
            setLoading(false);
        }

        fetchData();
    }, []);

    const value = {
        accommodations,
        setAccommodations,
        userAccommodations,
        setUserAccommodations
    }
  
    return (
        <Context.Provider value={value}>
            {!loading && children}
        </Context.Provider>
    );
};