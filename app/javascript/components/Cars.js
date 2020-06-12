import React, { Component } from 'react';
import PropTypes from 'prop-types';
import Car from './Car';
export class Cars extends Component {
  static propTypes = {};

  render() {
    return (
      <div>
        {this.props.cars.map((car) => {
          return <Car key={Math.random()} car={car} />;
        })}
      </div>
    );
  }
}

export default Cars;
