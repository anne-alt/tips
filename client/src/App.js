import './App.css';
import { BrowserRouter as Router, Route, Routes, redirect } from "react-router-dom";
import Products from './products';


function App() {
  return (
    <Router>
      <Routes>
        <Route exact path="/" element={<Products />} />
      </Routes>
    </Router>
  );
}

export default App;
