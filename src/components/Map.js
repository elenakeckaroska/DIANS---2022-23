import {MapContainer, Marker, Popup, TileLayer} from "react-leaflet";
import {icon} from "../icons/Icon";
import React from "react";

const Map = ({accommodations}) => {
    const renderAccommodations = accommodations.map((acc) => {
        return (
                <Marker key={acc.id} position={[acc.latitude, acc.longitude]} icon={icon}>
                    <Popup>
                        Name: {acc.name}
                    </Popup>
                </Marker>
        );
    });

    return (
        <MapContainer center={[41.99, 21.42]} zoom={13}>

            <TileLayer
                attribution='&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
                url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
            />
            {renderAccommodations}
        </MapContainer>
    );
}

export default Map;