<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="him-system" name="Heresy in Miniature v3.0" revision="10" battleScribeVersion="2.03" authorName="Heresy in Miniature" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
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

    <!-- Detachment-type selection (top of every list, drives slot caps via modifiers) -->
    <categoryEntry id="cat-detachment" name="◆ Detachment Type" hidden="false"/>

    <!-- Faction marker categories (hidden, one per force, auto-included) -->

    <!-- Legacy alignment markers (referenced by catalogue rules) -->
    <categoryEntry id="cat-loyalist-sub" name="Loyalist Subfaction" hidden="true"/>
    <categoryEntry id="cat-traitor-sub" name="Traitor Subfaction" hidden="true"/>
    <categoryEntry id="cat-either-sub" name="Either Subfaction" hidden="true"/>
    <categoryEntry id="cat-subfaction" name="Subfaction" hidden="true"/>
    <categoryEntry id="cat-faction" name="Faction" hidden="true"/>
    <categoryEntry id="cat-legion" name="Legion" hidden="true"/>

    <!-- Sub-faction marker categories -->
    <categoryEntry id="cat-prov" name="◆ Provenance of War" hidden="false"/>
    <categoryEntry id="cat-cohort" name="◆ Cohort Identity" hidden="false"/>
    <categoryEntry id="cat-forge" name="◆ Forge World" hidden="false"/>
  </categoryEntries>

  <forceEntries>
    <forceEntry id="force-leg-da" name="I — Dark Angels" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-leg-da-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-da-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-da-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-leg-da-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-da-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-da-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-da-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-da-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-da-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-da-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-da-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-da-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-da-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-da-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-da-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-da-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-da-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-da-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-da-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-da-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-da-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-da-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-da-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-da-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-da-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-da-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-da-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-da-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-da-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-da-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-da-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-da-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-da-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-da-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-da-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-da-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-da-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-da-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-da-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-da-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-da-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-da-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-da-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-da-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-da-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-da-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-da-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-da-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-da-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-da-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-da-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-da-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-da-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-da-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-da-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-da-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-da-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-da-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-da-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-leg-da-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-da-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-da-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-da-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-da-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-da-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-leg-da-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-leg-da-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-leg-da-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-force-leg-da-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-iind" name="II — [REDACTED]" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-leg-iind-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-iind-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-iind-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-leg-iind-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-iind-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-iind-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-iind-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-iind-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iind-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-iind-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iind-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-iind-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iind-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-iind-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-iind-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-iind-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-iind-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-iind-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-iind-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-iind-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iind-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-iind-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iind-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-iind-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iind-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-iind-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-iind-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-iind-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-iind-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-iind-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-iind-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iind-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iind-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iind-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-iind-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-iind-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-iind-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-iind-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iind-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iind-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-iind-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iind-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-iind-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-iind-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-iind-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-iind-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iind-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iind-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iind-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-iind-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-iind-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-iind-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-iind-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iind-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iind-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iind-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-iind-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-iind-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-iind-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-leg-iind-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-iind-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iind-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iind-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iind-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-iind-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-leg-iind-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-leg-iind-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-leg-iind-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-force-leg-iind-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
      <categoryLink id="cl-force-leg-iind-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-force-leg-iind-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-ec" name="III — Emperor’s Children" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-leg-ec-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ec-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ec-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-leg-ec-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ec-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ec-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ec-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ec-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ec-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ec-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ec-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ec-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ec-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ec-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ec-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ec-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ec-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ec-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ec-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ec-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ec-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ec-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ec-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ec-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ec-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ec-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ec-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ec-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ec-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ec-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ec-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ec-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ec-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ec-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ec-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ec-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ec-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ec-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ec-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ec-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ec-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ec-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ec-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ec-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ec-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ec-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ec-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ec-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ec-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ec-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ec-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ec-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ec-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ec-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ec-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ec-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ec-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ec-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ec-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-leg-ec-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ec-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ec-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ec-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ec-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ec-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-leg-ec-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-leg-ec-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-leg-ec-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-force-leg-ec-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-iw" name="IV — Iron Warriors" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-leg-iw-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-iw-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-iw-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-leg-iw-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-iw-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-iw-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-iw-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-iw-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iw-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-iw-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iw-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-iw-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iw-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-iw-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-iw-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-iw-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-iw-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-iw-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-iw-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-iw-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iw-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-iw-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iw-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-iw-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iw-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-iw-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-iw-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-iw-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-iw-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-iw-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-iw-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iw-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iw-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iw-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-iw-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-iw-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-iw-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-iw-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iw-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iw-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-iw-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iw-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-iw-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-iw-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-iw-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-iw-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iw-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iw-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iw-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-iw-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-iw-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-iw-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-iw-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iw-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iw-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iw-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-iw-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-iw-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-iw-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-leg-iw-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-iw-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iw-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iw-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-iw-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-iw-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-leg-iw-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-leg-iw-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-leg-iw-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-force-leg-iw-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-ws" name="V — White Scars" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-leg-ws-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ws-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ws-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-leg-ws-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ws-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ws-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ws-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ws-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ws-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ws-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ws-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ws-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ws-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ws-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ws-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ws-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ws-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ws-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ws-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ws-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ws-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ws-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ws-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ws-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ws-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ws-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ws-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ws-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ws-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ws-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ws-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ws-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ws-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ws-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ws-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ws-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ws-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ws-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ws-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ws-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ws-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ws-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ws-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ws-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ws-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ws-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ws-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ws-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ws-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ws-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ws-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ws-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ws-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ws-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ws-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ws-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ws-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ws-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ws-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-leg-ws-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ws-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ws-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ws-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ws-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ws-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-leg-ws-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-leg-ws-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-leg-ws-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-force-leg-ws-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-sw" name="VI — Space Wolves" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-leg-sw-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-sw-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-sw-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-leg-sw-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-sw-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-sw-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-sw-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-sw-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sw-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-sw-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sw-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-sw-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sw-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-sw-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-sw-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-sw-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-sw-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-sw-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-sw-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-sw-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sw-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-sw-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sw-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-sw-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sw-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-sw-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-sw-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-sw-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-sw-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-sw-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-sw-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sw-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sw-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sw-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-sw-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-sw-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-sw-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-sw-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sw-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sw-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-sw-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sw-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-sw-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-sw-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-sw-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-sw-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sw-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sw-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sw-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-sw-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-sw-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-sw-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-sw-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sw-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sw-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sw-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-sw-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-sw-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-sw-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-leg-sw-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-sw-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sw-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sw-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sw-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-sw-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-leg-sw-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-leg-sw-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-leg-sw-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-force-leg-sw-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-if" name="VII — Imperial Fists" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-leg-if-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-if-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-if-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-leg-if-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-if-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-if-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-if-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-if-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-if-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-if-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-if-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-if-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-if-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-if-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-if-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-if-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-if-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-if-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-if-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-if-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-if-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-if-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-if-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-if-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-if-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-if-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-if-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-if-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-if-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-if-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-if-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-if-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-if-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-if-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-if-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-if-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-if-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-if-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-if-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-if-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-if-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-if-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-if-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-if-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-if-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-if-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-if-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-if-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-if-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-if-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-if-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-if-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-if-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-if-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-if-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-if-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-if-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-if-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-if-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-leg-if-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-if-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-if-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-if-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-if-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-if-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-leg-if-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-leg-if-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-leg-if-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-force-leg-if-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-nl" name="VIII — Night Lords" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-leg-nl-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-nl-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-nl-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-leg-nl-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-nl-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-nl-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-nl-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-nl-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-nl-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-nl-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-nl-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-nl-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-nl-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-nl-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-nl-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-nl-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-nl-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-nl-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-nl-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-nl-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-nl-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-nl-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-nl-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-nl-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-nl-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-nl-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-nl-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-nl-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-nl-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-nl-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-nl-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-nl-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-nl-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-nl-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-nl-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-nl-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-nl-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-nl-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-nl-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-nl-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-nl-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-nl-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-nl-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-nl-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-nl-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-nl-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-nl-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-nl-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-nl-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-nl-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-nl-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-nl-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-nl-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-nl-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-nl-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-nl-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-nl-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-nl-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-nl-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-leg-nl-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-nl-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-nl-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-nl-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-nl-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-nl-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-leg-nl-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-leg-nl-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-leg-nl-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-force-leg-nl-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-ba" name="IX — Blood Angels" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-leg-ba-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ba-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ba-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-leg-ba-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ba-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ba-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ba-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ba-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ba-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ba-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ba-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ba-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ba-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ba-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ba-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ba-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ba-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ba-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ba-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ba-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ba-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ba-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ba-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ba-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ba-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ba-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ba-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ba-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ba-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ba-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ba-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ba-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ba-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ba-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ba-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ba-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ba-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ba-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ba-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ba-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ba-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ba-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ba-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ba-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ba-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ba-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ba-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ba-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ba-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ba-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ba-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ba-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ba-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ba-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ba-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ba-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ba-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ba-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ba-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-leg-ba-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ba-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ba-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ba-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ba-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ba-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-leg-ba-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-leg-ba-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-leg-ba-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-force-leg-ba-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-ih" name="X — Iron Hands" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-leg-ih-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ih-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ih-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-leg-ih-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ih-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ih-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ih-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ih-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ih-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ih-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ih-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ih-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ih-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ih-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ih-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ih-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ih-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ih-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ih-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ih-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ih-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ih-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ih-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ih-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ih-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ih-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ih-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ih-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ih-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ih-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ih-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ih-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ih-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ih-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ih-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ih-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ih-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ih-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ih-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ih-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ih-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ih-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ih-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ih-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ih-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ih-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ih-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ih-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ih-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ih-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ih-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ih-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ih-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ih-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ih-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ih-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ih-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ih-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ih-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-leg-ih-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ih-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ih-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ih-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ih-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ih-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-leg-ih-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-leg-ih-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-leg-ih-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-force-leg-ih-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-xith" name="XI — [REDACTED]" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-leg-xith-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-xith-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-xith-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-leg-xith-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-xith-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-xith-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-xith-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-xith-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-xith-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-xith-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-xith-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-xith-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-xith-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-xith-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-xith-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-xith-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-xith-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-xith-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-xith-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-xith-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-xith-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-xith-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-xith-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-xith-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-xith-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-xith-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-xith-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-xith-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-xith-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-xith-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-xith-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-xith-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-xith-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-xith-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-xith-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-xith-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-xith-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-xith-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-xith-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-xith-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-xith-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-xith-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-xith-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-xith-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-xith-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-xith-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-xith-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-xith-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-xith-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-xith-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-xith-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-xith-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-xith-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-xith-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-xith-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-xith-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-xith-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-xith-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-xith-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-leg-xith-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-xith-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-xith-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-xith-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-xith-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-xith-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-leg-xith-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-leg-xith-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-leg-xith-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-force-leg-xith-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
      <categoryLink id="cl-force-leg-xith-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-force-leg-xith-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-we" name="XII — World Eaters" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-leg-we-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-we-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-we-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-leg-we-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-we-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-we-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-we-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-we-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-we-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-we-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-we-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-we-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-we-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-we-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-we-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-we-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-we-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-we-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-we-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-we-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-we-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-we-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-we-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-we-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-we-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-we-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-we-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-we-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-we-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-we-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-we-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-we-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-we-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-we-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-we-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-we-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-we-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-we-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-we-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-we-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-we-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-we-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-we-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-we-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-we-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-we-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-we-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-we-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-we-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-we-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-we-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-we-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-we-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-we-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-we-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-we-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-we-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-we-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-we-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-leg-we-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-we-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-we-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-we-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-we-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-we-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-leg-we-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-leg-we-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-leg-we-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-force-leg-we-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-um" name="XIII — Ultramarines" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-leg-um-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-um-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-um-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-leg-um-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-um-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-um-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-um-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-um-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-um-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-um-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-um-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-um-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-um-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-um-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-um-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-um-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-um-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-um-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-um-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-um-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-um-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-um-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-um-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-um-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-um-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-um-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-um-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-um-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-um-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-um-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-um-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-um-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-um-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-um-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-um-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-um-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-um-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-um-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-um-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-um-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-um-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-um-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-um-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-um-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-um-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-um-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-um-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-um-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-um-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-um-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-um-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-um-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-um-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-um-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-um-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-um-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-um-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-um-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-um-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-leg-um-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-um-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-um-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-um-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-um-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-um-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-leg-um-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-leg-um-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-leg-um-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-force-leg-um-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-dg" name="XIV — Death Guard" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-leg-dg-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-dg-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-dg-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-leg-dg-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-dg-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-dg-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-dg-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-dg-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-dg-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-dg-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-dg-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-dg-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-dg-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-dg-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-dg-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-dg-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-dg-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-dg-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-dg-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-dg-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-dg-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-dg-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-dg-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-dg-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-dg-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-dg-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-dg-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-dg-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-dg-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-dg-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-dg-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-dg-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-dg-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-dg-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-dg-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-dg-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-dg-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-dg-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-dg-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-dg-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-dg-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-dg-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-dg-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-dg-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-dg-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-dg-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-dg-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-dg-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-dg-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-dg-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-dg-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-dg-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-dg-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-dg-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-dg-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-dg-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-dg-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-dg-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-dg-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-leg-dg-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-dg-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-dg-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-dg-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-dg-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-dg-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-leg-dg-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-leg-dg-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-leg-dg-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-force-leg-dg-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-ts" name="XV — Thousand Sons" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-leg-ts-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ts-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ts-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-leg-ts-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ts-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ts-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ts-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ts-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ts-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ts-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ts-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ts-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ts-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ts-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ts-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ts-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ts-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ts-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ts-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ts-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ts-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ts-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ts-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ts-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ts-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ts-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ts-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ts-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ts-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ts-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ts-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ts-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ts-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ts-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ts-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ts-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ts-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ts-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ts-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ts-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-ts-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ts-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ts-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ts-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ts-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ts-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ts-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ts-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ts-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ts-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ts-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ts-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ts-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ts-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ts-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ts-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ts-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-ts-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-ts-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-leg-ts-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-ts-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ts-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ts-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-ts-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-ts-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-leg-ts-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-leg-ts-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-leg-ts-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-force-leg-ts-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-soh" name="XVI — Sons of Horus" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-leg-soh-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-soh-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-soh-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-leg-soh-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-soh-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-soh-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-soh-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-soh-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-soh-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-soh-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-soh-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-soh-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-soh-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-soh-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-soh-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-soh-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-soh-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-soh-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-soh-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-soh-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-soh-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-soh-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-soh-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-soh-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-soh-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-soh-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-soh-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-soh-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-soh-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-soh-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-soh-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-soh-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-soh-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-soh-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-soh-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-soh-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-soh-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-soh-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-soh-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-soh-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-soh-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-soh-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-soh-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-soh-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-soh-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-soh-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-soh-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-soh-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-soh-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-soh-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-soh-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-soh-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-soh-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-soh-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-soh-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-soh-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-soh-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-soh-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-soh-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-leg-soh-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-soh-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-soh-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-soh-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-soh-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-soh-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-leg-soh-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-leg-soh-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-leg-soh-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-force-leg-soh-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-wb" name="XVII — Word Bearers" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-leg-wb-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-wb-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-wb-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-leg-wb-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-wb-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-wb-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-wb-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-wb-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-wb-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-wb-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-wb-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-wb-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-wb-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-wb-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-wb-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-wb-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-wb-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-wb-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-wb-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-wb-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-wb-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-wb-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-wb-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-wb-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-wb-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-wb-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-wb-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-wb-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-wb-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-wb-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-wb-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-wb-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-wb-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-wb-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-wb-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-wb-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-wb-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-wb-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-wb-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-wb-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-wb-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-wb-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-wb-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-wb-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-wb-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-wb-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-wb-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-wb-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-wb-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-wb-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-wb-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-wb-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-wb-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-wb-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-wb-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-wb-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-wb-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-wb-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-wb-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-leg-wb-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-wb-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-wb-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-wb-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-wb-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-wb-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-leg-wb-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-leg-wb-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-leg-wb-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-force-leg-wb-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-sal" name="XVIII — Salamanders" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-leg-sal-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-sal-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-sal-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-leg-sal-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-sal-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-sal-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-sal-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-sal-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sal-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-sal-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sal-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-sal-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sal-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-sal-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-sal-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-sal-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-sal-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-sal-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-sal-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-sal-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sal-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-sal-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sal-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-sal-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sal-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-sal-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-sal-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-sal-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-sal-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-sal-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-sal-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sal-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sal-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sal-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-sal-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-sal-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-sal-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-sal-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sal-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sal-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-sal-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sal-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-sal-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-sal-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-sal-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-sal-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sal-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sal-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sal-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-sal-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-sal-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-sal-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-sal-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sal-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sal-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sal-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-sal-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-sal-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-sal-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-leg-sal-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-sal-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sal-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sal-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-sal-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-sal-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-leg-sal-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-leg-sal-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-leg-sal-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-force-leg-sal-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-rg" name="XIX — Raven Guard" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-leg-rg-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-rg-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-rg-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-leg-rg-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-rg-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-rg-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-rg-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-rg-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-rg-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-rg-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-rg-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-rg-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-rg-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-rg-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-rg-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-rg-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-rg-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-rg-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-rg-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-rg-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-rg-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-rg-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-rg-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-rg-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-rg-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-rg-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-rg-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-rg-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-rg-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-rg-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-rg-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-rg-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-rg-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-rg-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-rg-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-rg-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-rg-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-rg-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-rg-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-rg-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-rg-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-rg-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-rg-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-rg-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-rg-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-rg-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-rg-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-rg-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-rg-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-rg-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-rg-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-rg-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-rg-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-rg-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-rg-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-rg-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-rg-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-rg-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-rg-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-leg-rg-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-rg-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-rg-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-rg-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-rg-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-rg-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-leg-rg-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-leg-rg-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-leg-rg-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-force-leg-rg-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-leg-al" name="XX — Alpha Legion" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-leg-al-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-al-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-al-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-leg-al-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-al-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-al-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-al-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-al-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-al-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-al-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-al-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-al-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-al-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-al-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-al-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-al-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-al-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-al-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-al-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-al-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-al-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-al-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-al-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-al-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-al-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-al-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-al-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-al-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-al-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-al-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-al-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-al-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-al-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-al-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-al-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-al-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-al-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-al-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-al-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-al-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-leg-al-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-al-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-al-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-al-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-al-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-al-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-al-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-al-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-al-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-al-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-al-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-al-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-al-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-al-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-al-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-al-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-al-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-leg-al-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-leg-al-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-leg-al-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-leg-al-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-al-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-al-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-leg-al-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-leg-al-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-leg-al-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-leg-al-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-leg-al-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-force-leg-al-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-auxilia" name="Solar Auxilia Tercio" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-auxilia-cat-cohort" name="◆ Cohort Identity" targetId="cat-cohort" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-auxilia-cat-cohort" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-auxilia-cat-cohort" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-auxilia-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-auxilia-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-auxilia-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-auxilia-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-auxilia-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-auxilia-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-auxilia-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-auxilia-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-auxilia-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-auxilia-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-auxilia-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-auxilia-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-auxilia-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-auxilia-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-auxilia-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-auxilia-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-auxilia-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-auxilia-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-auxilia-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-auxilia-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-auxilia-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-auxilia-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-auxilia-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-auxilia-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-auxilia-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-auxilia-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-auxilia-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-auxilia-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-auxilia-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-auxilia-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-auxilia-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-auxilia-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-auxilia-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-auxilia-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-auxilia-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-auxilia-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-auxilia-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-auxilia-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-auxilia-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-auxilia-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-auxilia-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-auxilia-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-auxilia-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-auxilia-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-auxilia-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-auxilia-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-auxilia-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-auxilia-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-auxilia-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-auxilia-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-auxilia-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-auxilia-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-auxilia-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-auxilia-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-auxilia-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-auxilia-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-auxilia-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-auxilia-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-auxilia-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-auxilia-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-auxilia-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-auxilia-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-auxilia-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-auxilia-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-auxilia-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-auxilia-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-auxilia-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-auxilia-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-force-auxilia-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
      <categoryLink id="cl-force-auxilia-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-force-auxilia-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-mech" name="Mechanicum Taghmata" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-mech-cat-forge" name="◆ Forge World" targetId="cat-forge" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-mech-cat-forge" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-mech-cat-forge" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-mech-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-mech-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-mech-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-mech-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-mech-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-mech-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-mech-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-mech-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-mech-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-mech-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-mech-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-mech-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-mech-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-mech-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-mech-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-mech-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-mech-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-mech-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-mech-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-mech-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-mech-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-mech-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-mech-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-mech-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-mech-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-mech-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-mech-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-mech-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-mech-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-mech-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-mech-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-mech-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-mech-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-mech-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-mech-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-mech-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-mech-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-mech-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-mech-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-mech-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-mech-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-mech-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-mech-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-mech-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-mech-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-mech-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-mech-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-mech-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-mech-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-mech-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-mech-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-mech-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-mech-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-mech-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-mech-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-mech-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-mech-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-mech-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-mech-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-mech-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-mech-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-mech-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-mech-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-mech-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-mech-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-mech-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-mech-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-mech-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-force-mech-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
      <categoryLink id="cl-force-mech-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-force-mech-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks>        <entryLinks>
          <entryLink id="el-tm-archmagos-abeyant-in-force-mech" name="Archmagos Prime on Abeyant" targetId="se-tm-archmagos-abeyant" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-techpriest-in-force-mech" name="Tech-Priest Auxilia" targetId="se-tm-techpriest" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-thrall-in-force-mech" name="Adsecularis Tech-Thrall Covenant" targetId="se-tm-thrall" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-secutor-in-force-mech" name="Myrmidon Secutor Covenant" targetId="se-tm-secutor" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-ursarax-in-force-mech" name="Ursarax Cohort" targetId="se-tm-ursarax" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-scyllax-in-force-mech" name="Scyllax Guardian-Automata" targetId="se-tm-scyllax" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-arlatax-in-force-mech" name="Arlatax Battle-Automata" targetId="se-tm-arlatax" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-vultarax-in-force-mech" name="Vultarax Strato-Automata" targetId="se-tm-vultarax" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-destructor-in-force-mech" name="Myrmidon Destructor Covenant" targetId="se-tm-destructor" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-krios-venator-in-force-mech" name="Krios Venator" targetId="se-tm-krios-venator" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-karacnos-in-force-mech" name="Karacnos Assault Tank" targetId="se-tm-karacnos" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-knight-magaera-in-force-mech" name="Knight Magaera" targetId="se-tm-knight-magaera" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-knight-styrix-in-force-mech" name="Knight Styrix" targetId="se-tm-knight-styrix" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-harpax-in-force-mech" name="Harpax Swarmer Scout Host" targetId="se-tm-harpax" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-errax-in-force-mech" name="Errax Butcher Assault Stalker" targetId="se-tm-errax" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-tenebrax-in-force-mech" name="Tenebrax Archer Battle Stalker" targetId="se-tm-tenebrax" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-scintillax-in-force-mech" name="Scintillax Cyclops Noospheric Stalker" targetId="se-tm-scintillax" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-serperos-in-force-mech" name="Serperos Overlord Heavy Stalker" targetId="se-tm-serperos" type="selectionEntry" hidden="false"/>
        </entryLinks>
