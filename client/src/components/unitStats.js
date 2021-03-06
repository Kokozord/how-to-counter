import React, { Component } from 'react';
export default class UnitStats extends Component {
  render () {
    let unit = this.props.unit
    return (
      <div className='unit-stats container'>
        <div className='unit-stats header'>Stats</div>
        <div className='unit-stat'><img src='/stats/health.png' alt='health' width='20px' height='20px'/><span>HP: </span> {unit.hp}</div>
        <div className='unit-stat'><img src='/stats/attack.png' alt='attack' width='20px' height='20px'/><span>Attack: </span> {unit.attack}</div>
        <div className='unit-stat'><img src='/stats/armor.png' alt='armor' width='20px' height='20px'/><span>Melee Armor:</span> {unit.armor}</div>
        <div className='unit-stat'><img src='/stats/pierce.png' alt='pierce' width='20px' height='20px'/><span>Pierce Armor:</span> {unit.pierce_armor}</div>
      </div>
    )
  }
}