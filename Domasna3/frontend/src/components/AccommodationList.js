import React from 'react';
import AccommodationCard from "./AccommodationCard";


const AccommodationList = ({ accommodations, setSelected, user, containerClass, errorMessage }) => {

    const renderAccommodations = accommodations.map((acc) => {
        return (
            <AccommodationCard
                key={acc.id}
                accommodation={acc}
                setSelected={setSelected}
                user={user}
            />
        );
    });
    
    return (
        <div className={`ui cards ${containerClass}`}>
            {accommodations.length > 0 ? renderAccommodations : 
            <h3>{errorMessage}</h3>}
        </div>
    );
}

export default AccommodationList;