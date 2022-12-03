import React, { useState } from 'react';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import MapWithListAndForm from './MapWithListAndForm';
import Login from './Login';
import Register from './Register';
import AccommodationInfo from './AccommodationInfo';
import Header from './Header';

const App = () => {

    const [user, setUser] = useState(null);

    console.log(user);

    return (
        <BrowserRouter>
            <Header user={user} setUser={setUser} />
            <Routes>
                <Route path="/" exact element={<MapWithListAndForm />} />
                <Route path="/login" element={<Login setUser={setUser} />} />
                <Route path="/register" element={<Register setUser={setUser} />} />
                <Route path="/accommodation/:id" element={<AccommodationInfo />} />
            </Routes>
        </BrowserRouter>
    );

}

export default App;