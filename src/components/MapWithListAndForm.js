import React, { useState } from 'react';
import Map from './Map';
import AccommodationList from "./AccommodationList";
import FiltersForm from './FiltersForm';


import 'leaflet/dist/leaflet.css';
import '../styles/App.css';


// ['latitude', 'longitude', 'name', 'property_type', 'website', 'stars', 'email',
// 'phone', 'city', 'postcode', 'street', 'house_number', 'smoking', 'rooms',
// 'internet_access', 'internet_access_fee', 'municipality']


const MapWithListAndForm = ({ user }) => {

    const [selected, setSelected] = useState(null);

    return (
        <div className="map-list-container">
            <FiltersForm />
            <AccommodationList setSelected={setSelected} user={user} />
            <Map selectedProp={selected} />
        </div>
    );
};

export default MapWithListAndForm;