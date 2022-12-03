import React from 'react';
import { Link } from 'react-router-dom';

const AccommodationCard = ({ id, name, website, stars, lat, lon, setSelected }) => {

    return (
        <div className="ui card">
            <div className="content">
                <a href={website}>
                    <div className="header"><b>{name}</b></div>
                </a>
                <div className="description">
                    {stars} <i aria-hidden="true" className="yellow star icon"></i>
                </div>
                <div className="description show-on-map" onClick={() => setSelected({ id: id, center: [lat, lon]})}>
                    Прикажи на мапа <i aria-hidden="true" className="blue map marker alternate icon"></i>
                </div>
                {/* Here I need to use history object and push new url on click*/}
                <div className="meta">
                    <Link to={`/accommodation/${id}`}>
                        Види повеќе...
                    </Link>
                </div>
                <a className="heart-link">
                    <i aria-hidden="true" className="big heart outline icon"></i>
                </a>
            </div>
        </div>
    );
}

export default AccommodationCard;