import React from 'react';
import Elm from 'react-elm-components';
import Main from './elm/src/Main.elm';

import './App.css';

function App() {
  return (
    <>
      <Elm src={Main}/>
    </>
  );
}

export default App;
