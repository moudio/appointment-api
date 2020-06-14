import React from 'react';
import './Car.css'
function Car({ car }) {

  return (
    <div className={`section-${car.alt} section`}>
      <h3>{car.model}</h3>
     
    </div>
  );
}

export default Car;
