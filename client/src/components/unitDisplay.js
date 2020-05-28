import React, { Component } from 'react';
import UnitCountersList from './unitCountersList.js'
import UnitDescription from './unitDescription.js'
import UnitStats from './unitStats.js'
import UnitName from './unitName.js'
import UnitPicture from './unitPicture.js'
import UnitCivilizationsList from './unitCivilizationsList.js'
import UnitBuilding from './unitBuilding.js'


export default class UnitDisplay extends Component {
  render () {
    return (
      <div className='unit-display container'>
        <div className='unit-info container'>
            <div className='unit-name-picture'>
              <UnitName name={this.props.unit.name} id={this.props.unit.id}/>
              <UnitPicture size='big' url={this.props.unit.picture_url}/>
            </div>
          <UnitCivilizationsList civs={this.props.unit.civilizations}/>
          <div className='unit-building-description container'>
          <UnitBuilding building={this.props.unit.building}/>
          <UnitDescription description={this.props.unit.description}/>
          </div>
          <UnitStats unit={this.props.unit}/>
        </div>
        <div className='unit-counter-columns container'>
          <UnitCountersList counters={true}  direct_counters={this.props.unit.direct_counters} tactical_counters={this.props.unit.tactical_counters}/>
          <UnitCountersList counters={false} direct_counters={this.props.unit.direct_countered} tactical_counters={this.props.unit.tactical_countered}/>
        </div>
      </div>
    )
  }
}