import React, { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import axios from 'axios';
import FavouriteAccommodationList from './FavouriteAccommodationsList';


const Favourites = () => {

    const [accommodations, setAccommodations] = useState([]);
    let { username } = useParams();
    
    useEffect(() => {
        const fetchData = async () => {
            let { data } = await axios.post('http://localhost:8080/favorites/show',
                { username },
                { headers: {'content-type': 'application/x-www-form-urlencoded'}});
            const newAccommodations = data.accommodations.map(a => {
                return { ...a, favourite: 'true'};
            });
            setAccommodations(newAccommodations);
        }

        fetchData();
    }, []);


    return (
        accommodations && <FavouriteAccommodationList favouriteAccommodations={accommodations} setFavouriteAccommodations={setAccommodations} user={username} />
    );
}

export default Favourites;