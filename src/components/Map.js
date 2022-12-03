import { MapContainer, Marker, Popup, TileLayer, useMap } from "react-leaflet";
import { icon } from "../icons/Icon";
import React, { useState, useEffect, createRef } from "react";

const Map = ({accommodations, selectedProp }) => {
    const numAccommodations = accommodations.length;
    const [markerRefs, setMarkerRefs] = useState([]);

    useEffect(() => {
        setMarkerRefs(new Array(numAccommodations).fill(null).map(() => createRef()));
      }, [numAccommodations]);

    function SetCenterAndTriggerPopup({ center, id }) {

        const map = useMap();
        map.setView(center, map.getZoom());  

        useEffect(() => {
            
            if(id) {
                markerRefs.forEach((r) => {
                    let refId = r.current.options.id;
                    if (refId === id) {
                        r.current.openPopup();
                    }                
                });
                
            }
        }, [center, id]);        

        return null;
    }

    const renderAccommodations = accommodations.map((acc, i) => {
        return (
                <Marker                     
                    key={acc.id}
                    position={[acc.latitude, acc.longitude]} 
                    icon={icon}
                    ref={markerRefs[i]}
                    id={acc.id}
                >
                    <Popup>
                        <h4>{acc.name}</h4>
                    </Popup>
                </Marker>
        );
    });

    const defaultCenter = [41.99, 21.42];

    return (
        <MapContainer center={defaultCenter} zoom={13}>
            <SetCenterAndTriggerPopup 
                center={selectedProp ? selectedProp.center : defaultCenter} 
                id={selectedProp ? selectedProp.id : null}
            />
            <TileLayer
                attribution='&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
                url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
            />
            {renderAccommodations}
        </MapContainer>
    );
}

export default Map;