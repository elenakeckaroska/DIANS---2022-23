import React, { useEffect, useContext } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import axios from 'axios';
import AccommodationList from './AccommodationList';
import { Context } from '../contexts/Context';

const Favourites = () => {

    const { userAccommodations, setUserAccommodations } = useContext(Context);
    let { username } = useParams();
    
    useEffect(() => {
        const fetchData = async () => {
            let { data } = await axios.post('http://localhost:8080/favorites/show',
                { username },
                { headers: {'content-type': 'application/x-www-form-urlencoded'}});
            setUserAccommodations(data.accommodations);
        }

        fetchData();
    }, []);

    return (
        <AccommodationList 
            accommodations={userAccommodations}
            setSelected={null} 
            user={username}
            containerClass='favourites-list'
            errorMessage='Немате додадено сместувачки капацитети во листата на омилени!'
        />
    );
}

export default Favourites;