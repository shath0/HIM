<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="him-system" name="Heresy in Miniature v3.0" revision="7" battleScribeVersion="2.03" authorName="Heresy in Miniature" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
  <costTypes><costType id="pts" name="pts" defaultCostLimit="500"/></costTypes>
  <profileTypes>
    <profileType id="pt-unit" name="Unit"><characteristicTypes>
      <characteristicType id="ct-mv" name="Mv"/><characteristicType id="ct-atk" name="Atk"/>
      <characteristicType id="ct-skill" name="Skill"/><characteristicType id="ct-sv" name="Sv"/>
      <characteristicType id="ct-hp" name="HP"/><characteristicType id="ct-ld" name="Ld"/>
    </characteristicTypes></profileType>
    <profileType id="pt-weapon" name="Weapon"><characteristicTypes>
      <characteristicType id="cw-range" name="Range"/><characteristicType id="cw-w" name="W"/>
      <characteristicType id="cw-ap" name="AP"/><characteristicType id="cw-keywords" name="Keywords"/>
    </characteristicTypes></profileType>
  </profileTypes>
  <categoryEntries>
    <categoryEntry id="cat-hq" name="HQ" hidden="false"/>
    <categoryEntry id="cat-troops" name="Troops" hidden="false"/>
    <categoryEntry id="cat-elites" name="Elites" hidden="false"/>
    <categoryEntry id="cat-heavy" name="Heavy Support" hidden="false"/>
    <categoryEntry id="cat-fast" name="Fast Attack" hidden="false"/>
    <categoryEntry id="cat-low" name="Lord of War" hidden="false"/>
    <categoryEntry id="cat-transport" name="Dedicated Transport" hidden="false"/>
    <categoryEntry id="cat-flyer" name="Flyer" hidden="false"/>
    <categoryEntry id="cat-fort" name="Fortification" hidden="false"/>
    <categoryEntry id="cat-allies" name="Allied Detachment" hidden="false"/>
  </categoryEntries>
  <forceEntries>
    <forceEntry id="force-crusade" name="Crusade Force (300-750 pts)" hidden="false"><categoryLinks>
      <categoryLink id="fl-c-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-c-hq" type="min"/>
        <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-c-hq" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-c-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-c-tr" type="min"/>
        <constraint field="selections" scope="force" value="6" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-c-tr" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-c-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-c-el" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-c-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-c-hs" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-c-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-c-fa" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-c-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-c-fly" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-c-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-c-low" type="max"/>
        <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-c-low-pct" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-c-tr2" name="Transport" targetId="cat-transport" primary="false">
      </categoryLink>
      <categoryLink id="fl-c-aux" name="Auxiliary" targetId="cat-allies" primary="false">
      </categoryLink>
    </categoryLinks></forceEntry>
    <forceEntry id="force-garrison" name="Garrison Force (300-500 pts)" hidden="false"><categoryLinks>
      <categoryLink id="fl-g-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-g-hq" type="min"/>
        <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-g-hq" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-g-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-g-tr" type="min"/>
        <constraint field="selections" scope="force" value="8" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-g-tr" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-g-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-g-el" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-g-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="4" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-g-hs" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-g-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-g-fa" type="max"/>
        </constraints>
      </categoryLink>
    </categoryLinks></forceEntry>
    <forceEntry id="force-spearhead" name="Spearhead Force (500-750 pts)" hidden="false"><categoryLinks>
      <categoryLink id="fl-s-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-s-hq" type="min"/>
        <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-s-hq" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-s-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-s-tr" type="min"/>
        <constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-s-tr" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-s-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-s-el" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-s-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-s-hs" type="min"/>
        <constraint field="selections" scope="force" value="5" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-s-hs" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-s-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-s-fa" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-s-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-s-low" type="max"/>
        <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-s-low-pct" type="max"/>
        </constraints>
      </categoryLink>
    </categoryLinks></forceEntry>
    <forceEntry id="force-recon" name="Recon Force (200-400 pts)" hidden="false"><categoryLinks>
      <categoryLink id="fl-r-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-r-hq" type="min"/>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-r-hq" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-r-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-r-tr" type="min"/>
        <constraint field="selections" scope="force" value="4" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-r-tr" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-r-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-r-el" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-r-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-r-hs" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-r-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-r-fa" type="max"/>
        </constraints>
      </categoryLink>
    </categoryLinks></forceEntry>
    <forceEntry id="force-auxilia" name="Solar Auxilia Tercio (300-750 pts)" hidden="false"><categoryLinks>
      <categoryLink id="fl-a-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-a-hq" type="min"/>
        <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-a-hq" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-a-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-a-tr" type="min"/>
        <constraint field="selections" scope="force" value="8" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-a-tr" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-a-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-a-el" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-a-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-a-hs" type="min"/>
        <constraint field="selections" scope="force" value="4" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-a-hs" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-a-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-a-fa" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-a-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-a-fly" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-a-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-a-low" type="max"/>
        <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-a-low-pct" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-a-tr2" name="Transport" targetId="cat-transport" primary="false">
      </categoryLink>
    </categoryLinks></forceEntry>
    <forceEntry id="force-mechanicum" name="Mechanicum Taghmata (300-750 pts)" hidden="false"><categoryLinks>
      <categoryLink id="fl-m-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-m-hq" type="min"/>
        <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-m-hq" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-m-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-m-tr" type="min"/>
        <constraint field="selections" scope="force" value="6" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-m-tr" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-m-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="4" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-m-el" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-m-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-m-hs" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-m-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-m-fa" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-m-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-m-low" type="max"/>
        </constraints>
      </categoryLink>
    </categoryLinks></forceEntry>
    <forceEntry id="force-militia" name="Militia Levy (200-500 pts)" hidden="false"><categoryLinks>
      <categoryLink id="fl-mi-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-mi-hq" type="min"/>
        <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-mi-hq" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-mi-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="4" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-mi-tr" type="min"/>
        <constraint field="selections" scope="force" value="10" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-mi-tr" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-mi-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-mi-el" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-mi-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="4" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-mi-hs" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-mi-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-mi-fa" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-mi-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-mi-fly" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-mi-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-mi-low" type="max"/>
        <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-mi-low-pct" type="max"/>
        </constraints>
      </categoryLink>
    </categoryLinks></forceEntry>
    <forceEntry id="force-knights" name="Questoris Household (400-750 pts)" hidden="false"><categoryLinks>
      <categoryLink id="fl-k-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-k-hq" type="min"/>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-k-hq" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-k-low" name="Knights" targetId="cat-low" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-k-low" type="min"/>
        <constraint field="selections" scope="force" value="6" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-k-low" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-k-fa" name="Armigers" targetId="cat-fast" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="4" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-k-fa" type="max"/>
        </constraints>
      </categoryLink>
    </categoryLinks></forceEntry>
    <forceEntry id="force-talons" name="Talons of the Emperor (Auxiliary)" hidden="false"><categoryLinks>
      <categoryLink id="fl-t-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-t-hq" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-t-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-t-tr" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-t-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-t-el" type="min"/>
        <constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-t-el" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-t-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-t-fa" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-t-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-t-hs" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-t-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-t-fly" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-t-tr2" name="Transport" targetId="cat-transport" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-t-tr2" type="max"/>
        </constraints>
      </categoryLink>
    </categoryLinks></forceEntry>
    <forceEntry id="force-daemons" name="Daemonic Host (Auxiliary)" hidden="false"><categoryLinks>
      <categoryLink id="fl-d-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-d-hq" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-d-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-d-tr" type="min"/>
        <constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-d-tr" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-d-low" name="Greater Daemon" targetId="cat-low" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-d-low" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-d-hs" name="Daemon Engines" targetId="cat-heavy" primary="false">
        <constraints>
        <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-d-hs" type="max"/>
        </constraints>
      </categoryLink>
    </categoryLinks></forceEntry>
  </forceEntries>
  <sharedRules>
    <rule id="rule-charger-first" name="Charger Strikes First" hidden="false"><description>On the charge turn, the charging unit resolves attacks before the defender. +1 to Hit. Defender strikes back if alive. Subsequent melee rounds are simultaneous.</description></rule>
    <rule id="rule-degraded" name="Degraded Firepower" hidden="false"><description>At half HP threshold, unit suffers -1 Atk (minimum 1).</description></rule>
    <rule id="rule-model-removal" name="Model Removal" hidden="false"><description>Remove ~1 model per HP lost. Minimum squad size: 2 models (1 for Characters/Vehicles).</description></rule>
    <rule id="rule-vehicle-destruction" name="Vehicle Destruction" hidden="false"><description>D6 on death: 1=Wreck, 2-3=Minor Explosion, 4-5=Major Explosion, 6=Catastrophic Detonation.</description></rule>
    <rule id="rule-titan-kill" name="Titan Kill" hidden="false"><description>Fall direction + Crushing Impact + Reactor Meltdown + Morale Shockwave. See core rules Section 12.</description></rule>
    <rule id="rule-line" name="Line" hidden="false"><description>This unit scores objectives.</description></rule>
    <rule id="rule-commander" name="Commander" hidden="false"><description>Provides +1 Ld within 6&quot;. Grants 3 Reactions/round instead of 2.</description></rule>
    <rule id="rule-deep-strike" name="Deep Strike" hidden="false"><description>Deploy from reserve starting Round 2. Place anywhere &gt;3&quot; from enemy.</description></rule>
    <rule id="rule-fearless" name="Fearless" hidden="false"><description>Auto-pass all Morale checks.</description></rule>
    <rule id="rule-chosen" name="Chosen Warriors" hidden="false"><description>May issue and accept Challenges.</description></rule>
    <rule id="rule-implacable" name="Implacable" hidden="false"><description>Never Pinned. Always moves at full Mv.</description></rule>
    <rule id="rule-scout" name="Scout" hidden="false"><description>Deploy 2&quot; further forward.</description></rule>
    <rule id="rule-infiltrate" name="Infiltrate" hidden="false"><description>Deploy anywhere &gt;3&quot; from enemy.</description></rule>
    <rule id="rule-fast" name="Fast" hidden="false"><description>Jink: +1 Sv vs shooting if moved this round.</description></rule>
    <rule id="rule-psyker" name="Psyker" hidden="false"><description>May manifest psychic powers. ML indicates number of powers per round.</description></rule>
    <rule id="rule-daemon" name="Daemon" hidden="false"><description>Fearless. Invulnerable 5+. Instability: D6 end of round, 1=-1HP, 6=+1HP. Null Vulnerability.</description></rule>
    <rule id="rule-no-overwatch" name="No Overwatch (World Eaters)" hidden="false"><description>This unit may never fire Overwatch when charged.</description></rule>
    <rule id="rule-must-advance" name="Must Advance When Shooting" hidden="false"><description>When shooting, must also advance half Mv toward nearest enemy.</description></rule>
    <rule id="rule-null-zone" name="Null Zone" hidden="false"><description>Enemy Psykers within range cannot manifest. Daemons suffer -1 Atk, -1 Hit.</description></rule>
    <rule id="rule-null-aegis" name="Null Aegis" hidden="false"><description>Requires Custodes + Sisters within 3&quot;. Psychic Immunity, Daemon Bane, Warp Denial, +1 Reaction.</description></rule>
    <rule id="rule-emperors-light" name="Boon: Emperor&#x27;s Light (Loyalist Innate)" hidden="false"><description>CAMPAIGN ONLY. +1 Ld to all units within 6&quot; of a Character. While Commander is alive, all units gain +1 Ld.</description></rule>
    <rule id="rule-vengeance" name="Boon: Vengeance for Fallen (Campaign Only)" hidden="false"><description>CAMPAIGN ONLY. Character destroyed: all friendlies +1 Atk for 1 round.</description></rule>
    <rule id="rule-dark-pact" name="Boon: Dark Pact (Campaign Only)" hidden="false"><description>+1 to 1 stat, 1 unit, 1 game. D6 at end: on 1 unit destroyed.</description></rule>
    <rule id="rule-terror-tactics" name="Boon: Terror Tactics (Campaign Only)" hidden="false"><description>CAMPAIGN ONLY. All Traitor charges inflict -1 Ld on the target for the melee combat.</description></rule>
    <rule id="rule-rite-pride" name="Rite: Pride of the Legion" hidden="false"><description>Veterans/Terminators as Troops with Line. Warlord +1 Atk.</description></rule>
    <rule id="rule-rite-orbital" name="Rite: Orbital Assault" hidden="false"><description>All infantry in reserve. No scatter on DS. Half deploy Round 1.</description></rule>
    <rule id="rule-rite-fury" name="Rite: Fury of the Ancients" hidden="false"><description>Dreadnoughts as Troops with Line. +1 Atk.</description></rule>
      <rule id="rule-low-cap" name="Lord of War Cap (25%)" hidden="false"><description>Lord of War selections may not exceed 25% of your total army points. Primarchs (155-180 pts) require 620+ pt games. Titans require even larger. No LoW below 500 pts.</description></rule>
</sharedRules>
</gameSystem>