import React from 'react';

function Car({ car }) {
  return (
    <div className="section">
      <h3>{car.model}</h3>
    </div>
  );
}

export default Car;
