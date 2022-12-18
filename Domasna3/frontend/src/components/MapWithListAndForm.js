import React, { useState, useContext } from 'react';
import Map from './Map';
import AccommodationList from "./AccommodationList";
import FiltersForm from './FiltersForm';
import { Context } from '../contexts/Context';


import 'leaflet/dist/leaflet.css';
import '../styles/App.css';

const MapWithListAndForm = ({ user }) => {

    const [selected, setSelected] = useState(null);
    const { accommodations } = useContext(Context);

    return (
        <div className="map-list-container">
            <FiltersForm />
            <AccommodationList 
                accommodations={accommodations} 
                setSelected={setSelected} 
                user={user} 
                containerClass='overflow'
                errorMessage='Не се пронајдени сместувачки капацитети. Обидете се повторно!'
            />
            <Map selectedProp={selected} />
        </div>
    );
};

export default MapWithListAndForm;