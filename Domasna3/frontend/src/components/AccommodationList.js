import React, { useContext } from 'react';
import AccommodationCard from "./AccommodationCard";
import { Context } from '../contexts/Context';

const AccommodationList = ({ setSelected, user }) => {

    const { accommodations } = useContext(Context);

    const renderAccommodations = accommodations.map((acc) => {
        return (
            <AccommodationCard
                key={acc.id}
                accommodation={acc}
                // id={acc.id}
                // name={acc.name}
                // website={acc.website}
                // stars={acc.stars}
                // lat={acc.latitude}
                // lon={acc.longitude}
                // //favourite={acc.favourite}
                setSelected={setSelected}
                user={user}
            />
        );
    });
    
    return (
        <div className="ui cards overflow">
            {accommodations.length > 0 ? renderAccommodations : 
            <h3>Не се пронајдени сместувачки капацитети. Обидете се повторно!</h3>}
        </div>
    );
}

export default AccommodationList;