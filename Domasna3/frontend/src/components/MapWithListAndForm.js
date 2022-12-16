import React, { useState } from 'react';
import Map from './Map';
import AccommodationList from "./AccommodationList";
import FiltersForm from './FiltersForm';


import 'leaflet/dist/leaflet.css';
import '../styles/App.css';

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