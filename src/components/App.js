import React, { useState } from 'react';
import Map from './Map';
import AccommodationList from "./AccommodationList";

import 'leaflet/dist/leaflet.css';
import '../styles/App.css';


// ['latitude', 'longitude', 'name', 'property_type', 'website', 'stars', 'email',
// 'phone', 'city', 'postcode', 'street', 'house_number', 'smoking', 'rooms',
// 'internet_access', 'internet_access_fee', 'municipality']
const dummy = [
    {
        id: 1,
        latitude: 41.99,
        longitude: 21.42,
        name: "Hotel 1",
        property_type: "Hotel",
        website: "https://metropol-ohrid.com.mk/",
        stars: 3.5,
        email: "email1",
        phone: "123456",
        city: "Skopje",
        postcode: "1000",
        street: "ul. Partizanska",
        house_number: "42",
        smoking: "yes",
        rooms: "50",
        internet_access: "yes",
        internet_access_fee: "5",
        municipality: "Skopje"
    },
    {
        id: 2,
        latitude: 42.008,
        longitude: 21.411,
        name: "Hotel 2",
        property_type: "Hotel",
        website: "website2",
        stars: 2.5,
        email: "email2",
        phone: "124575727",
        city: "Skopje",
        postcode: "1000",
        street: "ul. Partizanska",
        house_number: "26",
        smoking: "yes",
        rooms: "40",
        internet_access: "yes",
        internet_access_fee: "10",
        municipality: "Skopje"
    },
    {
        id: 4,
        latitude: 42.008,
        longitude: 21.411,
        name: "Hotel 2",
        property_type: "Hotel",
        website: "website2",
        stars: 2.5,
        email: "email2",
        phone: "124575727",
        city: "Skopje",
        postcode: "1000",
        street: "ul. Partizanska",
        house_number: "26",
        smoking: "yes",
        rooms: "40",
        internet_access: "yes",
        internet_access_fee: "10",
        municipality: "Skopje"
    },
    {
        id: 5,
        latitude: 42.008,
        longitude: 21.411,
        name: "Hotel 2",
        property_type: "Hotel",
        website: "website2",
        stars: 2.5,
        email: "email2",
        phone: "124575727",
        city: "Skopje",
        postcode: "1000",
        street: "ul. Partizanska",
        house_number: "26",
        smoking: "yes",
        rooms: "40",
        internet_access: "yes",
        internet_access_fee: "10",
        municipality: "Skopje"
    }
];

const App = () => {

    // TODO: Change to empty array and populate in useEffect with axios call to backend
    const [accommodations, setAccommodations] = useState(dummy);

    // This is just to prove that updating markers dynamically re-renders the map!
    const handleButtonClick = () => {
        setAccommodations([...accommodations, {
            id: 3,
            latitude: 43.008,
            longitude: 19.411,
            name: "Hotel 3",
            property_type: "Hotel",
            website: "website3",
            stars: 4.5,
            email: "email3",
            phone: "124575727",
            city: "Skopje",
            postcode: "1000",
            street: "ul. Partizanska",
            house_number: "11",
            smoking: "yes",
            rooms: "40",
            internet_access: "yes",
            internet_access_fee: "10",
            municipality: "Skopje"
        }])
    }

    return (
        <div className="app-container">
            {/*<button onClick={handleButtonClick}>Add new marker!</button>*/}
            <AccommodationList accommodations={accommodations}/>
            <Map accommodations={accommodations}/>
        </div>
    );
};

export default App;