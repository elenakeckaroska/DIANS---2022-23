import React from 'react';

const AccommodationCard = ({ id, name, website, stars }) => {

    return (
        <div className="ui card">
            <div className="content">
                <a href={website}>
                    <div className="header">{name}</div>
                </a>
                <div className="description">{stars} stars
                </div>
                {/* Here I need to use history object and push new url on click*/}
                <div className="meta">See more...</div>
            </div>
        </div>
    );
}

export default AccommodationCard;