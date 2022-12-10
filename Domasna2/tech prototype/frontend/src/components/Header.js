import React, { useContext } from 'react';
import { Link, useNavigate  } from 'react-router-dom';
import { Context } from '../contexts/Context';
import axios from 'axios';

const Header = ({ user, setUser }) => {

    const { accommodations, setAccommodations } = useContext(Context);
    const navigate = useNavigate();

    const handleClick = (event) => {
        event.preventDefault();

        let resetAccommodations = accommodations.map(d => ({ ...d, favourite: 'false' }));
        setAccommodations(resetAccommodations);

        axios.post('http://localhost:8080/logout')
                .then((response) => {
                    setUser(null);
                    navigate('/');
                })
                .catch((error) => {
                    console.log(error);
                });
    }

    return (
        <div className="ui menu">
            <Link className="item" to="/"><i aria-hidden="true" className="blue home icon"></i></Link>
            {user ? (
                <>
                    <div className="item">{user}</div>
                    <Link className="item" to={`/${user}/favourites`}>Омилени</Link>
                    <a className="item" href="#" onClick={(e) => handleClick(e)}>Одјави се</a>
                </>
                ) : (
                <>
                    <Link className="item" to="/login">Најави се</Link>
                    <Link className="item" to="/register">Регистрирај се</Link>
                </>
            )}            
        </div>
    );
};

export default Header;