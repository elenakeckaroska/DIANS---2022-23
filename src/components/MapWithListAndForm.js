import React, { useState, useEffect } from 'react';
import axios from 'axios';
import Map from './Map';
import AccommodationList from "./AccommodationList";
import FiltersForm from './FiltersForm';

import 'leaflet/dist/leaflet.css';
import '../styles/App.css';


// ['latitude', 'longitude', 'name', 'property_type', 'website', 'stars', 'email',
// 'phone', 'city', 'postcode', 'street', 'house_number', 'smoking', 'rooms',
// 'internet_access', 'internet_access_fee', 'municipality']


const MapWithListAndForm = () => {

    const [accommodations, setAccommodations] = useState([]);
    const [selected, setSelected] = useState(null);

    useEffect(() => {
        const fetchData = async () => {
            const { data } = await axios.get('http://localhost:8080/accommodation');
            
            setAccommodations(data);
        }

        fetchData();
    }, []);

    return (
        <div className="map-list-container">
            <FiltersForm setAccommodations={setAccommodations} />
            <AccommodationList accommodations={accommodations} setSelected={setSelected} />
            <Map accommodations={accommodations} selectedProp={selected} />
        </div>
    );
};

export default MapWithListAndForm;