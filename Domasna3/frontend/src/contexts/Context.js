import React, { useState, useEffect } from "react";
import axios from 'axios';
  
export const Context = React.createContext();

export const ContextProvider = ({ children }) => {
    const [accommodations, setAccommodations] = useState([]);
    const [userAccommodations, setUserAccommodations] = useState([]);
    const [user, setUser] = useState(null);
    const [token, setToken] = useState(null);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        const fetchData = async () => {
            let { data } = await axios.get('http://localhost:8080/accommodation');
            setAccommodations(data);
        }

        fetchData();
        const jwt = localStorage.getItem("jwt");
        const userLS = localStorage.getItem("user");
        setToken(jwt);
        setUser(userLS);
        setLoading(false);
    }, []);

    const value = {
        accommodations,
        setAccommodations,
        userAccommodations,
        setUserAccommodations,
        user, 
        setUser,
        token,
        setToken
    }
  
    console.log(token);
    console.log(user);

    return (
        <Context.Provider value={value}>
            {!loading && children}
        </Context.Provider>
    );
};