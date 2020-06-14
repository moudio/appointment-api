import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { AiOutlineMenu } from 'react-icons/ai';
import './Navigation.css';
export const Navigation = () => {
  function toggleMenu() {
    const menu = document.querySelector('.menu-list');
    if (!menu.classList.contains('appear')) {
      document.querySelector('.Navigation').classList.add('full-width');
      menu.classList.remove('disappear');
      menu.classList.add('appear');
    } else {
      menu.classList.remove('appear');
      menu.classList.add('disappear');
      document.querySelector('.Navigation').classList.remove('full-width');
    }
  }
  return (
    <>
      <nav className="Navigation">
        <div className="menu-icon">
          <AiOutlineMenu className="breadcrumb" onClick={() => toggleMenu()} />
        </div>
        <ul className="menu-list disappear">
          <li>Home</li>
          <li>About</li>
          <li>Menu</li>
          <li>Contact</li>
        </ul>
      </nav>
    </>
  );
};

export default Navigation;
