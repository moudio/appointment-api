import React from 'react';
import ReactDOM from 'react-dom';
import ReactFullpage from '@fullpage/react-fullpage';
import PropTypes from 'prop-types';
import './Cars.css';
import Car from './Car';
import { Header, Footer, SectionsContainer, Section } from 'react-fullpage';

class Cars extends React.Component {
  render() {
    return (
      <ReactFullpage
        scrollOverflow={true}
        sectionsColor={['orange', 'purple', 'green']}
        render={({ state, fullpageApi }) => {
          return (
            <div id="fullpage-wrapper">
              <div className="section section1">
                <h3>Section 1</h3>
              </div>
              <div className="section">
                <div className="slide">
                  <h3>Slide 2.1</h3>
                </div>
                <div className="slide">
                  <h3>Slide 2.2</h3>
                </div>
                <div className="slide">
                  <h3>Slide 2.3</h3>
                </div>
              </div>
              <div className="section">
                <h3>Section 3</h3>
                <button onClick={() => fullpageApi.moveTo(1, 0)}>
                  Move top
                </button>
              </div>
            </div>
          );
        }}
      />
    );
  }
}

export default Cars;
