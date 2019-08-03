import React from 'react';
import { useState } from 'react';
import Elm from 'react-elm-components'
import Main from './elm/Main.elm';

import './App.css';


function App() {

    const [value, setValue] = useState(0);

    return (
    <div className={"react-view"}>
        <Elm src={Main}/>
        <h2>This section controlled by React</h2>
        <button onClick={() => setValue(value + 1)}>+ { value }</button>
    </div>
    );
}

export default App;