</forceEntry>
    <forceEntry id="force-militia" name="Militia &amp; Cults" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-militia-cat-prov" name="◆ Provenance of War" targetId="cat-prov" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-militia-cat-prov" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-militia-cat-prov" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-militia-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-militia-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-militia-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-militia-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-militia-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-militia-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-militia-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-militia-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-militia-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-militia-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-militia-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-militia-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-militia-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-militia-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-militia-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-militia-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-militia-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-militia-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-militia-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-militia-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-militia-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-militia-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-militia-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-militia-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-militia-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-militia-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-militia-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-militia-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-militia-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-militia-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-militia-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-militia-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-militia-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-militia-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-militia-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-militia-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-militia-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-militia-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-militia-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-militia-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-militia-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-militia-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-militia-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-militia-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-militia-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-militia-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-militia-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-militia-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-militia-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-militia-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-militia-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-militia-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-militia-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-militia-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-militia-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-militia-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-militia-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-militia-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-militia-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-militia-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-militia-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-militia-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-militia-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-militia-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-militia-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-militia-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-militia-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-militia-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-force-militia-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
      <categoryLink id="cl-force-militia-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-force-militia-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-talons" name="Talons of the Emperor" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-talons-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-talons-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-talons-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-talons-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-talons-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-talons-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-talons-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-talons-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-talons-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-talons-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-talons-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-talons-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-talons-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-talons-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-talons-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-talons-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-talons-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-talons-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-talons-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-talons-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-talons-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-talons-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-talons-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-talons-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-talons-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-talons-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-talons-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-talons-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-talons-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-talons-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-talons-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-talons-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-talons-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-talons-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-talons-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-talons-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-talons-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-talons-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-talons-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-talons-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-talons-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-talons-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-talons-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-talons-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-talons-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-talons-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-talons-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-talons-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-talons-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-talons-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-talons-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-talons-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-talons-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-talons-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-talons-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-talons-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-talons-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-talons-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-talons-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-talons-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-talons-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-talons-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-talons-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-talons-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-talons-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-talons-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-talons-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-talons-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-force-talons-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-knights" name="Questoris Household" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-knights-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-knights-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-knights-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-knights-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-knights-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-knights-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-knights-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-knights-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-knights-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-knights-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-knights-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-knights-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-knights-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-knights-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-knights-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-knights-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-knights-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-knights-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-knights-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-knights-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-knights-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-knights-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-knights-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-knights-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-knights-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-knights-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-knights-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-knights-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-knights-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-knights-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-knights-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-knights-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-knights-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-knights-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-knights-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-knights-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-knights-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-knights-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-knights-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-knights-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-knights-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-knights-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-knights-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-knights-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-knights-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-knights-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-knights-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-knights-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-knights-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-knights-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-knights-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-knights-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-knights-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-knights-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-knights-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-knights-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-knights-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-knights-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-knights-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-knights-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-knights-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-knights-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-knights-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-knights-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-knights-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-knights-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-knights-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-knights-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-force-knights-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
      <categoryLink id="cl-force-knights-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-force-knights-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-daemons" name="Daemonic Host" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-daemons-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-daemons-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-daemons-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-daemons-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-daemons-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-daemons-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-daemons-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-daemons-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-daemons-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-daemons-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-daemons-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-daemons-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-daemons-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-daemons-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-daemons-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-daemons-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-daemons-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-daemons-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-daemons-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-daemons-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-daemons-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-daemons-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-daemons-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-daemons-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-daemons-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-daemons-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-daemons-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-daemons-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-daemons-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-daemons-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-daemons-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-daemons-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-daemons-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-daemons-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-daemons-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-daemons-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-daemons-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-daemons-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-daemons-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-daemons-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-daemons-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-daemons-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-daemons-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-daemons-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-daemons-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-daemons-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-daemons-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-daemons-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-daemons-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-daemons-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-daemons-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-daemons-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-daemons-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-daemons-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-daemons-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-daemons-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-daemons-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-daemons-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-daemons-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-daemons-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-daemons-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-daemons-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-daemons-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-daemons-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-daemons-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-daemons-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-daemons-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-daemons-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-force-daemons-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>
    <forceEntry id="force-open" name="Open / Mixed (Narrative Play)" hidden="false"><categoryLinks>
      <categoryLink id="cl-force-open-cat-prov" name="◆ Provenance of War (Militia)" targetId="cat-prov" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-open-cat-prov" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-open-cat-prov" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-open-cat-cohort" name="◆ Cohort Identity (Auxilia)" targetId="cat-cohort" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-open-cat-cohort" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-open-cat-cohort" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-open-cat-forge" name="◆ Forge World (Mechanicum)" targetId="cat-forge" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-open-cat-forge" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-open-cat-forge" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-open-det" name="◆ Detachment Type" targetId="cat-detachment" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-open-det" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-open-det" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="cl-force-open-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-open-hq" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-open-hq" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-open-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-open-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-open-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-open-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-open-hq" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-open-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-open-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-open-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-open-hq" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-open-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-open-tr" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-open-tr" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-open-tr" value="6">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-open-tr" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-open-tr" value="8">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-open-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-open-tr" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-open-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-open-tr" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-open-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-open-tr" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-open" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-open-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-open-el" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-open-el" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-open-el" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-open-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-open-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-open-el" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-open-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-open-hs" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-open-hs" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-open-hs" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-open-hs" value="4">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-open-hs" value="5">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="min-cl-force-open-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-open-hs" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-open-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-open-fa" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-open-fa" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-open-fa" value="2">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-open-fa" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-open-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-open-fa" value="3">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-open-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-open-fly" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-open-fly" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-open-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-open-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-open-fly" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-open-fly" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-open-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="0" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-cl-force-open-low" type="min"/>
          <constraint field="selections" scope="force" value="99" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-cl-force-open-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-cl-force-open-low-pct" type="max"/>
        </constraints>
        <modifiers>
          <modifier type="set" field="max-cl-force-open-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-crusade" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-open-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-garrison" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-open-low" value="1">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-spearhead" type="atLeast"/>
            </conditions>
          </modifier>
          <modifier type="set" field="max-cl-force-open-low" value="0">
            <conditions>
              <condition field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" childId="se-det-recon" type="atLeast"/>
            </conditions>
          </modifier>
        </modifiers>
      </categoryLink>
      <categoryLink id="cl-force-open-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="cl-force-open-fort" name="Fortification" targetId="cat-fort" primary="false"/>
      <categoryLink id="cl-force-open-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons -->
      <categoryLink id="cl-force-open-bl" name="★ Boon — Loyalist" targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="cl-force-open-blc" name="★ Campaign Boon — Loyalist" targetId="cat-boon-l-camp" primary="false"/>
      <categoryLink id="cl-force-open-bt" name="★ Boon — Traitor" targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="cl-force-open-btc" name="★ Campaign Boon — Traitor" targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks>        <entryLinks>
          <entryLink id="el-tm-archmagos-abeyant-in-force-open" name="Archmagos Prime on Abeyant" targetId="se-tm-archmagos-abeyant" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-techpriest-in-force-open" name="Tech-Priest Auxilia" targetId="se-tm-techpriest" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-thrall-in-force-open" name="Adsecularis Tech-Thrall Covenant" targetId="se-tm-thrall" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-secutor-in-force-open" name="Myrmidon Secutor Covenant" targetId="se-tm-secutor" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-ursarax-in-force-open" name="Ursarax Cohort" targetId="se-tm-ursarax" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-scyllax-in-force-open" name="Scyllax Guardian-Automata" targetId="se-tm-scyllax" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-arlatax-in-force-open" name="Arlatax Battle-Automata" targetId="se-tm-arlatax" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-vultarax-in-force-open" name="Vultarax Strato-Automata" targetId="se-tm-vultarax" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-destructor-in-force-open" name="Myrmidon Destructor Covenant" targetId="se-tm-destructor" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-krios-venator-in-force-open" name="Krios Venator" targetId="se-tm-krios-venator" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-karacnos-in-force-open" name="Karacnos Assault Tank" targetId="se-tm-karacnos" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-knight-magaera-in-force-open" name="Knight Magaera" targetId="se-tm-knight-magaera" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-knight-styrix-in-force-open" name="Knight Styrix" targetId="se-tm-knight-styrix" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-harpax-in-force-open" name="Harpax Swarmer Scout Host" targetId="se-tm-harpax" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-errax-in-force-open" name="Errax Butcher Assault Stalker" targetId="se-tm-errax" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-tenebrax-in-force-open" name="Tenebrax Archer Battle Stalker" targetId="se-tm-tenebrax" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-scintillax-in-force-open" name="Scintillax Cyclops Noospheric Stalker" targetId="se-tm-scintillax" type="selectionEntry" hidden="false"/>
          <entryLink id="el-tm-serperos-in-force-open" name="Serperos Overlord Heavy Stalker" targetId="se-tm-serperos" type="selectionEntry" hidden="false"/>
        </entryLinks>
