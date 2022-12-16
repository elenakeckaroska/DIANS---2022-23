import React from 'react';
import FavouriteAccommodationCard from "./FavouriteAccommodationCard";

const FavouriteAccommodationList = ({ favouriteAccommodations, setFavouriteAccommodations, user }) => {

    const renderAccommodations = favouriteAccommodations.map((acc) => {
        return (
            <FavouriteAccommodationCard
                key={acc.id}
                id={acc.id}
                name={acc.name}
                website={acc.website}
                stars={acc.stars}
                lat={acc.latitude}
                lon={acc.longitude}
                favourite={acc.favourite}
                favouriteAccommodations={favouriteAccommodations}
                setFavouriteAccommodations={setFavouriteAccommodations}
                user={user}
            />
        );
    });
    
    return (
        <div className="ui cards favourites-list">
            {favouriteAccommodations.length > 0 ? renderAccommodations : 
            <h3>Немате додадено сместувачки капацитети во листата на омилени!</h3>}
        </div>
    );
}

export default FavouriteAccommodationList;