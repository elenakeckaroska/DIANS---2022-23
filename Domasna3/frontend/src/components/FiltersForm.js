import React, { useState, useContext } from 'react';
import { Context } from '../contexts/Context';
import axios from 'axios';
import qs from 'qs';

const stars = [5, 4, 3, 2, 1];
const cities = ['Берово', 'Битола', 'Гевгелија', 'Кавадарци', 
    'Куманово', 'Охрид', 'Прилеп', 'Скопје', 'Струга', 'Струмица', 'Тетово'];
const propertyTypes = [
    { name: 'apartment', value: 'Апартмани'},
    { name: 'guest_house', value: 'Гостински куќи'},
    { name: 'hostel', value: 'Хостели'},
    { name: 'hotel', value: 'Хотели'}
];

const FiltersForm = () => {

    const [checkedStars, setCheckedStars] = useState(new Array(stars.length).fill(false));
    const [checkedCities, setCheckedCities] = useState(new Array(cities.length).fill(false));
    const [checkedPropertyTypes, setCheckedPropertyTypes] = useState(new Array(propertyTypes.length).fill(false))
    const [checkedInternetAccess, setCheckedInternetAcces] = useState(false);
    const { setAccommodations } = useContext(Context);

    const handleStarsChange = (position) => {
        const updatedCheckedState = checkedStars.map((item, index) => index === position ? !item : item);

        setCheckedStars(updatedCheckedState);
    }

    const handleCitiesChange = (position) => {
        const updatedCheckedState = checkedCities.map((item, index) => index === position ? !item : item);

        setCheckedCities(updatedCheckedState);
    }

    const handlePropertyTypesChange = (position) => {
        const updatedCheckedState = checkedPropertyTypes.map((item, index) => index === position ? !item : item);

        setCheckedPropertyTypes(updatedCheckedState);
    }

    const handleSubmit = async (event) => {
        event.preventDefault();

        const cityParams = cities.map((c, i) => checkedCities[i] ? c : undefined);
        const starsParams = stars.map((s, i) => checkedStars[i] ? s : undefined);
        const propertyTypesParams = propertyTypes.map((pt, i) => checkedPropertyTypes[i] ? pt.name : undefined);
        // With this logic if the internet access checkbox is not selected we treat it as if
        // the user doesn't want internet access not as if he doesn't care
        const internetAccessParam = checkedInternetAccess ? 'yes' : 'no';

        const axiosInstance = axios.create({
            paramsSerializer: {
              encode: qs.parse,
              serialize: (params) => qs.stringify(params, {arrayFormat: 'repeat'}),
            }
        });

        let { data } = await axiosInstance.get('http://localhost:8080/accommodation/filter', {
            params: {
              city: cityParams,
              stars: starsParams,
              internet_access: internetAccessParam,
              property_type: propertyTypesParams
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

    const renderPropertyTypesInputs = propertyTypes.map((item, idx) => {
        return (
            <div key={idx} className="field">
                <label htmlFor={item.name} className="input-label">
                    <input 
                        type="checkbox"
                        id={item.name}
                        name="property_type"
                        checked={checkedPropertyTypes[idx]} 
                        onChange={() => handlePropertyTypesChange(idx)}
                    /> 
                    {item.value}
                </label>
            </div>
        );
    });    

    return (
        <form className="ui form overflow">
            <div className="grouped fields">
                <h3>Ѕвезди</h3>
                {renderStarsInputs}
                <div className="ui divider"></div>
                <h3>Градови</h3>
                {renderCitiesInputs}
                <div className="ui divider"></div>
                <div className="field">
                    <label htmlFor="internet_access" className="input-label">
                        <input 
                            type="checkbox"
                            id="internet_access"
                            name="internet_access"
                            checked={checkedInternetAccess} 
                            onChange={() => setCheckedInternetAcces(prev => !prev)}
                        /> 
                        Интернет пристап
                    </label>
                </div>
                <div className="ui divider"></div>
                {renderPropertyTypesInputs}
            </div>
            <button className="ui blue button" onClick={(e) => handleSubmit(e)}>Прикажи</button>
        </form>
    );
};

export default FiltersForm;