</forceEntry>
  </forceEntries>

  <sharedRules>
    <rule id="rule-charger-first" name="Charger Strikes First" hidden="false"><description>On the charge turn, the charging unit resolves attacks before the defender. +1 to Hit. Defender strikes back if alive. Subsequent melee rounds are simultaneous.</description></rule>
    <rule id="rule-degraded" name="Degraded Firepower" hidden="false"><description>At half HP threshold, unit suffers -1 Atk (minimum 1).</description></rule>
    <rule id="rule-model-removal" name="Model Removal" hidden="false"><description>Remove ~1 model per HP lost. Minimum squad size: 2 models (1 for Characters/Vehicles).</description></rule>
    <rule id="rule-vehicle-destruction" name="Vehicle Destruction" hidden="false"><description>D6 on death: 1=Wreck, 2-3=Minor Explosion, 4-5=Major Explosion, 6=Catastrophic Detonation.</description></rule>
    <rule id="rule-titan-kill" name="Titan Kill" hidden="false"><description>Fall direction + Crushing Impact + Reactor Meltdown + Morale Shockwave. See core rules Section 12.</description></rule>
    <rule id="rule-line" name="Line" hidden="false"><description>This unit scores objectives.</description></rule>
    <rule id="rule-commander" name="Commander" hidden="false"><description>Provides +1 Ld within 6". Grants 3 Reactions/round instead of 2.</description></rule>
    <rule id="rule-deep-strike" name="Deep Strike" hidden="false"><description>Deploy from reserve starting Round 2. Place anywhere &gt;3" from enemy.</description></rule>
    <rule id="rule-fearless" name="Fearless" hidden="false"><description>Auto-pass all Morale checks.</description></rule>
    <rule id="rule-chosen" name="Chosen Warriors" hidden="false"><description>May issue and accept Challenges.</description></rule>
    <rule id="rule-implacable" name="Implacable" hidden="false"><description>Never Pinned. Always moves at full Mv.</description></rule>
    <rule id="rule-scout" name="Scout" hidden="false"><description>Deploy 2" further forward.</description></rule>
    <rule id="rule-infiltrate" name="Infiltrate" hidden="false"><description>Deploy anywhere &gt;3" from enemy.</description></rule>
    <rule id="rule-fast" name="Fast" hidden="false"><description>Jink: +1 Sv vs shooting if moved this round.</description></rule>
    <rule id="rule-psyker" name="Psyker" hidden="false"><description>May manifest psychic powers. ML indicates number of powers per round.</description></rule>
    <rule id="rule-daemon" name="Daemon" hidden="false"><description>Fearless. Invulnerable 5+. Instability: D6 end of round, 1=-1HP, 6=+1HP. Null Vulnerability.</description></rule>
    <rule id="rule-no-overwatch" name="No Overwatch (World Eaters)" hidden="false"><description>This unit may never fire Overwatch when charged.</description></rule>
    <rule id="rule-must-advance" name="Must Advance When Shooting" hidden="false"><description>When shooting, must also advance half Mv toward nearest enemy.</description></rule>
    <rule id="rule-null-zone" name="Null Zone" hidden="false"><description>Enemy Psykers within range cannot manifest. Daemons suffer -1 Atk, -1 Hit.</description></rule>
    <rule id="rule-null-aegis" name="Null Aegis" hidden="false"><description>Requires Custodes + Sisters within 3". Psychic Immunity, Daemon Bane, Warp Denial, +1 Reaction.</description></rule>
    <rule id="rule-emperors-light" name="Boon: Emperor&apos;s Light (Loyalist Innate)" hidden="false"><description>CAMPAIGN ONLY. +1 Ld to all units within 6" of a Character. While Commander is alive, all units gain +1 Ld.</description></rule>
    <rule id="rule-vengeance" name="Boon: Vengeance for Fallen (Campaign Only)" hidden="false"><description>CAMPAIGN ONLY. Character destroyed: all friendlies +1 Atk for 1 round.</description></rule>
    <rule id="rule-dark-pact" name="Boon: Dark Pact (Campaign Only)" hidden="false"><description>+1 to 1 stat, 1 unit, 1 game. D6 at end: on 1 unit destroyed.</description></rule>
    <rule id="rule-terror-tactics" name="Boon: Terror Tactics (Campaign Only)" hidden="false"><description>CAMPAIGN ONLY. All Traitor charges inflict -1 Ld on the target for the melee combat.</description></rule>
    <rule id="rule-rite-pride" name="Rite: Pride of the Legion" hidden="false"><description>Veterans/Terminators as Troops with Line. Warlord +1 Atk.</description></rule>
    <rule id="rule-rite-orbital" name="Rite: Orbital Assault" hidden="false"><description>All infantry in reserve. No scatter on DS. Half deploy Round 1.</description></rule>
    <rule id="rule-rite-fury" name="Rite: Fury of the Ancients" hidden="false"><description>Dreadnoughts as Troops with Line. +1 Atk.</description></rule>
    <rule id="rule-low-cap" name="Lord of War Cap (25%)" hidden="false"><description>Lord of War selections may not exceed 25% of your total army points. Primarchs (155-180 pts) require 620+ pt games. Titans require even larger. No LoW below 500 pts.</description></rule>
    <rule id="rule-prov-survivors" name="Survivors of the Dark Age" hidden="false"><description>+1 Ld all units. Access to advanced weapons (lasguns may upgrade to volkite for +5 pts/unit).</description></rule>
    <rule id="rule-prov-feral" name="Feral Warriors" hidden="false"><description>+1 Atk in melee. -1 to Hit shooting. Cheap and fierce.</description></rule>
    <rule id="rule-prov-genebred" name="Gene-bred" hidden="false"><description>+1 HP for all infantry. +5 pts per unit. Vat-grown soldiers.</description></rule>
    <rule id="rule-prov-alchem" name="Alchem-jacketed" hidden="false"><description>+1 Save all infantry (max 3+). +5 pts per unit. Chemically enhanced.</description></rule>
    <rule id="rule-prov-culthorde" name="Cult Horde (Traitor only)" hidden="false"><description>All units Fearless. -1 to Hit (frenzied). Traitor only.</description></rule>
    <rule id="rule-prov-warriorelite" name="Warrior Elite" hidden="false"><description>+1 Skill all units. +5 pts per unit. Professional soldiers.</description></rule>
    <rule id="rule-prov-tainted" name="Tainted Flesh (Traitor only)" hidden="false"><description>+1 HP, +1 Atk. -1 Ld. Traitor only. Chaos-mutated.</description></rule>
    <rule id="rule-cohort-cthonian" name="Cthonian Headhunters" hidden="false"><description>One infantry unit may Infiltrate. +1 to Hit against the enemy&#x27;s most expensive unit.</description></rule>
    <rule id="rule-cohort-inwit" name="Inwit Phalangites" hidden="false"><description>All infantry gain Stubborn. +1 Save when in cover (max 2+).</description></rule>
    <rule id="rule-cohort-saturnyne" name="Saturnyne Hoplites" hidden="false"><description>Veletaris units become Troops (gain Line). +1 Ld army-wide.</description></rule>
    <rule id="rule-cohort-kambrea" name="Kambrea Lifeguard" hidden="false"><description>+1 Mv for all tanks. Leman Russ units may re-roll one To Hit die.</description></rule>
    <rule id="rule-cohort-agathon" name="Agathon Reconquistors" hidden="false"><description>All fast attack units gain Scout. +1 to Initiative rolls.</description></rule>
    <rule id="rule-forge-mars" name="Mars (Loyalist)" hidden="false"><description>All Automata gain +1 Ld. Archmagos units may repair 2 HP instead of 1 with Machinator Array.</description></rule>
    <rule id="rule-forge-ryza" name="Ryza" hidden="false"><description>All plasma weapons improve their W value by 1. Gets Hot triggers on 1-2 instead of just 1.</description></rule>
    <rule id="rule-forge-graia" name="Graia" hidden="false"><description>All units gain Stubborn. +1 to Deny the Witch rolls.</description></rule>
    <rule id="rule-forge-metalica" name="Metalica" hidden="false"><description>All units gain +0.5" Mv. Units may Advance and still fire Heavy weapons at -1 to Hit.</description></rule>
    <rule id="rule-forge-stygies" name="Stygies VIII" hidden="false"><description>Up to 3 units may Infiltrate. All units count as in cover during Round 1.</description></rule>
    <rule id="rule-forge-xana" name="Xana II (Dark Mechanicum)" hidden="false"><description>All Stalker Constructs gain +1 HP. Noosphere Gestalt bonus kicks in at 2 units instead of 3.</description></rule>
    <rule id="rule-forge-cyclo" name="Cyclothrathe (Dark Mechanicum)" hidden="false"><description>All units gain Rad-saturation (enemy weapons +1 W in melee vs this unit). Scrap Code may be used twice per game.</description></rule>
    <rule id="rule-forge-kelbor" name="Kelbor-Hal&#x27;s Host (Dark Mechanicum)" hidden="false"><description>Unlimited Dark Pacts (no limit per game). However, Warp Backlash results affect D3 units instead of 1.</description></rule>
    <rule id="rule-forge-zhao" name="Zhao-Arkhad (Loyalist or Traitor)" hidden="false"><description>All Battle-Automata gain +1 to Hit at long range (over half their weapon&#x27;s stated Range). Once per game, you may unearth a Lost Pattern: choose one Vehicle or Automata in your army — for the rest of the game, that unit&#x27;s primary ranged weapon improves its W value by 1.</description></rule>
  </sharedRules>
</gameSystem>
