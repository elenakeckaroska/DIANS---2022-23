import React from 'react';
import AccommodationCard from "./AccommodationCard";

const AccommodationList = ({accommodations, setSelected }) => {

    const renderAccommodations = accommodations.map((acc) => {
        return (
            <AccommodationCard
                key={acc.id}
                id={acc.id}
                name={acc.name}
                website={acc.website}
                stars={acc.stars}
                lat={acc.latitude}
                lon={acc.longitude}
                setSelected={setSelected}
            />
        );
    });

    
    return (
        <div className="ui cards">
            {accommodations.length > 0 ? renderAccommodations : 
            <h3>Не се пронајдени сместувачки капацитети. Обидете се повторно!</h3>}
        </div>
    );
}

export default AccommodationList;