import React, { useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import axios from 'axios';

const initialErrors = {
    emptyError: "",
    doesntExistError: "",
}

const Login = ({ setUser }) => {

    const [username, setUsername] = useState('');
    const [password, setPassword] = useState('');
    const [errors, setErrors] = useState(initialErrors);
    const navigate = useNavigate();

    const handleSubmit = (event) => {
        event.preventDefault();
        if (!username || !password) {
            setErrors({ ...errors, emptyError: "Ве молиме пополнете ги сите полиња!"});
        }
        else {
            const params = new URLSearchParams({ username, password });
            axios.post('http://localhost:8080/login', params, { headers: {'content-type': 'application/x-www-form-urlencoded'}})
                .then((response) => {
                    setUser(username);
                    navigate('/');
                })
                .catch((error) => {
                    setErrors({ errors, doesntExistError: "Внесените информации не се валидни. Обидете се повторно!"});
                });
        }
        
    }

    return (
        <div>
            <form className="ui form login-register-form">
                <div className="field">
                    <label>Корисничко име</label>
                    <input 
                        placeholder="Корисничко име"
                        onChange={(e) => setUsername(e.target.value)}
                        value={username}
                    />
                </div>
                <div className="field">
                    <label>Лозинка</label>
                    <input 
                        placeholder="Лозинка"
                        type="password"
                        onChange={(e) => setPassword(e.target.value)}
                        value={password}
                    />
                    {errors.emptyError && <div className="ui red basic label">{errors.emptyError}</div>}
                    {errors.doesntExistError && <div className="ui red basic label">{errors.doesntExistError}</div>}
                </div>
                <button className="ui primary button" type="submit" onClick={(e) => handleSubmit(e)} >Најава</button>
                <Link to="/register" className="ui button">Регистрирај се</Link>
            </form>
        </div>
    );
};

export default Login;