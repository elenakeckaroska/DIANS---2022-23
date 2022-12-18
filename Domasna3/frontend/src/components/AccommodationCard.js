import React, { useContext } from 'react';
import { Link } from 'react-router-dom';
import { Context } from '../contexts/Context';
import axios from 'axios';

const AccommodationCard = ({ id, name, website, stars, lat, lon, setSelected, user }) => {

    const { accommodations, setAccommodations, userAccommodations, setUserAccommodations } = useContext(Context);

    const addToFavourites = () => {
        const params = new URLSearchParams({ username: user, accommodationId: id });
        axios.post('http://localhost:8080/favorites/add', params, { headers: {'content-type': 'application/x-www-form-urlencoded'}})
        .then((response) => {
            // const newAccommodations = accommodations.map(a => {
            //     if (a.id == id) {
            //         if (a.favourite == 'false')
            //             return { ...a, favourite: 'true'};
            //         return { ...a, favourite: 'false'};
            //     }

            //     return a;
            // });
            let newUserAccommodations;
            if (userAccommodations.find(e => e.id == id)) {
                console.log('found!');
                newUserAccommodations = userAccommodations.filter(e => e.id != id);
            } else {
                console.log('not found!');
                newUserAccommodations = [ ...userAccommodations, accommodations.find(e => e.id == id)]
            }
            setUserAccommodations(newUserAccommodations);
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
                <div className="description show-on-map" onClick={() => setSelected({ id: id, center: [lat, lon]})}>
                    Прикажи на мапа <i aria-hidden="true" className="blue map marker alternate icon"></i>
                </div>
                <div className="meta">
                    <Link to={`/accommodation/${id}`}>
                        Види повеќе...
                    </Link>
                </div>
                {user && 
                <a className="heart-link" onClick={() => addToFavourites()}>
                    <i aria-hidden="true" className={`big heart ${userAccommodations.find(e => e.id == id) ? 'red' : 'outline'} icon`}></i>
                </a>}                
            </div>
        </div>
    );
}

export default AccommodationCard;