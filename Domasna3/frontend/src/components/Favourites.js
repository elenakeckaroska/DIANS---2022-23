import React, { useEffect, useContext } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import axios from 'axios';
import AccommodationList from './AccommodationList';
import { Context } from '../contexts/Context';

const Favourites = () => {

    const { userAccommodations, setUserAccommodations, token } = useContext(Context);
    const navigate = useNavigate();
    let { username } = useParams();
    
    useEffect(() => {
        const fetchData = async () => {
            const headersConfig = {
                headers: {
                   Authorization: "Bearer " + token
                }
            };

            try {
                let { data } = await axios.get('http://localhost:8080/favorites/show', headersConfig);
                setUserAccommodations(data.accommodations);
            } catch(err) {
                navigate('/login?error=' + 'Автентикацискиот токен е истечен. Ве молиме логирајте се повторно.');
            }            
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