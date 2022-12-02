import React from 'react';
import AccommodationCard from "./AccommodationCard";

const AccommodationList = ({accommodations}) => {

    const renderAccommodations = accommodations.map((acc) => {
        return (
            <AccommodationCard
                key={acc.id}
                id={acc.id}
                name={acc.name}
                website={acc.website}
                stars={acc.stars}
            />
        );
    })
    return (
        <div className="ui cards">
            {renderAccommodations}
        </div>
    );
}

export default AccommodationList;