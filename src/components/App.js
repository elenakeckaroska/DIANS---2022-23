import React, { useState } from 'react';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import MapWithListAndForm from './MapWithListAndForm';
import Login from './Login';
import Register from './Register';
import AccommodationInfo from './AccommodationInfo';
import Header from './Header';
import { ContextProvider } from '../contexts/Context';

const App = () => {

    const [user, setUser] = useState(null);

    return (
        <ContextProvider>
            <BrowserRouter>
                <Header user={user} setUser={setUser} />
                <Routes>
                    <Route path="/" exact element={<MapWithListAndForm user={user}/>} />
                    <Route path="/login" element={<Login setUser={setUser} />} />
                    <Route path="/register" element={<Register />} />
                    <Route path="/accommodation/:id" element={<AccommodationInfo />} />
                </Routes>
            </BrowserRouter>
        </ContextProvider>
    );

}

export default App;