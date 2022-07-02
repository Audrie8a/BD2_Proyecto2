import React from "react";
import { BrowserRouter, Route, Routes } from "react-router-dom";

import history from './history';
import ResumenNetflix from "./pages/ResumenNetflix";

function App() {
  return (
    <BrowserRouter history={history} forceRefresh={true}>
      <Routes>
        <Route exact path="/Inicio" element={<ResumenNetflix/>}/>
        <Route exact path="*" element={<ResumenNetflix/>}/>
      </Routes>
    </BrowserRouter>
  );
}

export default App;
