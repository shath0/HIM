<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="him-system" name="Heresy in Miniature v3.0" revision="8" battleScribeVersion="2.03" authorName="Heresy in Miniature" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
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
    <!-- ══════════════════════════════════════════════
         FACTION SELECTION
         One Faction + one Legion/Subfaction per roster.
         Faction is always the first thing you pick.
         ══════════════════════════════════════════════ -->
    <categoryEntry id="cat-faction" name="★ Faction" hidden="false">
      <constraints>
        <constraint field="selections" scope="roster" value="1" percentValue="false" shared="true"
          includeChildSelections="true" includeChildForces="true" id="min-faction" type="min"/>
        <constraint field="selections" scope="roster" value="1" percentValue="false" shared="true"
          includeChildSelections="true" includeChildForces="true" id="max-faction" type="max"/>
      </constraints>
    </categoryEntry>
    <categoryEntry id="cat-legion" name="★ Legion / Subfaction" hidden="false">
      <constraints>
        <constraint field="selections" scope="roster" value="0" percentValue="false" shared="true"
          includeChildSelections="true" includeChildForces="true" id="min-legion" type="min"/>
        <constraint field="selections" scope="roster" value="1" percentValue="false" shared="true"
          includeChildSelections="true" includeChildForces="true" id="max-legion" type="max"/>
      </constraints>
    </categoryEntry>
    <categoryEntry id="cat-rite" name="Rite of War" hidden="false">
      <constraints>
        <constraint field="selections" scope="roster" value="0" percentValue="false" shared="true"
          includeChildSelections="true" includeChildForces="true" id="min-rite" type="min"/>
        <constraint field="selections" scope="roster" value="1" percentValue="false" shared="true"
          includeChildSelections="true" includeChildForces="true" id="max-rite" type="max"/>
      </constraints>
    </categoryEntry>
    <!-- ══════════════════════════════════════════════
         BATTLEFIELD ROLES
         ══════════════════════════════════════════════ -->
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
    <!-- ══════════════════════════════════════════════
         FACTION ALIGNMENT (hidden, used for validation)
         ══════════════════════════════════════════════ -->
    <categoryEntry id="cat-loyalist-sub" name="Loyalist Subfaction" hidden="true"/>
    <categoryEntry id="cat-traitor-sub" name="Traitor Subfaction" hidden="true"/>
    <categoryEntry id="cat-either-sub" name="Either Subfaction" hidden="true"/>
  </categoryEntries>
  <forceEntries>

    <!-- ══ OPEN / NARRATIVE PLAY ═══════════════════════════════════════
         No slot maximums enforced. Use for campaigns, lopsided scenarios,
         collection-based games, or when you just want to play freely.
    ════════════════════════════════════════════════════════════════════ -->
    <forceEntry id="force-open" name="Open / Narrative Force (any pts)" hidden="false"><categoryLinks>
      <categoryLink id="fl-op-fac" name="★ Faction" targetId="cat-faction" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="min-fl-op-fac" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-op-fac" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-op-leg" name="★ Legion / Subfaction" targetId="cat-legion" primary="false"/>
      <categoryLink id="fl-op-rit" name="Rite of War" targetId="cat-rite" primary="false"/>
      <categoryLink id="fl-op-hq"  name="HQ"            targetId="cat-hq"       primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-op-hq" type="min"/></constraints>
      </categoryLink>
      <categoryLink id="fl-op-tr"  name="Troops"        targetId="cat-troops"   primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-op-tr" type="min"/></constraints>
      </categoryLink>
      <categoryLink id="fl-op-el"  name="Elites"        targetId="cat-elites"   primary="false"/>
      <categoryLink id="fl-op-hs"  name="Heavy Support" targetId="cat-heavy"    primary="false"/>
      <categoryLink id="fl-op-fa"  name="Fast Attack"   targetId="cat-fast"     primary="false"/>
      <categoryLink id="fl-op-fly" name="Flyer"         targetId="cat-flyer"    primary="false"/>
      <categoryLink id="fl-op-low" name="Lord of War"   targetId="cat-low"      primary="false"/>
      <categoryLink id="fl-op-tr2" name="Transport"     targetId="cat-transport" primary="false"/>
      <categoryLink id="fl-op-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <categoryLink id="fl-op-fort" name="Fortification" targetId="cat-fort"    primary="false"/>
      <!-- Boons — visible subcategory for campaign/narrative play -->
      <categoryLink id="fl-op-bl"  name="★ Boon — Loyalist"          targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="fl-op-blc" name="★ Campaign Boon — Loyalist"  targetId="cat-boon-l-camp" primary="false"/>
      <categoryLink id="fl-op-bt"  name="★ Boon — Traitor"           targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="fl-op-btc" name="★ Campaign Boon — Traitor"   targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>

    <!-- ══ CRUSADE FORCE — Legiones Astartes (300-750 pts) ════════════
         Standard balanced detachment. Loyalist or Traitor Legion.
    ════════════════════════════════════════════════════════════════════ -->
    <forceEntry id="force-crusade" name="Crusade Force — Legiones Astartes (300–750 pts)" hidden="false"><categoryLinks>
      <categoryLink id="fl-c-fac" name="★ Faction" targetId="cat-faction" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="min-fl-c-fac" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-c-fac" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-c-leg" name="★ Legion / Subfaction" targetId="cat-legion" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="min-fl-c-leg" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-c-leg" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-c-rit" name="Rite of War" targetId="cat-rite" primary="false"/>
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
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-c-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-c-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-c-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-c-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-c-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-c-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-c-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-c-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-c-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-c-low-pct" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-c-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <categoryLink id="fl-c-aux" name="Allied Detachment" targetId="cat-allies" primary="false"/>
      <!-- Boons — visible subcategory for campaign/narrative play -->
      <categoryLink id="fl-c-bl"  name="★ Boon — Loyalist"          targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="fl-c-blc" name="★ Campaign Boon — Loyalist"  targetId="cat-boon-l-camp" primary="false"/>
      <categoryLink id="fl-c-bt"  name="★ Boon — Traitor"           targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="fl-c-btc" name="★ Campaign Boon — Traitor"   targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>

    <!-- ══ GARRISON FORCE (300-500 pts) ══════════════════════════════
         Siege defence, Zone Mortalis. Any Faction with Garrison role.
         Troops +1 Sv near objectives. 1 free wall for Commander.
    ════════════════════════════════════════════════════════════════════ -->
    <forceEntry id="force-garrison" name="Garrison Force (300–500 pts)" hidden="false"><categoryLinks>
      <categoryLink id="fl-g-fac" name="★ Faction" targetId="cat-faction" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="min-fl-g-fac" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-g-fac" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-g-leg" name="★ Legion / Subfaction" targetId="cat-legion" primary="false"/>
      <categoryLink id="fl-g-rit" name="Rite of War" targetId="cat-rite" primary="false"/>
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
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-g-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-g-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="4" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-g-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-g-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-g-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-g-fort" name="Fortification" targetId="cat-fort" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-g-fort" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-g-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <!-- Boons — visible subcategory for campaign/narrative play -->
      <categoryLink id="fl-g-bl"  name="★ Boon — Loyalist"          targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="fl-g-blc" name="★ Campaign Boon — Loyalist"  targetId="cat-boon-l-camp" primary="false"/>
      <categoryLink id="fl-g-bt"  name="★ Boon — Traitor"           targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="fl-g-btc" name="★ Campaign Boon — Traitor"   targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>

    <!-- ══ SPEARHEAD FORCE (500-750 pts) ═════════════════════════════
         Vehicle-heavy thrust. Any Faction. All Vehicles +1 Mv Round 1.
    ════════════════════════════════════════════════════════════════════ -->
    <forceEntry id="force-spearhead" name="Spearhead Force (500–750 pts)" hidden="false"><categoryLinks>
      <categoryLink id="fl-s-fac" name="★ Faction" targetId="cat-faction" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="min-fl-s-fac" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-s-fac" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-s-leg" name="★ Legion / Subfaction" targetId="cat-legion" primary="false"/>
      <categoryLink id="fl-s-rit" name="Rite of War" targetId="cat-rite" primary="false"/>
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
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-s-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-s-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-s-hs" type="min"/>
          <constraint field="selections" scope="force" value="5" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-s-hs" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-s-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-s-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-s-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-s-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-s-low-pct" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-s-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-s-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-s-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <!-- Boons — visible subcategory for campaign/narrative play -->
      <categoryLink id="fl-s-bl"  name="★ Boon — Loyalist"          targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="fl-s-blc" name="★ Campaign Boon — Loyalist"  targetId="cat-boon-l-camp" primary="false"/>
      <categoryLink id="fl-s-bt"  name="★ Boon — Traitor"           targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="fl-s-btc" name="★ Campaign Boon — Traitor"   targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>

    <!-- ══ RECON FORCE (200-400 pts) ══════════════════════════════════
         Small-scale skirmish. Any Faction. All units gain Scout.
         No single unit over 80 pts.
    ════════════════════════════════════════════════════════════════════ -->
    <forceEntry id="force-recon" name="Recon Force (200–400 pts)" hidden="false"><categoryLinks>
      <categoryLink id="fl-r-fac" name="★ Faction" targetId="cat-faction" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="min-fl-r-fac" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-r-fac" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-r-leg" name="★ Legion / Subfaction" targetId="cat-legion" primary="false"/>
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
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-r-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-r-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-r-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-r-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-r-fa" type="max"/></constraints>
      </categoryLink>
      <!-- Boons — visible subcategory for campaign/narrative play -->
      <categoryLink id="fl-r-bl"  name="★ Boon — Loyalist"          targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="fl-r-blc" name="★ Campaign Boon — Loyalist"  targetId="cat-boon-l-camp" primary="false"/>
      <categoryLink id="fl-r-bt"  name="★ Boon — Traitor"           targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="fl-r-btc" name="★ Campaign Boon — Traitor"   targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>

    <!-- ══ SOLAR AUXILIA TERCIO (300-750 pts) ═════════════════════════
         Massed infantry, armour, artillery. Faction: Solar Auxilia.
         +1 Reaction per 2 Troops (max +2).
    ════════════════════════════════════════════════════════════════════ -->
    <forceEntry id="force-auxilia" name="Solar Auxilia Tercio (300–750 pts)" hidden="false"><categoryLinks>
      <categoryLink id="fl-a-fac" name="★ Faction" targetId="cat-faction" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="min-fl-a-fac" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-a-fac" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-a-leg" name="★ Legion / Subfaction" targetId="cat-legion" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="min-fl-a-leg" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-a-leg" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-a-rit" name="Rite of War" targetId="cat-rite" primary="false"/>
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
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-a-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-a-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-a-hs" type="min"/>
          <constraint field="selections" scope="force" value="4" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-a-hs" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-a-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-a-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-a-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-a-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-a-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-a-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-a-low-pct" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-a-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <!-- Boons — visible subcategory for campaign/narrative play -->
      <categoryLink id="fl-a-bl"  name="★ Boon — Loyalist"          targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="fl-a-blc" name="★ Campaign Boon — Loyalist"  targetId="cat-boon-l-camp" primary="false"/>
      <categoryLink id="fl-a-bt"  name="★ Boon — Traitor"           targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="fl-a-btc" name="★ Campaign Boon — Traitor"   targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>

    <!-- ══ MECHANICUM TAGHMATA (300-750 pts) ══════════════════════════
         Automata, esoteric weapons, Knight support. Cortex Controller required.
    ════════════════════════════════════════════════════════════════════ -->
    <forceEntry id="force-mechanicum" name="Mechanicum Taghmata (300–750 pts)" hidden="false"><categoryLinks>
      <categoryLink id="fl-m-fac" name="★ Faction" targetId="cat-faction" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="min-fl-m-fac" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-m-fac" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-m-leg" name="★ Legion / Subfaction" targetId="cat-legion" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="min-fl-m-leg" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-m-leg" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-m-rit" name="Rite of War" targetId="cat-rite" primary="false"/>
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
        <constraints><constraint field="selections" scope="force" value="4" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-m-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-m-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-m-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-m-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-m-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-m-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-m-low" type="max"/>
          <constraint field="costs" scope="force" value="30" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-m-low-pct" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-m-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <!-- Boons — visible subcategory for campaign/narrative play -->
      <categoryLink id="fl-m-bl"  name="★ Boon — Loyalist"          targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="fl-m-blc" name="★ Campaign Boon — Loyalist"  targetId="cat-boon-l-camp" primary="false"/>
      <categoryLink id="fl-m-bt"  name="★ Boon — Traitor"           targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="fl-m-btc" name="★ Campaign Boon — Traitor"   targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>

    <!-- ══ MILITIA LEVY (200-500 pts) ════════════════════════════════
         Numbers and expendable troops. 6+ Troops = +1 Reaction.
    ════════════════════════════════════════════════════════════════════ -->
    <forceEntry id="force-militia" name="Militia Levy (200–500 pts)" hidden="false"><categoryLinks>
      <categoryLink id="fl-mi-fac" name="★ Faction" targetId="cat-faction" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="min-fl-mi-fac" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-mi-fac" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-mi-leg" name="★ Legion / Subfaction" targetId="cat-legion" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="min-fl-mi-leg" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-mi-leg" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-mi-rit" name="Rite of War" targetId="cat-rite" primary="false"/>
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
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-mi-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-mi-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="4" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-mi-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-mi-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-mi-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-mi-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-mi-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-mi-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-mi-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-mi-low-pct" type="max"/>
        </constraints>
      </categoryLink>
      <!-- Boons — visible subcategory for campaign/narrative play -->
      <categoryLink id="fl-mi-bl"  name="★ Boon — Loyalist"          targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="fl-mi-blc" name="★ Campaign Boon — Loyalist"  targetId="cat-boon-l-camp" primary="false"/>
      <categoryLink id="fl-mi-bt"  name="★ Boon — Traitor"           targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="fl-mi-btc" name="★ Campaign Boon — Traitor"   targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>

    <!-- ══ QUESTORIS HOUSEHOLD (400-750 pts) ══════════════════════════
         Knight-centric. 2–6 Knights core; Armigers and household troops support.
    ════════════════════════════════════════════════════════════════════ -->
    <forceEntry id="force-knights" name="Questoris Household (400–750 pts)" hidden="false"><categoryLinks>
      <categoryLink id="fl-k-fac" name="★ Faction" targetId="cat-faction" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="min-fl-k-fac" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-k-fac" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-k-leg" name="★ Legion / Subfaction" targetId="cat-legion" primary="false"/>
      <categoryLink id="fl-k-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-k-hq" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-k-hq" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-k-tr" name="Household Troops" targetId="cat-troops" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-k-tr" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-k-low" name="Knights" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-k-low" type="min"/>
          <constraint field="selections" scope="force" value="6" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-k-low" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-k-fa" name="Armigers" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="4" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-k-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-k-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-k-el" type="max"/></constraints>
      </categoryLink>
      <!-- Boons — visible subcategory for campaign/narrative play -->
      <categoryLink id="fl-k-bl"  name="★ Boon — Loyalist"          targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="fl-k-blc" name="★ Campaign Boon — Loyalist"  targetId="cat-boon-l-camp" primary="false"/>
      <categoryLink id="fl-k-bt"  name="★ Boon — Traitor"           targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="fl-k-btc" name="★ Campaign Boon — Traitor"   targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>

    <!-- ══ TALONS OF THE EMPEROR (Standalone — 300-750 pts) ═══════════
         Custodians and Sisters of Silence as a primary force.
         Previously only an Auxiliary detachment.
    ════════════════════════════════════════════════════════════════════ -->
    <forceEntry id="force-talons" name="Talons of the Emperor (300–750 pts)" hidden="false"><categoryLinks>
      <categoryLink id="fl-t-fac" name="★ Faction" targetId="cat-faction" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="min-fl-t-fac" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-t-fac" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-t-leg" name="★ Legion / Subfaction" targetId="cat-legion" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="min-fl-t-leg" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-t-leg" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-t-rit" name="Rite of War" targetId="cat-rite" primary="false"/>
      <categoryLink id="fl-t-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-t-hq" type="min"/>
          <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-t-hq" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-t-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-t-tr" type="min"/>
          <constraint field="selections" scope="force" value="6" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-t-tr" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-t-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-t-el" type="min"/>
          <constraint field="selections" scope="force" value="4" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-t-el" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-t-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="3" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-t-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-t-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-t-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-t-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-t-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-t-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-t-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-t-low-pct" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-t-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <!-- Boons — visible subcategory for campaign/narrative play -->
      <categoryLink id="fl-t-bl"  name="★ Boon — Loyalist"          targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="fl-t-blc" name="★ Campaign Boon — Loyalist"  targetId="cat-boon-l-camp" primary="false"/>
      <categoryLink id="fl-t-bt"  name="★ Boon — Traitor"           targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="fl-t-btc" name="★ Campaign Boon — Traitor"   targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>

    <!-- ══ DAEMONIC HOST (Traitor Auxiliary / Standalone — 200-500 pts)
         For Word Bearers summoned hosts or standalone Warp incursions.
    ════════════════════════════════════════════════════════════════════ -->
    <forceEntry id="force-daemons" name="Daemonic Host (200–500 pts)" hidden="false"><categoryLinks>
      <categoryLink id="fl-d-fac" name="★ Faction" targetId="cat-faction" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="min-fl-d-fac" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-d-fac" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-d-leg" name="★ Legion / Subfaction" targetId="cat-legion" primary="false"/>
      <categoryLink id="fl-d-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-d-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-d-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-d-tr" type="min"/>
          <constraint field="selections" scope="force" value="6" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-d-tr" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-d-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-d-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-d-low" name="Greater Daemon" targetId="cat-low" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-d-low" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-d-hs" name="Daemon Engines" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-d-hs" type="max"/></constraints>
      </categoryLink>
      <!-- Boons — visible subcategory for campaign/narrative play -->
      <categoryLink id="fl-d-bl"  name="★ Boon — Loyalist"          targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="fl-d-blc" name="★ Campaign Boon — Loyalist"  targetId="cat-boon-l-camp" primary="false"/>
      <categoryLink id="fl-d-bt"  name="★ Boon — Traitor"           targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="fl-d-btc" name="★ Campaign Boon — Traitor"   targetId="cat-boon-t-camp" primary="false"/>
    </categoryLinks></forceEntry>

    <!-- ══ ALLIED DETACHMENT (any — up to 25% of primary force pts) ══
         Attach an auxiliary contingent to any primary force.
         Talons, Daemons, Knights, or Militia as allies.
    ════════════════════════════════════════════════════════════════════ -->
    <forceEntry id="force-allied" name="Allied Detachment (up to 25% of army pts)" hidden="false"><categoryLinks>
      <categoryLink id="fl-al-fac" name="★ Allied Faction" targetId="cat-faction" primary="true">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="min-fl-al-fac" type="min"/>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-al-fac" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-al-leg" name="★ Legion / Subfaction" targetId="cat-legion" primary="false"/>
      <categoryLink id="fl-al-hq" name="HQ" targetId="cat-hq" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-al-hq" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-al-tr" name="Troops" targetId="cat-troops" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="min-fl-al-tr" type="min"/>
          <constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-al-tr" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-al-el" name="Elites" targetId="cat-elites" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-al-el" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-al-hs" name="Heavy Support" targetId="cat-heavy" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-al-hs" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-al-fa" name="Fast Attack" targetId="cat-fast" primary="false">
        <constraints><constraint field="selections" scope="force" value="2" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-al-fa" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-al-low" name="Lord of War" targetId="cat-low" primary="false">
        <constraints>
          <constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-al-low" type="max"/>
          <constraint field="costs" scope="force" value="25" percentValue="true" shared="true" includeChildSelections="true" includeChildForces="false" id="max-fl-al-low-pct" type="max"/>
        </constraints>
      </categoryLink>
      <categoryLink id="fl-al-fly" name="Flyer" targetId="cat-flyer" primary="false">
        <constraints><constraint field="selections" scope="force" value="1" percentValue="false" shared="true" includeChildSelections="false" includeChildForces="false" id="max-fl-al-fly" type="max"/></constraints>
      </categoryLink>
      <categoryLink id="fl-al-tr2" name="Transport" targetId="cat-transport" primary="false"/>
      <!-- Boons — visible subcategory for campaign/narrative play -->
      <categoryLink id="fl-al-bl"  name="★ Boon — Loyalist"          targetId="cat-boon-l-cond" primary="false"/>
      <categoryLink id="fl-al-blc" name="★ Campaign Boon — Loyalist"  targetId="cat-boon-l-camp" primary="false"/>
      <categoryLink id="fl-al-bt"  name="★ Boon — Traitor"           targetId="cat-boon-t-cond" primary="false"/>
      <categoryLink id="fl-al-btc" name="★ Campaign Boon — Traitor"   targetId="cat-boon-t-camp" primary="false"/>
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