<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="him-system" name="Heresy in Miniature v3.0" revision="9" battleScribeVersion="2.03" authorName="Heresy in Miniature" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
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
    <!-- Battlefield roles -->
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

    <!-- Detachment-shape selection (top of every list) -->
    <categoryEntry id="cat-detachment" name="◆ Detachment Type" hidden="false"/>

    <!-- Legacy alignment markers (referenced by catalogue rules) -->
    <categoryEntry id="cat-loyalist-sub" name="Loyalist Subfaction" hidden="true"/>
    <categoryEntry id="cat-traitor-sub" name="Traitor Subfaction" hidden="true"/>
    <categoryEntry id="cat-either-sub" name="Either Subfaction" hidden="true"/>
    <categoryEntry id="cat-subfaction" name="Subfaction" hidden="true"/>

    <!-- Legacy faction/legion markers (kept hidden so catalogue references resolve) -->
    <categoryEntry id="cat-faction" name="Faction" hidden="true"/>
    <categoryEntry id="cat-legion" name="Legion" hidden="true"/>
  </categoryEntries>

  <forceEntries>
    <forceEntry id="force-leg-da" name="I — Dark Angels" hidden="false"><categoryLinks>
      <categoryLink id="cl-leg-da-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-leg-da-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-da-hq" type="min"/><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-da-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-da-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-da-tr" type="min"/><constraint field="selections" scope="force" value="8" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-da-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-da-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-da-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-da-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="5" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-da-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-da-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-da-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-da-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-da-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-da-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-da-low" type="max"/><constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-leg-da-low-pct" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-da-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-leg-da-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-leg-da-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-leg-da-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-leg-da-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-iind" name="II — [REDACTED]" hidden="false"><categoryLinks>
      <categoryLink id="cl-leg-iind-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-leg-iind-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-iind-hq" type="min"/><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-iind-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-iind-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-iind-tr" type="min"/><constraint field="selections" scope="force" value="8" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-iind-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-iind-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-iind-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-iind-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="5" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-iind-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-iind-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-iind-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-iind-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-iind-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-iind-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-iind-low" type="max"/><constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-leg-iind-low-pct" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-iind-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-leg-iind-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-leg-iind-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-leg-iind-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-leg-iind-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
      <categoryLink id="cl-leg-iind-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-leg-iind-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-ec" name="III — Emperor’s Children" hidden="false"><categoryLinks>
      <categoryLink id="cl-leg-ec-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-leg-ec-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-ec-hq" type="min"/><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ec-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ec-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-ec-tr" type="min"/><constraint field="selections" scope="force" value="8" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ec-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ec-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ec-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ec-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="5" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ec-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ec-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ec-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ec-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ec-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ec-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ec-low" type="max"/><constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-leg-ec-low-pct" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ec-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-leg-ec-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-leg-ec-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-leg-ec-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-leg-ec-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-iw" name="IV — Iron Warriors" hidden="false"><categoryLinks>
      <categoryLink id="cl-leg-iw-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-leg-iw-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-iw-hq" type="min"/><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-iw-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-iw-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-iw-tr" type="min"/><constraint field="selections" scope="force" value="8" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-iw-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-iw-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-iw-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-iw-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="5" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-iw-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-iw-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-iw-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-iw-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-iw-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-iw-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-iw-low" type="max"/><constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-leg-iw-low-pct" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-iw-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-leg-iw-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-leg-iw-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-leg-iw-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-leg-iw-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-ws" name="V — White Scars" hidden="false"><categoryLinks>
      <categoryLink id="cl-leg-ws-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-leg-ws-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-ws-hq" type="min"/><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ws-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ws-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-ws-tr" type="min"/><constraint field="selections" scope="force" value="8" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ws-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ws-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ws-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ws-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="5" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ws-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ws-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ws-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ws-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ws-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ws-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ws-low" type="max"/><constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-leg-ws-low-pct" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ws-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-leg-ws-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-leg-ws-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-leg-ws-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-leg-ws-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-sw" name="VI — Space Wolves" hidden="false"><categoryLinks>
      <categoryLink id="cl-leg-sw-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-leg-sw-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-sw-hq" type="min"/><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-sw-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-sw-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-sw-tr" type="min"/><constraint field="selections" scope="force" value="8" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-sw-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-sw-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-sw-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-sw-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="5" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-sw-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-sw-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-sw-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-sw-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-sw-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-sw-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-sw-low" type="max"/><constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-leg-sw-low-pct" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-sw-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-leg-sw-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-leg-sw-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-leg-sw-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-leg-sw-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-if" name="VII — Imperial Fists" hidden="false"><categoryLinks>
      <categoryLink id="cl-leg-if-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-leg-if-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-if-hq" type="min"/><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-if-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-if-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-if-tr" type="min"/><constraint field="selections" scope="force" value="8" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-if-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-if-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-if-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-if-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="5" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-if-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-if-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-if-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-if-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-if-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-if-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-if-low" type="max"/><constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-leg-if-low-pct" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-if-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-leg-if-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-leg-if-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-leg-if-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-leg-if-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-nl" name="VIII — Night Lords" hidden="false"><categoryLinks>
      <categoryLink id="cl-leg-nl-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-leg-nl-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-nl-hq" type="min"/><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-nl-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-nl-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-nl-tr" type="min"/><constraint field="selections" scope="force" value="8" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-nl-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-nl-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-nl-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-nl-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="5" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-nl-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-nl-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-nl-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-nl-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-nl-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-nl-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-nl-low" type="max"/><constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-leg-nl-low-pct" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-nl-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-leg-nl-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-leg-nl-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-leg-nl-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-leg-nl-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-ba" name="IX — Blood Angels" hidden="false"><categoryLinks>
      <categoryLink id="cl-leg-ba-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-leg-ba-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-ba-hq" type="min"/><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ba-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ba-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-ba-tr" type="min"/><constraint field="selections" scope="force" value="8" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ba-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ba-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ba-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ba-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="5" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ba-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ba-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ba-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ba-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ba-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ba-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ba-low" type="max"/><constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-leg-ba-low-pct" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ba-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-leg-ba-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-leg-ba-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-leg-ba-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-leg-ba-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-ih" name="X — Iron Hands" hidden="false"><categoryLinks>
      <categoryLink id="cl-leg-ih-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-leg-ih-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-ih-hq" type="min"/><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ih-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ih-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-ih-tr" type="min"/><constraint field="selections" scope="force" value="8" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ih-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ih-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ih-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ih-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="5" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ih-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ih-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ih-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ih-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ih-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ih-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ih-low" type="max"/><constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-leg-ih-low-pct" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ih-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-leg-ih-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-leg-ih-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-leg-ih-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-leg-ih-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-xith" name="XI — [REDACTED]" hidden="false"><categoryLinks>
      <categoryLink id="cl-leg-xith-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-leg-xith-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-xith-hq" type="min"/><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-xith-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-xith-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-xith-tr" type="min"/><constraint field="selections" scope="force" value="8" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-xith-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-xith-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-xith-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-xith-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="5" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-xith-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-xith-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-xith-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-xith-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-xith-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-xith-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-xith-low" type="max"/><constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-leg-xith-low-pct" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-xith-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-leg-xith-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-leg-xith-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-leg-xith-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-leg-xith-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
      <categoryLink id="cl-leg-xith-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-leg-xith-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-we" name="XII — World Eaters" hidden="false"><categoryLinks>
      <categoryLink id="cl-leg-we-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-leg-we-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-we-hq" type="min"/><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-we-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-we-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-we-tr" type="min"/><constraint field="selections" scope="force" value="8" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-we-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-we-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-we-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-we-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="5" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-we-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-we-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-we-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-we-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-we-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-we-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-we-low" type="max"/><constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-leg-we-low-pct" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-we-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-leg-we-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-leg-we-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-leg-we-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-leg-we-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-um" name="XIII — Ultramarines" hidden="false"><categoryLinks>
      <categoryLink id="cl-leg-um-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-leg-um-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-um-hq" type="min"/><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-um-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-um-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-um-tr" type="min"/><constraint field="selections" scope="force" value="8" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-um-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-um-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-um-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-um-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="5" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-um-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-um-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-um-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-um-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-um-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-um-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-um-low" type="max"/><constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-leg-um-low-pct" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-um-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-leg-um-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-leg-um-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-leg-um-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-leg-um-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-dg" name="XIV — Death Guard" hidden="false"><categoryLinks>
      <categoryLink id="cl-leg-dg-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-leg-dg-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-dg-hq" type="min"/><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-dg-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-dg-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-dg-tr" type="min"/><constraint field="selections" scope="force" value="8" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-dg-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-dg-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-dg-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-dg-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="5" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-dg-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-dg-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-dg-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-dg-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-dg-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-dg-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-dg-low" type="max"/><constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-leg-dg-low-pct" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-dg-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-leg-dg-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-leg-dg-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-leg-dg-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-leg-dg-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-ts" name="XV — Thousand Sons" hidden="false"><categoryLinks>
      <categoryLink id="cl-leg-ts-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-leg-ts-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-ts-hq" type="min"/><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ts-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ts-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-ts-tr" type="min"/><constraint field="selections" scope="force" value="8" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ts-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ts-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ts-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ts-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="5" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ts-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ts-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ts-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ts-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ts-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ts-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-ts-low" type="max"/><constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-leg-ts-low-pct" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-ts-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-leg-ts-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-leg-ts-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-leg-ts-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-leg-ts-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-soh" name="XVI — Sons of Horus" hidden="false"><categoryLinks>
      <categoryLink id="cl-leg-soh-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-leg-soh-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-soh-hq" type="min"/><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-soh-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-soh-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-soh-tr" type="min"/><constraint field="selections" scope="force" value="8" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-soh-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-soh-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-soh-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-soh-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="5" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-soh-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-soh-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-soh-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-soh-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-soh-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-soh-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-soh-low" type="max"/><constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-leg-soh-low-pct" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-soh-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-leg-soh-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-leg-soh-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-leg-soh-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-leg-soh-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-wb" name="XVII — Word Bearers" hidden="false"><categoryLinks>
      <categoryLink id="cl-leg-wb-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-leg-wb-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-wb-hq" type="min"/><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-wb-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-wb-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-wb-tr" type="min"/><constraint field="selections" scope="force" value="8" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-wb-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-wb-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-wb-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-wb-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="5" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-wb-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-wb-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-wb-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-wb-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-wb-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-wb-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-wb-low" type="max"/><constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-leg-wb-low-pct" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-wb-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-leg-wb-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-leg-wb-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-leg-wb-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-leg-wb-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-sal" name="XVIII — Salamanders" hidden="false"><categoryLinks>
      <categoryLink id="cl-leg-sal-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-leg-sal-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-sal-hq" type="min"/><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-sal-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-sal-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-sal-tr" type="min"/><constraint field="selections" scope="force" value="8" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-sal-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-sal-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-sal-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-sal-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="5" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-sal-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-sal-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-sal-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-sal-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-sal-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-sal-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-sal-low" type="max"/><constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-leg-sal-low-pct" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-sal-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-leg-sal-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-leg-sal-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-leg-sal-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-leg-sal-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-rg" name="XIX — Raven Guard" hidden="false"><categoryLinks>
      <categoryLink id="cl-leg-rg-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-leg-rg-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-rg-hq" type="min"/><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-rg-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-rg-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-rg-tr" type="min"/><constraint field="selections" scope="force" value="8" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-rg-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-rg-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-rg-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-rg-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="5" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-rg-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-rg-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-rg-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-rg-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-rg-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-rg-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-rg-low" type="max"/><constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-leg-rg-low-pct" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-rg-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-leg-rg-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-leg-rg-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-leg-rg-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-leg-rg-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-al" name="XX — Alpha Legion" hidden="false"><categoryLinks>
      <categoryLink id="cl-leg-al-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-leg-al-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-al-hq" type="min"/><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-al-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-al-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-leg-al-tr" type="min"/><constraint field="selections" scope="force" value="8" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-al-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-al-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-al-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-al-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="5" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-al-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-al-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-al-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-al-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-al-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-al-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-leg-al-low" type="max"/><constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-leg-al-low-pct" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-leg-al-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-leg-al-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-leg-al-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-leg-al-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-leg-al-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-auxilia" name="Solar Auxilia Tercio" hidden="false"><categoryLinks>
      <categoryLink id="cl-auxilia-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-auxilia-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-auxilia-hq" type="min"/><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-auxilia-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-auxilia-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-auxilia-tr" type="min"/><constraint field="selections" scope="force" value="8" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-auxilia-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-auxilia-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-auxilia-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-auxilia-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-auxilia-hs" type="min"/><constraint field="selections" scope="force" value="4" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-auxilia-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-auxilia-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-auxilia-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-auxilia-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-auxilia-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-auxilia-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-auxilia-low" type="max"/><constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-auxilia-low-pct" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-auxilia-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-auxilia-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-auxilia-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-auxilia-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-auxilia-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
      <categoryLink id="cl-auxilia-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-auxilia-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-mech" name="Mechanicum Taghmata" hidden="false"><categoryLinks>
      <categoryLink id="cl-mech-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-mech-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-mech-hq" type="min"/><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-mech-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-mech-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-mech-tr" type="min"/><constraint field="selections" scope="force" value="6" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-mech-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-mech-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="4" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-mech-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-mech-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-mech-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-mech-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-mech-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-mech-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-mech-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-mech-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-mech-low" type="max"/><constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-mech-low-pct" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-mech-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-mech-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-mech-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-mech-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-mech-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
      <categoryLink id="cl-mech-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-mech-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-militia" name="Militia &amp; Cults" hidden="false"><categoryLinks>
      <categoryLink id="cl-militia-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-militia-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-militia-hq" type="min"/><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-militia-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-militia-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="4" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-militia-tr" type="min"/><constraint field="selections" scope="force" value="10" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-militia-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-militia-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-militia-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-militia-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="4" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-militia-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-militia-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-militia-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-militia-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-militia-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-militia-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-militia-low" type="max"/><constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-militia-low-pct" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-militia-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-militia-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-militia-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-militia-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-militia-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
      <categoryLink id="cl-militia-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-militia-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-talons" name="Talons of the Emperor" hidden="false"><categoryLinks>
      <categoryLink id="cl-talons-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-talons-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-talons-hq" type="min"/><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-talons-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-talons-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-talons-tr" type="min"/><constraint field="selections" scope="force" value="6" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-talons-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-talons-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-talons-el" type="min"/><constraint field="selections" scope="force" value="4" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-talons-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-talons-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-talons-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-talons-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-talons-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-talons-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-talons-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-talons-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-talons-low" type="max"/><constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-talons-low-pct" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-talons-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-talons-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-talons-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-talons-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-talons-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-knights" name="Questoris Household" hidden="false"><categoryLinks>
      <categoryLink id="cl-knights-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-knights-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-knights-hq" type="min"/><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-knights-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-knights-tr" name="Household Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-knights-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-knights-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-knights-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-knights-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-knights-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-knights-fa" name="Armigers" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="4" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-knights-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-knights-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-knights-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-knights-low" name="Knights" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-knights-low" type="min"/><constraint field="selections" scope="force" value="6" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-knights-low" type="max"/><constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-knights-low-pct" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-knights-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-knights-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-knights-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-knights-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-knights-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
      <categoryLink id="cl-knights-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-knights-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-daemons" name="Daemonic Host" hidden="false"><categoryLinks>
      <categoryLink id="cl-daemons-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-daemons-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-daemons-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-daemons-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-daemons-tr" type="min"/><constraint field="selections" scope="force" value="6" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-daemons-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-daemons-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-daemons-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-daemons-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-daemons-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-daemons-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-daemons-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-daemons-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-daemons-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-daemons-low" name="Greater Daemon" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-daemons-low" type="max"/><constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-daemons-low-pct" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="cl-daemons-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-daemons-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-daemons-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-daemons-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-daemons-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-open" name="Open / Mixed (Narrative Play)" hidden="false"><categoryLinks>
      <categoryLink id="cl-open-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true"/>
      <categoryLink id="cl-open-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-open-hq" type="min"/></constraints>
      </categoryLink>
      <categoryLink id="cl-open-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-open-tr" type="min"/></constraints>
      </categoryLink>
      <categoryLink id="cl-open-el" name="Elites" targetId="cat-elites" primary="false"/>
      <categoryLink id="cl-open-hs" name="Heavy Support" targetId="cat-heavy" primary="false"/>
      <categoryLink id="cl-open-fa" name="Fast Attack" targetId="cat-fast" primary="false"/>
      <categoryLink id="cl-open-fly" name="Flyer" targetId="cat-flyer" primary="false"/>
      <categoryLink id="cl-open-low" name="Lord of War" targetId="cat-low" primary="false"/>
      <categoryLink id="cl-open-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-open-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-open-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-open-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-open-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
      <categoryLink id="cl-open-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-open-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
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
    <rule id="rule-emperors-light" name="Boon: Emperor&apos;s Light (Loyalist Innate)" hidden="false"><description>CAMPAIGN ONLY. +1 Ld to all units within 6&quot; of a Character. While Commander is alive, all units gain +1 Ld.</description></rule>
    <rule id="rule-vengeance" name="Boon: Vengeance for Fallen (Campaign Only)" hidden="false"><description>CAMPAIGN ONLY. Character destroyed: all friendlies +1 Atk for 1 round.</description></rule>
    <rule id="rule-dark-pact" name="Boon: Dark Pact (Campaign Only)" hidden="false"><description>+1 to 1 stat, 1 unit, 1 game. D6 at end: on 1 unit destroyed.</description></rule>
    <rule id="rule-terror-tactics" name="Boon: Terror Tactics (Campaign Only)" hidden="false"><description>CAMPAIGN ONLY. All Traitor charges inflict -1 Ld on the target for the melee combat.</description></rule>
    <rule id="rule-rite-pride" name="Rite: Pride of the Legion" hidden="false"><description>Veterans/Terminators as Troops with Line. Warlord +1 Atk.</description></rule>
    <rule id="rule-rite-orbital" name="Rite: Orbital Assault" hidden="false"><description>All infantry in reserve. No scatter on DS. Half deploy Round 1.</description></rule>
    <rule id="rule-rite-fury" name="Rite: Fury of the Ancients" hidden="false"><description>Dreadnoughts as Troops with Line. +1 Atk.</description></rule>
    <rule id="rule-low-cap" name="Lord of War Cap (25%)" hidden="false"><description>Lord of War selections may not exceed 25% of your total army points. Primarchs (155-180 pts) require 620+ pt games. Titans require even larger. No LoW below 500 pts.</description></rule>
  </sharedRules>
</gameSystem>
