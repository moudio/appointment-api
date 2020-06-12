import React from 'react';

function Car({ car }) {
  return (
    <div className="Car">
      <p>{car.model}</p>
      <p>{car.description}</p>
    </div>
  );
}

export default Car;
