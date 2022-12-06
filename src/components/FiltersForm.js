import React, { useState, useContext } from 'react';
import { Context } from '../contexts/Context';
import axios from 'axios';
import qs from 'qs';

const stars = [5, 4, 3, 2, 1];
const cities = ['Берово', 'Битола', 'Гевгелија', 'Кавадарци', 
    'Куманово', 'Охрид', 'Прилеп', 'Скопје', 'Струга', 'Струмица', 'Тетово'];

const FiltersForm = () => {

    const [checkedStars, setCheckedStars] = useState(new Array(stars.length).fill(false));
    const [checkedCities, setCheckedCities] = useState(new Array(cities.length).fill(false));
    const { setAccommodations } = useContext(Context);

    const handleStarsChange = (position) => {
        const updatedCheckedState = checkedStars.map((item, index) => index === position ? !item : item);

        setCheckedStars(updatedCheckedState);
    }

    const handleCitiesChange = (position) => {
        const updatedCheckedState = checkedCities.map((item, index) => index === position ? !item : item);

        setCheckedCities(updatedCheckedState);
    }

    const handleSubmit = async (event) => {
        event.preventDefault();

        const cityParams = cities.map((c, i) => checkedCities[i] ? c : undefined);
        const starsParams = stars.map((s, i) => checkedStars[i] ? s : undefined);

        const axiosInstance = axios.create({
            paramsSerializer: {
              encode: qs.parse,
              serialize: (params) => qs.stringify(params, {arrayFormat: 'repeat'}),
            }
        });

        const { data } = await axiosInstance.get('http://localhost:8080/accommodation/filter', {
            params: {
              city: cityParams,
              stars: starsParams
            }
        });

        setAccommodations(data);
    }

    const renderStarsInputs = stars.map((item, idx) => {
        return (
            <div key={idx} className="field">
                <label htmlFor={item} className="input-label">
                    <input 
                        type="checkbox" 
                        id={item}
                        name="stars"
                        checked={checkedStars[idx]} 
                        onChange={() => handleStarsChange(idx)}
                    /> 
                    {item}
                </label>
            </div>
        );
    });

    const renderCitiesInputs = cities.map((item, idx) => {
        return (
            <div key={idx} className="field">
                <label htmlFor={item} className="input-label">
                    <input 
                        type="checkbox"
                        id={item}
                        name="city"
                        checked={checkedCities[idx]} 
                        onChange={() => handleCitiesChange(idx)}
                    /> 
                    {item}
                </label>
            </div>
        );
    });    

    return (
        <form className="ui form">
            <div className="grouped fields">
                <h3>Ѕвезди</h3>
                {renderStarsInputs}
                <div className="ui divider"></div>
                <h3>Градови</h3>
                {renderCitiesInputs}
                <div className="ui divider"></div>
            </div>
            <button className="ui blue button" onClick={(e) => handleSubmit(e)}>Прикажи</button>
        </form>
    );
};

export default FiltersForm;