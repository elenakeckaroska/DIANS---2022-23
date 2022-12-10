import React, { useContext } from 'react';
import { Link } from 'react-router-dom';
import { Context } from '../contexts/Context';
import axios from 'axios';

const FavouriteAccommodationCard = ({ id, name, website, stars, lat, lon, favourite,
     favouriteAccommodations, setFavouriteAccommodations, user }) => {

    const { accommodations, setAccommodations } = useContext(Context);

    const addToFavourites = () => {
        const params = new URLSearchParams({ username: user, accommodationId: id });
        axios.post('http://localhost:8080/favorites/add', params, { headers: {'content-type': 'application/x-www-form-urlencoded'}})
        .then((response) => {
            console.log(favouriteAccommodations);
            const newAccommodations = accommodations.map(a => {
                if (a.id == id) {
                    if (a.favourite == 'false')
                        return { ...a, favourite: 'true'};
                    return { ...a, favourite: 'false'};
                }

                return a;
            });
            
            const newFavouriteAccommodations = favouriteAccommodations.filter(a => {
                return a.id != id;
            });            

            setAccommodations(newAccommodations);
            setFavouriteAccommodations(newFavouriteAccommodations);
        })
        .catch((error) => {
            console.log(error);
        });
    }

    return (
        <div className="ui card">
            <div className="content">
                <a href={website}>
                    <div className="header"><b>{name}</b></div>
                </a>
                <div className="description">
                    {stars} <i aria-hidden="true" className="yellow star icon"></i>
                </div>
                <div className="meta">
                    <Link to={`/accommodation/${id}`}>
                        Види повеќе...
                    </Link>
                </div>
                {user && 
                <a className="heart-link" onClick={() => addToFavourites()}>
                    <i aria-hidden="true" className={`big heart ${favourite == 'false' ? 'outline' : 'red'} icon`}></i>
                </a>}                
            </div>
        </div>
    );
}

export default FavouriteAccommodationCard;