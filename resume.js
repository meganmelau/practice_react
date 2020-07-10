import React, { Component } from 'react';
import { Grid, Cell } from 'react-mdl';
import Education from './education';
import Experience from './experience';
import Skills from './skills';


class Resume extends Component {
  render() {
    return(
      <div>
        <Grid>
          <Cell col={4}>
            <div style={{textAlign: 'center'}}>
              <img
                src="https://www.shareicon.net/download/2015/09/18/103157_man_512x512.png"
                alt="avatar"
                style={{height: '200px'}}
                 />
            </div>

            <h2 style={{paddingTop: '2em'}}>FoodAlert</h2>
            <h4 style={{color: 'grey'}}>About Us</h4>
            <hr style={{borderTop: '3px solid #833fb2', width: '50%'}}/>
            <p>We are FoodAlert.</p>
            <hr style={{borderTop: '3px solid #833fb2', width: '50%'}}/>
            <h5>How to contact us</h5>
            <p>Email</p>
            <h5>Phone</h5>
            <p>(123) 456-7890</p>
            <h5>Email</h5>
            <p>someone@example.com</p>
            <h5>Web</h5>
            <p>mywebsite.com</p>
            <hr style={{borderTop: '3px solid #833fb2', width: '50%'}}/>
          </Cell>
          <Cell className="resume-right-col" col={8}>
            <h2>How it works</h2>


            <Education
              startYear={2020}
              endYear={8}
              schoolName="SummerHacks"
              schoolDescription="s"
               />

               
                <hr style={{borderTop: '3px solid #e22947'}} />

              <h2>Why FoodAlert</h2>



          </Cell>
        </Grid>
      </div>
    )
  }
}

export default Resume;
