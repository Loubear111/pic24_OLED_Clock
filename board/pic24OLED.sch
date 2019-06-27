<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.4.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting keepoldvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="pic24fj64ga002">
<packages>
<package name="QFN28_6X6MC">
<smd name="1" x="-2.796803125" y="1.95" dx="0.3048" dy="1.016" layer="1" rot="R270"/>
<smd name="2" x="-2.796803125" y="1.3" dx="0.3048" dy="1.016" layer="1" rot="R270"/>
<smd name="3" x="-2.796803125" y="0.65" dx="0.3048" dy="1.016" layer="1" rot="R270"/>
<smd name="4" x="-2.796803125" y="0" dx="0.3048" dy="1.016" layer="1" rot="R270"/>
<smd name="5" x="-2.796803125" y="-0.65" dx="0.3048" dy="1.016" layer="1" rot="R270"/>
<smd name="6" x="-2.796803125" y="-1.3" dx="0.3048" dy="1.016" layer="1" rot="R270"/>
<smd name="7" x="-2.796803125" y="-1.95" dx="0.3048" dy="1.016" layer="1" rot="R270"/>
<smd name="8" x="-1.95" y="-2.796803125" dx="0.3048" dy="1.016" layer="1" rot="R180"/>
<smd name="9" x="-1.3" y="-2.796803125" dx="0.3048" dy="1.016" layer="1" rot="R180"/>
<smd name="10" x="-0.65" y="-2.796803125" dx="0.3048" dy="1.016" layer="1" rot="R180"/>
<smd name="11" x="0" y="-2.796803125" dx="0.3048" dy="1.016" layer="1" rot="R180"/>
<smd name="12" x="0.65" y="-2.796803125" dx="0.3048" dy="1.016" layer="1" rot="R180"/>
<smd name="13" x="1.3" y="-2.796803125" dx="0.3048" dy="1.016" layer="1" rot="R180"/>
<smd name="14" x="1.95" y="-2.796803125" dx="0.3048" dy="1.016" layer="1" rot="R180"/>
<smd name="15" x="2.796803125" y="-1.95" dx="0.3048" dy="1.016" layer="1" rot="R270"/>
<smd name="16" x="2.796803125" y="-1.3" dx="0.3048" dy="1.016" layer="1" rot="R270"/>
<smd name="17" x="2.796803125" y="-0.65" dx="0.3048" dy="1.016" layer="1" rot="R270"/>
<smd name="18" x="2.796803125" y="0" dx="0.3048" dy="1.016" layer="1" rot="R270"/>
<smd name="19" x="2.796803125" y="0.65" dx="0.3048" dy="1.016" layer="1" rot="R270"/>
<smd name="20" x="2.796803125" y="1.3" dx="0.3048" dy="1.016" layer="1" rot="R270"/>
<smd name="21" x="2.796803125" y="1.95" dx="0.3048" dy="1.016" layer="1" rot="R270"/>
<smd name="22" x="1.95" y="2.796803125" dx="0.3048" dy="1.016" layer="1" rot="R180"/>
<smd name="23" x="1.3" y="2.796803125" dx="0.3048" dy="1.016" layer="1" rot="R180"/>
<smd name="24" x="0.65" y="2.796803125" dx="0.3048" dy="1.016" layer="1" rot="R180"/>
<smd name="25" x="0" y="2.796803125" dx="0.3048" dy="1.016" layer="1" rot="R180"/>
<smd name="26" x="-0.65" y="2.796803125" dx="0.3048" dy="1.016" layer="1" rot="R180"/>
<smd name="27" x="-1.3" y="2.796803125" dx="0.3048" dy="1.016" layer="1" rot="R180"/>
<smd name="28" x="-1.95" y="2.796803125" dx="0.3048" dy="1.016" layer="1" rot="R180"/>
<smd name="HTAB" x="0" y="0" dx="4.191" dy="4.191" layer="1" cream="no"/>
<wire x1="-3.1242" y1="-3.1242" x2="-2.4384" y2="-3.1242" width="0.1524" layer="21"/>
<wire x1="3.1242" y1="-3.1242" x2="3.1242" y2="-2.4384" width="0.1524" layer="21"/>
<wire x1="3.1242" y1="3.1242" x2="2.4384" y2="3.1242" width="0.1524" layer="21"/>
<wire x1="-3.1242" y1="3.1242" x2="-3.1242" y2="2.4384" width="0.1524" layer="21"/>
<wire x1="-3.1242" y1="-2.4384" x2="-3.1242" y2="-3.1242" width="0.1524" layer="21"/>
<wire x1="2.4384" y1="-3.1242" x2="3.1242" y2="-3.1242" width="0.1524" layer="21"/>
<wire x1="3.1242" y1="2.4384" x2="3.1242" y2="3.1242" width="0.1524" layer="21"/>
<wire x1="-2.4384" y1="3.1242" x2="-3.1242" y2="3.1242" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21">
<vertex x="-0.8405" y="-3.558803125"/>
<vertex x="-0.8405" y="-3.812803125"/>
<vertex x="-0.4595" y="-3.812803125"/>
<vertex x="-0.4595" y="-3.558803125"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="3.812803125" y="1.4905"/>
<vertex x="3.812803125" y="1.1095"/>
<vertex x="3.558803125" y="1.1095"/>
<vertex x="3.558803125" y="1.4905"/>
</polygon>
<text x="-4.5212" y="1.651" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<polygon width="0.0254" layer="31">
<vertex x="-1.9955" y="1.9955"/>
<vertex x="-1.9955" y="0.7985"/>
<vertex x="-0.7985" y="0.7985"/>
<vertex x="-0.7985" y="1.9955"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-1.9955" y="0.5985"/>
<vertex x="-1.9955" y="-0.5985"/>
<vertex x="-0.7985" y="-0.5985"/>
<vertex x="-0.7985" y="0.5985"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-1.9955" y="-0.7985"/>
<vertex x="-1.9955" y="-1.9955"/>
<vertex x="-0.7985" y="-1.9955"/>
<vertex x="-0.7985" y="-0.7985"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-0.5985" y="1.9955"/>
<vertex x="-0.5985" y="0.7985"/>
<vertex x="0.5985" y="0.7985"/>
<vertex x="0.5985" y="1.9955"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-0.5985" y="0.5985"/>
<vertex x="-0.5985" y="-0.5985"/>
<vertex x="0.5985" y="-0.5985"/>
<vertex x="0.5985" y="0.5985"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-0.5985" y="-0.7985"/>
<vertex x="-0.5985" y="-1.9955"/>
<vertex x="0.5985" y="-1.9955"/>
<vertex x="0.5985" y="-0.7985"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="0.7985" y="1.9955"/>
<vertex x="0.7985" y="0.7985"/>
<vertex x="1.9955" y="0.7985"/>
<vertex x="1.9955" y="1.9955"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="0.7985" y="0.5985"/>
<vertex x="0.7985" y="-0.5985"/>
<vertex x="1.9955" y="-0.5985"/>
<vertex x="1.9955" y="0.5985"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="0.7985" y="-0.7985"/>
<vertex x="0.7985" y="-1.9955"/>
<vertex x="1.9955" y="-1.9955"/>
<vertex x="1.9955" y="-0.7985"/>
</polygon>
<wire x1="-3.2512" y1="-3.2512" x2="-3.2512" y2="-2.3622" width="0.1524" layer="39"/>
<wire x1="-3.2512" y1="-2.3622" x2="-3.556" y2="-2.3622" width="0.1524" layer="39"/>
<wire x1="-3.556" y1="-2.3622" x2="-3.556" y2="2.3622" width="0.1524" layer="39"/>
<wire x1="-3.556" y1="2.3622" x2="-3.2512" y2="2.3622" width="0.1524" layer="39"/>
<wire x1="-3.2512" y1="2.3622" x2="-3.2512" y2="3.2512" width="0.1524" layer="39"/>
<wire x1="-3.2512" y1="3.2512" x2="-2.3622" y2="3.2512" width="0.1524" layer="39"/>
<wire x1="-2.3622" y1="3.2512" x2="-2.3622" y2="3.556" width="0.1524" layer="39"/>
<wire x1="-2.3622" y1="3.556" x2="2.3622" y2="3.556" width="0.1524" layer="39"/>
<wire x1="2.3622" y1="3.556" x2="2.3622" y2="3.2512" width="0.1524" layer="39"/>
<wire x1="2.3622" y1="3.2512" x2="3.2512" y2="3.2512" width="0.1524" layer="39"/>
<wire x1="3.2512" y1="3.2512" x2="3.2512" y2="2.3622" width="0.1524" layer="39"/>
<wire x1="3.2512" y1="2.3622" x2="3.556" y2="2.3622" width="0.1524" layer="39"/>
<wire x1="3.556" y1="2.3622" x2="3.556" y2="-2.3622" width="0.1524" layer="39"/>
<wire x1="3.556" y1="-2.3622" x2="3.2512" y2="-2.3622" width="0.1524" layer="39"/>
<wire x1="3.2512" y1="-2.3622" x2="3.2512" y2="-3.2512" width="0.1524" layer="39"/>
<wire x1="3.2512" y1="-3.2512" x2="2.3622" y2="-3.2512" width="0.1524" layer="39"/>
<wire x1="2.3622" y1="-3.2512" x2="2.3622" y2="-3.556" width="0.1524" layer="39"/>
<wire x1="2.3622" y1="-3.556" x2="-2.3622" y2="-3.556" width="0.1524" layer="39"/>
<wire x1="-2.3622" y1="-3.556" x2="-2.3622" y2="-3.2512" width="0.1524" layer="39"/>
<wire x1="-2.3622" y1="-3.2512" x2="-3.2512" y2="-3.2512" width="0.1524" layer="39"/>
<polygon width="0.1524" layer="39">
<vertex x="-3.254" y="-3.254"/>
<vertex x="-3.254" y="-2.3564"/>
<vertex x="-3.5588" y="-2.3564"/>
<vertex x="-3.5588" y="2.3564"/>
<vertex x="-3.254" y="2.3564"/>
<vertex x="-3.254" y="3.254"/>
<vertex x="-2.3564" y="3.254"/>
<vertex x="-2.3564" y="3.5588"/>
<vertex x="2.3564" y="3.5588"/>
<vertex x="2.3564" y="3.254"/>
<vertex x="3.254" y="3.254"/>
<vertex x="3.254" y="2.3564"/>
<vertex x="3.5588" y="2.3564"/>
<vertex x="3.5588" y="-2.3564"/>
<vertex x="3.254" y="-2.3564"/>
<vertex x="3.254" y="-3.254"/>
<vertex x="2.3564" y="-3.254"/>
<vertex x="2.3564" y="-3.5588"/>
<vertex x="-2.3564" y="-3.5588"/>
<vertex x="-2.3564" y="-3.254"/>
</polygon>
<wire x1="-2.9972" y1="1.7272" x2="-1.7272" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="2.9972" x2="1.778" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="1.4732" y1="2.9972" x2="1.1176" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="0.8382" y1="2.9972" x2="0.4826" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="0.1778" y1="2.9972" x2="-0.1778" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="-0.4826" y1="2.9972" x2="-0.8382" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="2.9972" x2="-1.4732" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="2.9972" x2="-2.1336" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="2.1336" x2="-2.9972" y2="1.778" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="1.4732" x2="-2.9972" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="0.8382" x2="-2.9972" y2="0.4826" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="0.1778" x2="-2.9972" y2="-0.1778" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="-0.4826" x2="-2.9972" y2="-0.8382" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="-1.1176" x2="-2.9972" y2="-1.4732" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="-1.778" x2="-2.9972" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-2.9972" x2="-1.778" y2="-2.9972" width="0.1524" layer="51"/>
<wire x1="-1.4732" y1="-2.9972" x2="-1.1176" y2="-2.9972" width="0.1524" layer="51"/>
<wire x1="-0.8382" y1="-2.9972" x2="-0.4826" y2="-2.9972" width="0.1524" layer="51"/>
<wire x1="-0.1778" y1="-2.9972" x2="0.1778" y2="-2.9972" width="0.1524" layer="51"/>
<wire x1="0.4826" y1="-2.9972" x2="0.8382" y2="-2.9972" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="-2.9972" x2="1.4732" y2="-2.9972" width="0.1524" layer="51"/>
<wire x1="1.778" y1="-2.9972" x2="2.1336" y2="-2.9972" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="-2.1336" x2="2.9972" y2="-1.778" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="-1.4732" x2="2.9972" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="-0.8382" x2="2.9972" y2="-0.4826" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="-0.1778" x2="2.9972" y2="0.1778" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="0.4826" x2="2.9972" y2="0.8382" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="1.1176" x2="2.9972" y2="1.4732" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="1.778" x2="2.9972" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="-2.9972" x2="2.9972" y2="-2.9972" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="-2.9972" x2="2.9972" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="2.9972" x2="-2.9972" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="2.9972" x2="-2.9972" y2="-2.9972" width="0.1524" layer="51"/>
<text x="-2.8702" y="1.651" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.1524" layer="23"/>
<wire x1="0" y1="-0.254" x2="0" y2="0.254" width="0.1524" layer="23"/>
<text x="-3.2766" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="QFN28_6X6MC-M">
<smd name="1" x="-2.8448" y="1.95" dx="0.3048" dy="1.1176" layer="1" rot="R270"/>
<smd name="2" x="-2.8448" y="1.3" dx="0.3048" dy="1.1176" layer="1" rot="R270"/>
<smd name="3" x="-2.8448" y="0.65" dx="0.3048" dy="1.1176" layer="1" rot="R270"/>
<smd name="4" x="-2.8448" y="0" dx="0.3048" dy="1.1176" layer="1" rot="R270"/>
<smd name="5" x="-2.8448" y="-0.65" dx="0.3048" dy="1.1176" layer="1" rot="R270"/>
<smd name="6" x="-2.8448" y="-1.3" dx="0.3048" dy="1.1176" layer="1" rot="R270"/>
<smd name="7" x="-2.8448" y="-1.95" dx="0.3048" dy="1.1176" layer="1" rot="R270"/>
<smd name="8" x="-1.95" y="-2.8448" dx="0.3048" dy="1.1176" layer="1" rot="R180"/>
<smd name="9" x="-1.3" y="-2.8448" dx="0.3048" dy="1.1176" layer="1" rot="R180"/>
<smd name="10" x="-0.65" y="-2.8448" dx="0.3048" dy="1.1176" layer="1" rot="R180"/>
<smd name="11" x="0" y="-2.8448" dx="0.3048" dy="1.1176" layer="1" rot="R180"/>
<smd name="12" x="0.65" y="-2.8448" dx="0.3048" dy="1.1176" layer="1" rot="R180"/>
<smd name="13" x="1.3" y="-2.8448" dx="0.3048" dy="1.1176" layer="1" rot="R180"/>
<smd name="14" x="1.95" y="-2.8448" dx="0.3048" dy="1.1176" layer="1" rot="R180"/>
<smd name="15" x="2.8448" y="-1.95" dx="0.3048" dy="1.1176" layer="1" rot="R270"/>
<smd name="16" x="2.8448" y="-1.3" dx="0.3048" dy="1.1176" layer="1" rot="R270"/>
<smd name="17" x="2.8448" y="-0.65" dx="0.3048" dy="1.1176" layer="1" rot="R270"/>
<smd name="18" x="2.8448" y="0" dx="0.3048" dy="1.1176" layer="1" rot="R270"/>
<smd name="19" x="2.8448" y="0.65" dx="0.3048" dy="1.1176" layer="1" rot="R270"/>
<smd name="20" x="2.8448" y="1.3" dx="0.3048" dy="1.1176" layer="1" rot="R270"/>
<smd name="21" x="2.8448" y="1.95" dx="0.3048" dy="1.1176" layer="1" rot="R270"/>
<smd name="22" x="1.95" y="2.8448" dx="0.3048" dy="1.1176" layer="1" rot="R180"/>
<smd name="23" x="1.3" y="2.8448" dx="0.3048" dy="1.1176" layer="1" rot="R180"/>
<smd name="24" x="0.65" y="2.8448" dx="0.3048" dy="1.1176" layer="1" rot="R180"/>
<smd name="25" x="0" y="2.8448" dx="0.3048" dy="1.1176" layer="1" rot="R180"/>
<smd name="26" x="-0.65" y="2.8448" dx="0.3048" dy="1.1176" layer="1" rot="R180"/>
<smd name="27" x="-1.3" y="2.8448" dx="0.3048" dy="1.1176" layer="1" rot="R180"/>
<smd name="28" x="-1.95" y="2.8448" dx="0.3048" dy="1.1176" layer="1" rot="R180"/>
<smd name="29" x="0" y="0" dx="4.191" dy="4.191" layer="1" cream="no"/>
<wire x1="-3.1242" y1="-3.1242" x2="-2.4384" y2="-3.1242" width="0.1524" layer="21"/>
<wire x1="3.1242" y1="-3.1242" x2="3.1242" y2="-2.4384" width="0.1524" layer="21"/>
<wire x1="3.1242" y1="3.1242" x2="2.4384" y2="3.1242" width="0.1524" layer="21"/>
<wire x1="-3.1242" y1="3.1242" x2="-3.1242" y2="2.4384" width="0.1524" layer="21"/>
<wire x1="-3.1242" y1="-2.4384" x2="-3.1242" y2="-3.1242" width="0.1524" layer="21"/>
<wire x1="2.4384" y1="-3.1242" x2="3.1242" y2="-3.1242" width="0.1524" layer="21"/>
<wire x1="3.1242" y1="2.4384" x2="3.1242" y2="3.1242" width="0.1524" layer="21"/>
<wire x1="-2.4384" y1="3.1242" x2="-3.1242" y2="3.1242" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21">
<vertex x="-0.8405" y="-3.6576"/>
<vertex x="-0.8405" y="-3.9116"/>
<vertex x="-0.4595" y="-3.9116"/>
<vertex x="-0.4595" y="-3.6576"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="3.9116" y="1.4905"/>
<vertex x="3.9116" y="1.1095"/>
<vertex x="3.6576" y="1.1095"/>
<vertex x="3.6576" y="1.4905"/>
</polygon>
<text x="-4.6228" y="1.651" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<polygon width="0.0254" layer="31">
<vertex x="-1.9955" y="1.9955"/>
<vertex x="-1.9955" y="0.7985"/>
<vertex x="-0.7985" y="0.7985"/>
<vertex x="-0.7985" y="1.9955"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-1.9955" y="0.5985"/>
<vertex x="-1.9955" y="-0.5985"/>
<vertex x="-0.7985" y="-0.5985"/>
<vertex x="-0.7985" y="0.5985"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-1.9955" y="-0.7985"/>
<vertex x="-1.9955" y="-1.9955"/>
<vertex x="-0.7985" y="-1.9955"/>
<vertex x="-0.7985" y="-0.7985"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-0.5985" y="1.9955"/>
<vertex x="-0.5985" y="0.7985"/>
<vertex x="0.5985" y="0.7985"/>
<vertex x="0.5985" y="1.9955"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-0.5985" y="0.5985"/>
<vertex x="-0.5985" y="-0.5985"/>
<vertex x="0.5985" y="-0.5985"/>
<vertex x="0.5985" y="0.5985"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-0.5985" y="-0.7985"/>
<vertex x="-0.5985" y="-1.9955"/>
<vertex x="0.5985" y="-1.9955"/>
<vertex x="0.5985" y="-0.7985"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="0.7985" y="1.9955"/>
<vertex x="0.7985" y="0.7985"/>
<vertex x="1.9955" y="0.7985"/>
<vertex x="1.9955" y="1.9955"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="0.7985" y="0.5985"/>
<vertex x="0.7985" y="-0.5985"/>
<vertex x="1.9955" y="-0.5985"/>
<vertex x="1.9955" y="0.5985"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="0.7985" y="-0.7985"/>
<vertex x="0.7985" y="-1.9955"/>
<vertex x="1.9955" y="-1.9955"/>
<vertex x="1.9955" y="-0.7985"/>
</polygon>
<wire x1="-3.5052" y1="-3.5052" x2="-3.5052" y2="-2.6162" width="0.1524" layer="39"/>
<wire x1="-3.5052" y1="-2.6162" x2="-3.9116" y2="-2.6162" width="0.1524" layer="39"/>
<wire x1="-3.9116" y1="-2.6162" x2="-3.9116" y2="2.6162" width="0.1524" layer="39"/>
<wire x1="-3.9116" y1="2.6162" x2="-3.5052" y2="2.6162" width="0.1524" layer="39"/>
<wire x1="-3.5052" y1="2.6162" x2="-3.5052" y2="3.5052" width="0.1524" layer="39"/>
<wire x1="-3.5052" y1="3.5052" x2="-2.6162" y2="3.5052" width="0.1524" layer="39"/>
<wire x1="-2.6162" y1="3.5052" x2="-2.6162" y2="3.9116" width="0.1524" layer="39"/>
<wire x1="-2.6162" y1="3.9116" x2="2.6162" y2="3.9116" width="0.1524" layer="39"/>
<wire x1="2.6162" y1="3.9116" x2="2.6162" y2="3.5052" width="0.1524" layer="39"/>
<wire x1="2.6162" y1="3.5052" x2="3.5052" y2="3.5052" width="0.1524" layer="39"/>
<wire x1="3.5052" y1="3.5052" x2="3.5052" y2="2.6162" width="0.1524" layer="39"/>
<wire x1="3.5052" y1="2.6162" x2="3.9116" y2="2.6162" width="0.1524" layer="39"/>
<wire x1="3.9116" y1="2.6162" x2="3.9116" y2="-2.6162" width="0.1524" layer="39"/>
<wire x1="3.9116" y1="-2.6162" x2="3.5052" y2="-2.6162" width="0.1524" layer="39"/>
<wire x1="3.5052" y1="-2.6162" x2="3.5052" y2="-3.5052" width="0.1524" layer="39"/>
<wire x1="3.5052" y1="-3.5052" x2="2.6162" y2="-3.5052" width="0.1524" layer="39"/>
<wire x1="2.6162" y1="-3.5052" x2="2.6162" y2="-3.9116" width="0.1524" layer="39"/>
<wire x1="2.6162" y1="-3.9116" x2="-2.6162" y2="-3.9116" width="0.1524" layer="39"/>
<wire x1="-2.6162" y1="-3.9116" x2="-2.6162" y2="-3.5052" width="0.1524" layer="39"/>
<wire x1="-2.6162" y1="-3.5052" x2="-3.5052" y2="-3.5052" width="0.1524" layer="39"/>
<polygon width="0.1524" layer="39">
<vertex x="-3.5052" y="-3.5052"/>
<vertex x="-3.5052" y="-2.6104"/>
<vertex x="-3.9116" y="-2.6104"/>
<vertex x="-3.9116" y="2.6104"/>
<vertex x="-3.5052" y="2.6104"/>
<vertex x="-3.5052" y="3.5052"/>
<vertex x="-2.6104" y="3.5052"/>
<vertex x="-2.6104" y="3.9116"/>
<vertex x="2.6104" y="3.9116"/>
<vertex x="2.6104" y="3.5052"/>
<vertex x="3.5052" y="3.5052"/>
<vertex x="3.5052" y="2.6104"/>
<vertex x="3.9116" y="2.6104"/>
<vertex x="3.9116" y="-2.6104"/>
<vertex x="3.5052" y="-2.6104"/>
<vertex x="3.5052" y="-3.5052"/>
<vertex x="2.6104" y="-3.5052"/>
<vertex x="2.6104" y="-3.9116"/>
<vertex x="-2.6104" y="-3.9116"/>
<vertex x="-2.6104" y="-3.5052"/>
</polygon>
<wire x1="-2.9972" y1="1.7272" x2="-1.7272" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="2.9972" x2="1.778" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="1.4732" y1="2.9972" x2="1.1176" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="0.8382" y1="2.9972" x2="0.4826" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="0.1778" y1="2.9972" x2="-0.1778" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="-0.4826" y1="2.9972" x2="-0.8382" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="2.9972" x2="-1.4732" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="2.9972" x2="-2.1336" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="2.1336" x2="-2.9972" y2="1.778" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="1.4732" x2="-2.9972" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="0.8382" x2="-2.9972" y2="0.4826" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="0.1778" x2="-2.9972" y2="-0.1778" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="-0.4826" x2="-2.9972" y2="-0.8382" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="-1.1176" x2="-2.9972" y2="-1.4732" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="-1.778" x2="-2.9972" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-2.9972" x2="-1.778" y2="-2.9972" width="0.1524" layer="51"/>
<wire x1="-1.4732" y1="-2.9972" x2="-1.1176" y2="-2.9972" width="0.1524" layer="51"/>
<wire x1="-0.8382" y1="-2.9972" x2="-0.4826" y2="-2.9972" width="0.1524" layer="51"/>
<wire x1="-0.1778" y1="-2.9972" x2="0.1778" y2="-2.9972" width="0.1524" layer="51"/>
<wire x1="0.4826" y1="-2.9972" x2="0.8382" y2="-2.9972" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="-2.9972" x2="1.4732" y2="-2.9972" width="0.1524" layer="51"/>
<wire x1="1.778" y1="-2.9972" x2="2.1336" y2="-2.9972" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="-2.1336" x2="2.9972" y2="-1.778" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="-1.4732" x2="2.9972" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="-0.8382" x2="2.9972" y2="-0.4826" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="-0.1778" x2="2.9972" y2="0.1778" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="0.4826" x2="2.9972" y2="0.8382" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="1.1176" x2="2.9972" y2="1.4732" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="1.778" x2="2.9972" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="-2.9972" x2="2.9972" y2="-2.9972" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="-2.9972" x2="2.9972" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="2.9972" x2="-2.9972" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="2.9972" x2="-2.9972" y2="-2.9972" width="0.1524" layer="51"/>
<text x="-2.8702" y="1.651" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.1524" layer="23"/>
<wire x1="0" y1="-0.254" x2="0" y2="0.254" width="0.1524" layer="23"/>
<text x="-3.2766" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="QFN28_6X6MC-L">
<smd name="1" x="-2.7432" y="1.95" dx="0.3048" dy="0.9144" layer="1" rot="R270"/>
<smd name="2" x="-2.7432" y="1.3" dx="0.3048" dy="0.9144" layer="1" rot="R270"/>
<smd name="3" x="-2.7432" y="0.65" dx="0.3048" dy="0.9144" layer="1" rot="R270"/>
<smd name="4" x="-2.7432" y="0" dx="0.3048" dy="0.9144" layer="1" rot="R270"/>
<smd name="5" x="-2.7432" y="-0.65" dx="0.3048" dy="0.9144" layer="1" rot="R270"/>
<smd name="6" x="-2.7432" y="-1.3" dx="0.3048" dy="0.9144" layer="1" rot="R270"/>
<smd name="7" x="-2.7432" y="-1.95" dx="0.3048" dy="0.9144" layer="1" rot="R270"/>
<smd name="8" x="-1.95" y="-2.7432" dx="0.3048" dy="0.9144" layer="1" rot="R180"/>
<smd name="9" x="-1.3" y="-2.7432" dx="0.3048" dy="0.9144" layer="1" rot="R180"/>
<smd name="10" x="-0.65" y="-2.7432" dx="0.3048" dy="0.9144" layer="1" rot="R180"/>
<smd name="11" x="0" y="-2.7432" dx="0.3048" dy="0.9144" layer="1" rot="R180"/>
<smd name="12" x="0.65" y="-2.7432" dx="0.3048" dy="0.9144" layer="1" rot="R180"/>
<smd name="13" x="1.3" y="-2.7432" dx="0.3048" dy="0.9144" layer="1" rot="R180"/>
<smd name="14" x="1.95" y="-2.7432" dx="0.3048" dy="0.9144" layer="1" rot="R180"/>
<smd name="15" x="2.7432" y="-1.95" dx="0.3048" dy="0.9144" layer="1" rot="R270"/>
<smd name="16" x="2.7432" y="-1.3" dx="0.3048" dy="0.9144" layer="1" rot="R270"/>
<smd name="17" x="2.7432" y="-0.65" dx="0.3048" dy="0.9144" layer="1" rot="R270"/>
<smd name="18" x="2.7432" y="0" dx="0.3048" dy="0.9144" layer="1" rot="R270"/>
<smd name="19" x="2.7432" y="0.65" dx="0.3048" dy="0.9144" layer="1" rot="R270"/>
<smd name="20" x="2.7432" y="1.3" dx="0.3048" dy="0.9144" layer="1" rot="R270"/>
<smd name="21" x="2.7432" y="1.95" dx="0.3048" dy="0.9144" layer="1" rot="R270"/>
<smd name="22" x="1.95" y="2.7432" dx="0.3048" dy="0.9144" layer="1" rot="R180"/>
<smd name="23" x="1.3" y="2.7432" dx="0.3048" dy="0.9144" layer="1" rot="R180"/>
<smd name="24" x="0.65" y="2.7432" dx="0.3048" dy="0.9144" layer="1" rot="R180"/>
<smd name="25" x="0" y="2.7432" dx="0.3048" dy="0.9144" layer="1" rot="R180"/>
<smd name="26" x="-0.65" y="2.7432" dx="0.3048" dy="0.9144" layer="1" rot="R180"/>
<smd name="27" x="-1.3" y="2.7432" dx="0.3048" dy="0.9144" layer="1" rot="R180"/>
<smd name="28" x="-1.95" y="2.7432" dx="0.3048" dy="0.9144" layer="1" rot="R180"/>
<smd name="29" x="0" y="0" dx="4.191" dy="4.191" layer="1" cream="no"/>
<wire x1="-3.1242" y1="-3.1242" x2="-2.4384" y2="-3.1242" width="0.1524" layer="21"/>
<wire x1="3.1242" y1="-3.1242" x2="3.1242" y2="-2.4384" width="0.1524" layer="21"/>
<wire x1="3.1242" y1="3.1242" x2="2.4384" y2="3.1242" width="0.1524" layer="21"/>
<wire x1="-3.1242" y1="3.1242" x2="-3.1242" y2="2.4384" width="0.1524" layer="21"/>
<wire x1="-3.1242" y1="-2.4384" x2="-3.1242" y2="-3.1242" width="0.1524" layer="21"/>
<wire x1="2.4384" y1="-3.1242" x2="3.1242" y2="-3.1242" width="0.1524" layer="21"/>
<wire x1="3.1242" y1="2.4384" x2="3.1242" y2="3.1242" width="0.1524" layer="21"/>
<wire x1="-2.4384" y1="3.1242" x2="-3.1242" y2="3.1242" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21">
<vertex x="-0.8405" y="-3.4544"/>
<vertex x="-0.8405" y="-3.7084"/>
<vertex x="-0.4595" y="-3.7084"/>
<vertex x="-0.4595" y="-3.4544"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="3.7084" y="1.4905"/>
<vertex x="3.7084" y="1.1095"/>
<vertex x="3.4544" y="1.1095"/>
<vertex x="3.4544" y="1.4905"/>
</polygon>
<text x="-4.4196" y="1.651" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<polygon width="0.0254" layer="31">
<vertex x="-1.9955" y="1.9955"/>
<vertex x="-1.9955" y="0.7985"/>
<vertex x="-0.7985" y="0.7985"/>
<vertex x="-0.7985" y="1.9955"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-1.9955" y="0.5985"/>
<vertex x="-1.9955" y="-0.5985"/>
<vertex x="-0.7985" y="-0.5985"/>
<vertex x="-0.7985" y="0.5985"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-1.9955" y="-0.7985"/>
<vertex x="-1.9955" y="-1.9955"/>
<vertex x="-0.7985" y="-1.9955"/>
<vertex x="-0.7985" y="-0.7985"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-0.5985" y="1.9955"/>
<vertex x="-0.5985" y="0.7985"/>
<vertex x="0.5985" y="0.7985"/>
<vertex x="0.5985" y="1.9955"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-0.5985" y="0.5985"/>
<vertex x="-0.5985" y="-0.5985"/>
<vertex x="0.5985" y="-0.5985"/>
<vertex x="0.5985" y="0.5985"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-0.5985" y="-0.7985"/>
<vertex x="-0.5985" y="-1.9955"/>
<vertex x="0.5985" y="-1.9955"/>
<vertex x="0.5985" y="-0.7985"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="0.7985" y="1.9955"/>
<vertex x="0.7985" y="0.7985"/>
<vertex x="1.9955" y="0.7985"/>
<vertex x="1.9955" y="1.9955"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="0.7985" y="0.5985"/>
<vertex x="0.7985" y="-0.5985"/>
<vertex x="1.9955" y="-0.5985"/>
<vertex x="1.9955" y="0.5985"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="0.7985" y="-0.7985"/>
<vertex x="0.7985" y="-1.9955"/>
<vertex x="1.9955" y="-1.9955"/>
<vertex x="1.9955" y="-0.7985"/>
</polygon>
<wire x1="-3.0988" y1="-3.0988" x2="-3.0988" y2="-2.2098" width="0.1524" layer="39"/>
<wire x1="-3.0988" y1="-2.2098" x2="-3.302" y2="-2.2098" width="0.1524" layer="39"/>
<wire x1="-3.302" y1="-2.2098" x2="-3.302" y2="2.2098" width="0.1524" layer="39"/>
<wire x1="-3.302" y1="2.2098" x2="-3.0988" y2="2.2098" width="0.1524" layer="39"/>
<wire x1="-3.0988" y1="2.2098" x2="-3.0988" y2="3.0988" width="0.1524" layer="39"/>
<wire x1="-3.0988" y1="3.0988" x2="-2.2098" y2="3.0988" width="0.1524" layer="39"/>
<wire x1="-2.2098" y1="3.0988" x2="-2.2098" y2="3.302" width="0.1524" layer="39"/>
<wire x1="-2.2098" y1="3.302" x2="2.2098" y2="3.302" width="0.1524" layer="39"/>
<wire x1="2.2098" y1="3.302" x2="2.2098" y2="3.0988" width="0.1524" layer="39"/>
<wire x1="2.2098" y1="3.0988" x2="3.0988" y2="3.0988" width="0.1524" layer="39"/>
<wire x1="3.0988" y1="3.0988" x2="3.0988" y2="2.2098" width="0.1524" layer="39"/>
<wire x1="3.0988" y1="2.2098" x2="3.302" y2="2.2098" width="0.1524" layer="39"/>
<wire x1="3.302" y1="2.2098" x2="3.302" y2="-2.2098" width="0.1524" layer="39"/>
<wire x1="3.302" y1="-2.2098" x2="3.0988" y2="-2.2098" width="0.1524" layer="39"/>
<wire x1="3.0988" y1="-2.2098" x2="3.0988" y2="-3.0988" width="0.1524" layer="39"/>
<wire x1="3.0988" y1="-3.0988" x2="2.2098" y2="-3.0988" width="0.1524" layer="39"/>
<wire x1="2.2098" y1="-3.0988" x2="2.2098" y2="-3.302" width="0.1524" layer="39"/>
<wire x1="2.2098" y1="-3.302" x2="-2.2098" y2="-3.302" width="0.1524" layer="39"/>
<wire x1="-2.2098" y1="-3.302" x2="-2.2098" y2="-3.0988" width="0.1524" layer="39"/>
<wire x1="-2.2098" y1="-3.0988" x2="-3.0988" y2="-3.0988" width="0.1524" layer="39"/>
<polygon width="0.1524" layer="39">
<vertex x="-3.0988" y="-3.0988"/>
<vertex x="-3.0988" y="-2.204"/>
<vertex x="-3.302" y="-2.204"/>
<vertex x="-3.302" y="2.204"/>
<vertex x="-3.0988" y="2.204"/>
<vertex x="-3.0988" y="3.0988"/>
<vertex x="-2.204" y="3.0988"/>
<vertex x="-2.204" y="3.302"/>
<vertex x="2.204" y="3.302"/>
<vertex x="2.204" y="3.0988"/>
<vertex x="3.0988" y="3.0988"/>
<vertex x="3.0988" y="2.204"/>
<vertex x="3.302" y="2.204"/>
<vertex x="3.302" y="-2.204"/>
<vertex x="3.0988" y="-2.204"/>
<vertex x="3.0988" y="-3.0988"/>
<vertex x="2.204" y="-3.0988"/>
<vertex x="2.204" y="-3.302"/>
<vertex x="-2.204" y="-3.302"/>
<vertex x="-2.204" y="-3.0988"/>
</polygon>
<wire x1="-2.9972" y1="1.7272" x2="-1.7272" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="2.9972" x2="1.778" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="1.4732" y1="2.9972" x2="1.1176" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="0.8382" y1="2.9972" x2="0.4826" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="0.1778" y1="2.9972" x2="-0.1778" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="-0.4826" y1="2.9972" x2="-0.8382" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="-1.1176" y1="2.9972" x2="-1.4732" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="2.9972" x2="-2.1336" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="2.1336" x2="-2.9972" y2="1.778" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="1.4732" x2="-2.9972" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="0.8382" x2="-2.9972" y2="0.4826" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="0.1778" x2="-2.9972" y2="-0.1778" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="-0.4826" x2="-2.9972" y2="-0.8382" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="-1.1176" x2="-2.9972" y2="-1.4732" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="-1.778" x2="-2.9972" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-2.9972" x2="-1.778" y2="-2.9972" width="0.1524" layer="51"/>
<wire x1="-1.4732" y1="-2.9972" x2="-1.1176" y2="-2.9972" width="0.1524" layer="51"/>
<wire x1="-0.8382" y1="-2.9972" x2="-0.4826" y2="-2.9972" width="0.1524" layer="51"/>
<wire x1="-0.1778" y1="-2.9972" x2="0.1778" y2="-2.9972" width="0.1524" layer="51"/>
<wire x1="0.4826" y1="-2.9972" x2="0.8382" y2="-2.9972" width="0.1524" layer="51"/>
<wire x1="1.1176" y1="-2.9972" x2="1.4732" y2="-2.9972" width="0.1524" layer="51"/>
<wire x1="1.778" y1="-2.9972" x2="2.1336" y2="-2.9972" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="-2.1336" x2="2.9972" y2="-1.778" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="-1.4732" x2="2.9972" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="-0.8382" x2="2.9972" y2="-0.4826" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="-0.1778" x2="2.9972" y2="0.1778" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="0.4826" x2="2.9972" y2="0.8382" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="1.1176" x2="2.9972" y2="1.4732" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="1.778" x2="2.9972" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="-2.9972" x2="2.9972" y2="-2.9972" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="-2.9972" x2="2.9972" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="2.9972" y1="2.9972" x2="-2.9972" y2="2.9972" width="0.1524" layer="51"/>
<wire x1="-2.9972" y1="2.9972" x2="-2.9972" y2="-2.9972" width="0.1524" layer="51"/>
<text x="-2.8702" y="1.651" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.1524" layer="23"/>
<wire x1="0" y1="-0.254" x2="0" y2="0.254" width="0.1524" layer="23"/>
<text x="-3.2766" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="TL3315-BUTTON">
<pad name="1" x="0" y="0" drill="0.6" shape="square"/>
<pad name="3" x="0" y="-4.5" drill="0.6" shape="square"/>
<pad name="2" x="6.5" y="0" drill="0.6" shape="square"/>
<pad name="4" x="6.5" y="-4.5" drill="0.6" shape="square"/>
<wire x1="0.3" y1="0.8" x2="6.3" y2="0.8" width="0.127" layer="51"/>
<wire x1="6.3" y1="0.8" x2="6.3" y2="-5.2" width="0.127" layer="51"/>
<wire x1="6.3" y1="-5.2" x2="0.3" y2="-5.2" width="0.127" layer="51"/>
<wire x1="0.3" y1="-5.2" x2="0.3" y2="0.8" width="0.127" layer="51"/>
<text x="0" y="1.27" size="1.27" layer="21">&gt;NAME</text>
</package>
<package name="MA08-1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-9.525" y1="1.27" x2="-8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-1.27" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="1.27" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-0.635" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-1.27" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="1.27" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-10.16" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-9.398" y="-2.921" size="1.27" layer="21" ratio="10">1</text>
<text x="8.255" y="1.651" size="1.27" layer="21" ratio="10">8</text>
<text x="-1.27" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
<circle x="-14.42" y="-25.95" radius="1.131590625" width="0.127" layer="21"/>
<circle x="-14.42" y="0.05" radius="1.131590625" width="0.127" layer="21"/>
<circle x="14.58" y="0.05" radius="1.131590625" width="0.127" layer="21"/>
<circle x="14.58" y="-25.95" radius="1.131590625" width="0.127" layer="21"/>
<rectangle x1="-14.41" y1="-26" x2="14.66" y2="0.04" layer="51"/>
</package>
<package name="LX0-32.768OSCILLATOR">
<pad name="VDD" x="0" y="0" drill="0.6" shape="square"/>
<pad name="SIG" x="15.08" y="0" drill="0.6" shape="square"/>
<pad name="P$3" x="0" y="-7.94" drill="0.6" shape="square"/>
<pad name="GND" x="15.08" y="-7.94" drill="0.6" shape="square"/>
<rectangle x1="-2.38" y1="-10.25" x2="17.41" y2="2.38" layer="51"/>
<text x="6.35" y="-11.43" size="1.27" layer="21">&gt;NAME</text>
</package>
<package name="THCAP">
<pad name="P$1" x="0" y="0" drill="0.6" shape="square"/>
<pad name="P$2" x="5" y="0" drill="0.6" shape="square"/>
<text x="1.429" y="0.937" size="0.4064" layer="21">&gt;NAME</text>
</package>
<package name="THLED">
<pad name="GND" x="0" y="0" drill="0.6" shape="square"/>
<pad name="PWR" x="3.5" y="0" drill="0.6" shape="square"/>
<text x="0.635" y="0.889" size="0.4064" layer="21">&gt;NAME</text>
</package>
<package name="THRESISTOR">
<pad name="P$1" x="0" y="0" drill="0.6" shape="square"/>
<pad name="P$2" x="9.43" y="0" drill="0.6" shape="square"/>
<text x="2.54" y="0" size="0.8128" layer="21">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="PIC24FJ64GA002-I/ML">
<pin name="PGD1/EMUD1/AN2/C2IN-/RP0/CN4/RB0" x="2.54" y="0" length="middle" direction="pas"/>
<pin name="PGC1/EMUC1/AN3/C2IN+/RP1/CN5/RB1" x="2.54" y="-2.54" length="middle" direction="pas"/>
<pin name="AN4/C1IN-/RP2/SDA2/CN6/RB2" x="2.54" y="-5.08" length="middle" direction="pas"/>
<pin name="AN5/C1IN+/RP3/SCL2/CN7/RB3" x="2.54" y="-7.62" length="middle" direction="pas"/>
<pin name="VSS_2" x="2.54" y="-10.16" length="middle" direction="pas"/>
<pin name="OSCI/CLKI/CN30/RA2" x="2.54" y="-12.7" length="middle" direction="pas"/>
<pin name="OSCO/CLKO/CN29/PMA0/RA3" x="2.54" y="-15.24" length="middle" direction="pas"/>
<pin name="SOSCI/RP4/PMBE/CN1/RB4" x="2.54" y="-17.78" length="middle" direction="pas"/>
<pin name="SOSCO/T1CK/CN0/PMA1/RA4" x="2.54" y="-20.32" length="middle" direction="pas"/>
<pin name="VDD_2" x="2.54" y="-22.86" length="middle" direction="pas"/>
<pin name="PGD3/EMUD3/RP5/ASDA1/CN27/PMD7/RB5" x="2.54" y="-25.4" length="middle" direction="pas"/>
<pin name="PGC3/EMUC3/RP6/ASCL1/CN24/PMD6/RB6" x="2.54" y="-27.94" length="middle" direction="pas"/>
<pin name="RP7/INT0/CN23/PMD5/RB7" x="2.54" y="-30.48" length="middle" direction="pas"/>
<pin name="TCK/RP8/SCL1/CN22/PMD4/RB8" x="2.54" y="-33.02" length="middle" direction="pas"/>
<pin name="TDO/RP9/SDA1/CN21/PMD3/RB9" x="190.5" y="-35.56" length="middle" direction="pas" rot="R180"/>
<pin name="DISVREG" x="190.5" y="-33.02" length="middle" direction="pas" rot="R180"/>
<pin name="VCAP/VDDCORE" x="190.5" y="-30.48" length="middle" direction="pas" rot="R180"/>
<pin name="PGD2/EMUD2/TDI/RP10/CN16/PMD2/RB10" x="190.5" y="-27.94" length="middle" direction="pas" rot="R180"/>
<pin name="PGC2/EMUC2/TMS/RP11/CN15/PMD1/RB11" x="190.5" y="-25.4" length="middle" direction="pas" rot="R180"/>
<pin name="AN12/RP12/CN14/PMD0/RB12" x="190.5" y="-22.86" length="middle" direction="pas" rot="R180"/>
<pin name="AN11/RP13/CN13/PMRD/RB13" x="190.5" y="-20.32" length="middle" direction="pas" rot="R180"/>
<pin name="AN10/CVREF/RTCC/RP14/CN12/PMWR/RB14" x="190.5" y="-17.78" length="middle" direction="pas" rot="R180"/>
<pin name="AN9/RP15/CN11/PMCS1/RB15" x="190.5" y="-15.24" length="middle" direction="pas" rot="R180"/>
<pin name="VSS" x="190.5" y="-12.7" length="middle" direction="pas" rot="R180"/>
<pin name="VDD" x="190.5" y="-10.16" length="middle" direction="pas" rot="R180"/>
<pin name="!MCLR" x="190.5" y="-7.62" length="middle" direction="pas" rot="R180"/>
<pin name="AN0/VREF+/CN2/RA0" x="190.5" y="-5.08" length="middle" direction="pas" rot="R180"/>
<pin name="AN1/VREF-/CN3/RA1" x="190.5" y="-2.54" length="middle" direction="pas" rot="R180"/>
<pin name="HTAB" x="190.5" y="0" length="middle" direction="pas" rot="R180"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-40.64" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-40.64" x2="185.42" y2="-40.64" width="0.1524" layer="94"/>
<wire x1="185.42" y1="-40.64" x2="185.42" y2="5.08" width="0.1524" layer="94"/>
<wire x1="185.42" y1="5.08" x2="7.62" y2="5.08" width="0.1524" layer="94"/>
<text x="91.7956" y="9.1186" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="91.1606" y="6.5786" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
</symbol>
<symbol name="TL3315NF100Q-BUTTON">
<wire x1="-5.08" y1="2.54" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="2.54" y2="7.62" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="7.62" y2="2.54" width="0.254" layer="94"/>
<pin name="1" x="-10.16" y="2.54" length="middle"/>
<pin name="3" x="12.7" y="2.54" length="middle" rot="R180"/>
<pin name="2" x="-10.16" y="-2.54" length="middle"/>
<pin name="4" x="12.7" y="-2.54" length="middle" rot="R180"/>
<wire x1="-5.08" y1="-2.54" x2="-5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="-2.54" x2="7.62" y2="2.54" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="94">&gt;NAME</text>
</symbol>
<symbol name="MA08-1">
<wire x1="3.81" y1="-10.16" x2="-1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="10.16" x2="2.54" y2="10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="7.62" x2="2.54" y2="7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="12.7" x2="-1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-10.16" x2="3.81" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="12.7" x2="3.81" y2="12.7" width="0.4064" layer="94"/>
<text x="-1.27" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="13.462" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="LX0-32.768OSCILLATOR">
<pin name="VDD" x="2.54" y="5.08" length="middle" rot="R270"/>
<pin name="SIG" x="20.32" y="5.08" length="middle" rot="R270"/>
<pin name="NC" x="2.54" y="-20.32" length="middle" rot="R90"/>
<pin name="GND" x="20.32" y="-20.32" length="middle" rot="R90"/>
<rectangle x1="0" y1="-15.24" x2="22.86" y2="0" layer="94"/>
<text x="10.16" y="-17.78" size="1.27" layer="94">&gt;NAME</text>
</symbol>
<symbol name="THCAP">
<pin name="P$1" x="-7.62" y="0" length="middle"/>
<pin name="P$2" x="7.62" y="0" length="middle" rot="R180"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="2.54" y1="5.08" x2="2.54" y2="-5.08" width="0.1524" layer="94"/>
<text x="-5.08" y="-7.62" size="1.778" layer="94">&gt;NAME</text>
</symbol>
<symbol name="THLED">
<pin name="PWR" x="-5.08" y="0" length="middle"/>
<pin name="GND" x="10.16" y="0" length="middle" rot="R180"/>
<polygon width="0.1524" layer="94">
<vertex x="5.08" y="0"/>
<vertex x="0" y="2.54"/>
<vertex x="0" y="-2.54"/>
</polygon>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-2.54" width="0.1524" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="94">&gt;NAME</text>
</symbol>
<symbol name="THRESISTOR">
<pin name="P$1" x="0" y="0" length="middle"/>
<pin name="P$2" x="10.16" y="0" length="middle" rot="R180"/>
<text x="0" y="2.54" size="1.778" layer="94">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="PIC24FJ64GA002T-I/ML" prefix="U">
<gates>
<gate name="A" symbol="PIC24FJ64GA002-I/ML" x="0" y="0"/>
</gates>
<devices>
<device name="" package="QFN28_6X6MC">
<connects>
<connect gate="A" pin="!MCLR" pad="26"/>
<connect gate="A" pin="AN0/VREF+/CN2/RA0" pad="27"/>
<connect gate="A" pin="AN1/VREF-/CN3/RA1" pad="28"/>
<connect gate="A" pin="AN10/CVREF/RTCC/RP14/CN12/PMWR/RB14" pad="22"/>
<connect gate="A" pin="AN11/RP13/CN13/PMRD/RB13" pad="21"/>
<connect gate="A" pin="AN12/RP12/CN14/PMD0/RB12" pad="20"/>
<connect gate="A" pin="AN4/C1IN-/RP2/SDA2/CN6/RB2" pad="3"/>
<connect gate="A" pin="AN5/C1IN+/RP3/SCL2/CN7/RB3" pad="4"/>
<connect gate="A" pin="AN9/RP15/CN11/PMCS1/RB15" pad="23"/>
<connect gate="A" pin="DISVREG" pad="16"/>
<connect gate="A" pin="HTAB" pad="HTAB"/>
<connect gate="A" pin="OSCI/CLKI/CN30/RA2" pad="6"/>
<connect gate="A" pin="OSCO/CLKO/CN29/PMA0/RA3" pad="7"/>
<connect gate="A" pin="PGC1/EMUC1/AN3/C2IN+/RP1/CN5/RB1" pad="2"/>
<connect gate="A" pin="PGC2/EMUC2/TMS/RP11/CN15/PMD1/RB11" pad="19"/>
<connect gate="A" pin="PGC3/EMUC3/RP6/ASCL1/CN24/PMD6/RB6" pad="12"/>
<connect gate="A" pin="PGD1/EMUD1/AN2/C2IN-/RP0/CN4/RB0" pad="1"/>
<connect gate="A" pin="PGD2/EMUD2/TDI/RP10/CN16/PMD2/RB10" pad="18"/>
<connect gate="A" pin="PGD3/EMUD3/RP5/ASDA1/CN27/PMD7/RB5" pad="11"/>
<connect gate="A" pin="RP7/INT0/CN23/PMD5/RB7" pad="13"/>
<connect gate="A" pin="SOSCI/RP4/PMBE/CN1/RB4" pad="8"/>
<connect gate="A" pin="SOSCO/T1CK/CN0/PMA1/RA4" pad="9"/>
<connect gate="A" pin="TCK/RP8/SCL1/CN22/PMD4/RB8" pad="14"/>
<connect gate="A" pin="TDO/RP9/SDA1/CN21/PMD3/RB9" pad="15"/>
<connect gate="A" pin="VCAP/VDDCORE" pad="17"/>
<connect gate="A" pin="VDD" pad="25"/>
<connect gate="A" pin="VDD_2" pad="10"/>
<connect gate="A" pin="VSS" pad="24"/>
<connect gate="A" pin="VSS_2" pad="5"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="PIC24FJ64GA002TIML" constant="no"/>
<attribute name="VENDOR" value="Microchip" constant="no"/>
</technology>
</technologies>
</device>
<device name="QFN28_6X6MC-M" package="QFN28_6X6MC-M">
<connects>
<connect gate="A" pin="!MCLR" pad="26"/>
<connect gate="A" pin="AN0/VREF+/CN2/RA0" pad="27"/>
<connect gate="A" pin="AN1/VREF-/CN3/RA1" pad="28"/>
<connect gate="A" pin="AN10/CVREF/RTCC/RP14/CN12/PMWR/RB14" pad="22"/>
<connect gate="A" pin="AN11/RP13/CN13/PMRD/RB13" pad="21"/>
<connect gate="A" pin="AN12/RP12/CN14/PMD0/RB12" pad="20"/>
<connect gate="A" pin="AN4/C1IN-/RP2/SDA2/CN6/RB2" pad="3"/>
<connect gate="A" pin="AN5/C1IN+/RP3/SCL2/CN7/RB3" pad="4"/>
<connect gate="A" pin="AN9/RP15/CN11/PMCS1/RB15" pad="23"/>
<connect gate="A" pin="DISVREG" pad="16"/>
<connect gate="A" pin="OSCI/CLKI/CN30/RA2" pad="6"/>
<connect gate="A" pin="OSCO/CLKO/CN29/PMA0/RA3" pad="7"/>
<connect gate="A" pin="PGC1/EMUC1/AN3/C2IN+/RP1/CN5/RB1" pad="2"/>
<connect gate="A" pin="PGC2/EMUC2/TMS/RP11/CN15/PMD1/RB11" pad="19"/>
<connect gate="A" pin="PGC3/EMUC3/RP6/ASCL1/CN24/PMD6/RB6" pad="12"/>
<connect gate="A" pin="PGD1/EMUD1/AN2/C2IN-/RP0/CN4/RB0" pad="1"/>
<connect gate="A" pin="PGD2/EMUD2/TDI/RP10/CN16/PMD2/RB10" pad="18"/>
<connect gate="A" pin="PGD3/EMUD3/RP5/ASDA1/CN27/PMD7/RB5" pad="11"/>
<connect gate="A" pin="RP7/INT0/CN23/PMD5/RB7" pad="13"/>
<connect gate="A" pin="SOSCI/RP4/PMBE/CN1/RB4" pad="8"/>
<connect gate="A" pin="SOSCO/T1CK/CN0/PMA1/RA4" pad="9"/>
<connect gate="A" pin="TCK/RP8/SCL1/CN22/PMD4/RB8" pad="14"/>
<connect gate="A" pin="TDO/RP9/SDA1/CN21/PMD3/RB9" pad="15"/>
<connect gate="A" pin="VCAP/VDDCORE" pad="17"/>
<connect gate="A" pin="VDD" pad="25"/>
<connect gate="A" pin="VDD_2" pad="10"/>
<connect gate="A" pin="VSS" pad="24"/>
<connect gate="A" pin="VSS_2" pad="5"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="PIC24FJ64GA002TIML" constant="no"/>
<attribute name="VENDOR" value="Microchip" constant="no"/>
</technology>
</technologies>
</device>
<device name="QFN28_6X6MC-L" package="QFN28_6X6MC-L">
<connects>
<connect gate="A" pin="!MCLR" pad="26"/>
<connect gate="A" pin="AN0/VREF+/CN2/RA0" pad="27"/>
<connect gate="A" pin="AN1/VREF-/CN3/RA1" pad="28"/>
<connect gate="A" pin="AN10/CVREF/RTCC/RP14/CN12/PMWR/RB14" pad="22"/>
<connect gate="A" pin="AN11/RP13/CN13/PMRD/RB13" pad="21"/>
<connect gate="A" pin="AN12/RP12/CN14/PMD0/RB12" pad="20"/>
<connect gate="A" pin="AN4/C1IN-/RP2/SDA2/CN6/RB2" pad="3"/>
<connect gate="A" pin="AN5/C1IN+/RP3/SCL2/CN7/RB3" pad="4"/>
<connect gate="A" pin="AN9/RP15/CN11/PMCS1/RB15" pad="23"/>
<connect gate="A" pin="DISVREG" pad="16"/>
<connect gate="A" pin="OSCI/CLKI/CN30/RA2" pad="6"/>
<connect gate="A" pin="OSCO/CLKO/CN29/PMA0/RA3" pad="7"/>
<connect gate="A" pin="PGC1/EMUC1/AN3/C2IN+/RP1/CN5/RB1" pad="2"/>
<connect gate="A" pin="PGC2/EMUC2/TMS/RP11/CN15/PMD1/RB11" pad="19"/>
<connect gate="A" pin="PGC3/EMUC3/RP6/ASCL1/CN24/PMD6/RB6" pad="12"/>
<connect gate="A" pin="PGD1/EMUD1/AN2/C2IN-/RP0/CN4/RB0" pad="1"/>
<connect gate="A" pin="PGD2/EMUD2/TDI/RP10/CN16/PMD2/RB10" pad="18"/>
<connect gate="A" pin="PGD3/EMUD3/RP5/ASDA1/CN27/PMD7/RB5" pad="11"/>
<connect gate="A" pin="RP7/INT0/CN23/PMD5/RB7" pad="13"/>
<connect gate="A" pin="SOSCI/RP4/PMBE/CN1/RB4" pad="8"/>
<connect gate="A" pin="SOSCO/T1CK/CN0/PMA1/RA4" pad="9"/>
<connect gate="A" pin="TCK/RP8/SCL1/CN22/PMD4/RB8" pad="14"/>
<connect gate="A" pin="TDO/RP9/SDA1/CN21/PMD3/RB9" pad="15"/>
<connect gate="A" pin="VCAP/VDDCORE" pad="17"/>
<connect gate="A" pin="VDD" pad="25"/>
<connect gate="A" pin="VDD_2" pad="10"/>
<connect gate="A" pin="VSS" pad="24"/>
<connect gate="A" pin="VSS_2" pad="5"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="PIC24FJ64GA002TIML" constant="no"/>
<attribute name="VENDOR" value="Microchip" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PTS645-BUTTON">
<gates>
<gate name="A" symbol="TL3315NF100Q-BUTTON" x="0" y="0"/>
</gates>
<devices>
<device name="PTS645" package="TL3315-BUTTON">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MA08-1" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA08-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA08-1">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
<connect gate="1" pin="5" pad="5"/>
<connect gate="1" pin="6" pad="6"/>
<connect gate="1" pin="7" pad="7"/>
<connect gate="1" pin="8" pad="8"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LX0-32.768OSCILLATOR">
<gates>
<gate name="G$1" symbol="LX0-32.768OSCILLATOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LX0-32.768OSCILLATOR">
<connects>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="NC" pad="P$3"/>
<connect gate="G$1" pin="SIG" pad="SIG"/>
<connect gate="G$1" pin="VDD" pad="VDD"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="THCAP">
<gates>
<gate name="G$1" symbol="THCAP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="THCAP">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="THLED">
<gates>
<gate name="G$1" symbol="THLED" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="THLED">
<connects>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="PWR" pad="PWR"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="THRESISTOR">
<gates>
<gate name="G$1" symbol="THRESISTOR" x="-5.08" y="0"/>
</gates>
<devices>
<device name="" package="THRESISTOR">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-lstb" urn="urn:adsk.eagle:library:162">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA06-1" urn="urn:adsk.eagle:footprint:8287/1" library_version="1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="7.62" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-7.62" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.985" y="-2.921" size="1.27" layer="21" ratio="10">1</text>
<text x="5.715" y="1.651" size="1.27" layer="21" ratio="10">6</text>
<text x="-2.54" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
</package>
<package name="MA05-2" urn="urn:adsk.eagle:footprint:8267/1" library_version="1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-5.715" y1="2.54" x2="-4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.905" x2="-3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.54" x2="-6.35" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.905" x2="4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="2.54" x2="5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-2.54" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="1.905" x2="-6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-1.905" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-2.54" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.35" y1="1.905" x2="6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.54" x2="6.35" y2="1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="5.715" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="-2.54" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="0" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="7" x="2.54" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="9" x="5.08" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="2" x="-5.08" y="1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="-2.54" y="1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="0" y="1.27" drill="1.016" shape="octagon"/>
<pad name="8" x="2.54" y="1.27" drill="1.016" shape="octagon"/>
<pad name="10" x="5.08" y="1.27" drill="1.016" shape="octagon"/>
<text x="-5.588" y="-4.191" size="1.27" layer="21" ratio="10">1</text>
<text x="-6.35" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="-4.191" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="4.572" y="2.921" size="1.27" layer="21" ratio="10">10</text>
<rectangle x1="-2.794" y1="-1.524" x2="-2.286" y2="-1.016" layer="51"/>
<rectangle x1="-5.334" y1="-1.524" x2="-4.826" y2="-1.016" layer="51"/>
<rectangle x1="-0.254" y1="-1.524" x2="0.254" y2="-1.016" layer="51"/>
<rectangle x1="4.826" y1="-1.524" x2="5.334" y2="-1.016" layer="51"/>
<rectangle x1="2.286" y1="-1.524" x2="2.794" y2="-1.016" layer="51"/>
<rectangle x1="-5.334" y1="1.016" x2="-4.826" y2="1.524" layer="51"/>
<rectangle x1="-2.794" y1="1.016" x2="-2.286" y2="1.524" layer="51"/>
<rectangle x1="-0.254" y1="1.016" x2="0.254" y2="1.524" layer="51"/>
<rectangle x1="2.286" y1="1.016" x2="2.794" y2="1.524" layer="51"/>
<rectangle x1="4.826" y1="1.016" x2="5.334" y2="1.524" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="MA06-1" urn="urn:adsk.eagle:package:8340/1" type="box" library_version="1">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="MA06-1"/>
</packageinstances>
</package3d>
<package3d name="MA05-2" urn="urn:adsk.eagle:package:8329/1" type="box" library_version="1">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="MA05-2"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MA06-1" urn="urn:adsk.eagle:symbol:8286/1" library_version="1">
<wire x1="3.81" y1="-10.16" x2="-1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="7.62" x2="-1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-10.16" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="7.62" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<text x="-1.27" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="8.382" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="MA05-2" urn="urn:adsk.eagle:symbol:8266/1" library_version="1">
<wire x1="3.81" y1="-7.62" x2="-3.81" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-1.27" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-1.27" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-3.81" y1="7.62" x2="-3.81" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-7.62" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="7.62" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-1.27" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.6096" layer="94"/>
<text x="-3.81" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="8.382" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="4" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="6" x="-7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="7" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="9" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="10" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA06-1" urn="urn:adsk.eagle:component:8378/1" prefix="SV" uservalue="yes" library_version="1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA06-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA06-1">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
<connect gate="1" pin="5" pad="5"/>
<connect gate="1" pin="6" pad="6"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8340/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MA05-2" urn="urn:adsk.eagle:component:8370/1" prefix="SV" uservalue="yes" library_version="1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MA05-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA05-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:8329/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply2" urn="urn:adsk.eagle:library:372">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="VDD" urn="urn:adsk.eagle:symbol:26998/1" library_version="2">
<circle x="0" y="1.27" radius="1.27" width="0.254" layer="94"/>
<text x="-1.905" y="3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VDD" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VDD" urn="urn:adsk.eagle:component:27044/1" prefix="SUPPLY" library_version="2">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VDD" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="pic24fj64ga002" deviceset="PIC24FJ64GA002T-I/ML" device=""/>
<part name="MODE_BTN" library="pic24fj64ga002" deviceset="PTS645-BUTTON" device="PTS645"/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="EDIT_BTN" library="pic24fj64ga002" deviceset="PTS645-BUTTON" device="PTS645"/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="DEC+_BTN" library="pic24fj64ga002" deviceset="PTS645-BUTTON" device="PTS645"/>
<part name="GND3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="DECSEL_BTN" library="pic24fj64ga002" deviceset="PTS645-BUTTON" device="PTS645"/>
<part name="GND4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="DEBUG" library="con-lstb" library_urn="urn:adsk.eagle:library:162" deviceset="MA06-1" device="" package3d_urn="urn:adsk.eagle:package:8340/1"/>
<part name="LCD" library="pic24fj64ga002" deviceset="MA08-1" device=""/>
<part name="GND5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="SUPPLY1" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="VDD" device=""/>
<part name="OSCILLATOR" library="pic24fj64ga002" deviceset="LX0-32.768OSCILLATOR" device=""/>
<part name="GND6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GPIO" library="con-lstb" library_urn="urn:adsk.eagle:library:162" deviceset="MA05-2" device="" package3d_urn="urn:adsk.eagle:package:8329/1"/>
<part name="THROBLED" library="pic24fj64ga002" deviceset="THLED" device=""/>
<part name="10UF" library="pic24fj64ga002" deviceset="THCAP" device=""/>
<part name="10UFPWR" library="pic24fj64ga002" deviceset="THCAP" device=""/>
<part name="10KRES" library="pic24fj64ga002" deviceset="THRESISTOR" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="A" x="-12.7" y="55.88" smashed="yes">
<attribute name="NAME" x="79.0956" y="64.9986" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="78.4606" y="62.4586" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="MODE_BTN" gate="A" x="200.66" y="48.26" smashed="yes">
<attribute name="NAME" x="198.12" y="43.18" size="1.778" layer="94"/>
</instance>
<instance part="GND1" gate="1" x="223.52" y="50.8" smashed="yes" rot="R90">
<attribute name="VALUE" x="226.06" y="48.26" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="EDIT_BTN" gate="A" x="200.66" y="38.1" smashed="yes">
<attribute name="NAME" x="198.12" y="33.02" size="1.778" layer="94"/>
</instance>
<instance part="GND2" gate="1" x="223.52" y="40.64" smashed="yes" rot="R90">
<attribute name="VALUE" x="226.06" y="38.1" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="DEC+_BTN" gate="A" x="200.66" y="27.94" smashed="yes">
<attribute name="NAME" x="198.12" y="22.86" size="1.778" layer="94"/>
</instance>
<instance part="GND3" gate="1" x="223.52" y="30.48" smashed="yes" rot="R90">
<attribute name="VALUE" x="226.06" y="27.94" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="DECSEL_BTN" gate="A" x="200.66" y="17.78" smashed="yes">
<attribute name="NAME" x="198.12" y="12.7" size="1.778" layer="94"/>
</instance>
<instance part="GND4" gate="1" x="223.52" y="20.32" smashed="yes" rot="R90">
<attribute name="VALUE" x="226.06" y="17.78" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="DEBUG" gate="1" x="66.04" y="-2.54" smashed="yes" rot="R270">
<attribute name="VALUE" x="53.34" y="-1.27" size="1.778" layer="96" rot="R270"/>
<attribute name="NAME" x="74.422" y="-1.27" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="LCD" gate="1" x="22.86" y="-2.54" smashed="yes" rot="R270">
<attribute name="VALUE" x="10.16" y="-1.27" size="1.778" layer="96" rot="R270"/>
<attribute name="NAME" x="36.322" y="-1.27" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="GND5" gate="1" x="22.86" y="-27.94" smashed="yes">
<attribute name="VALUE" x="20.32" y="-30.48" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY1" gate="G$1" x="-40.64" y="53.34" smashed="yes">
<attribute name="VALUE" x="-42.545" y="56.515" size="1.778" layer="96"/>
</instance>
<instance part="OSCILLATOR" gate="G$1" x="144.78" y="-27.94" smashed="yes">
<attribute name="NAME" x="154.94" y="-45.72" size="1.27" layer="94"/>
</instance>
<instance part="GND6" gate="1" x="147.32" y="-58.42" smashed="yes">
<attribute name="VALUE" x="144.78" y="-60.96" size="1.778" layer="96"/>
</instance>
<instance part="GPIO" gate="G$1" x="66.04" y="-35.56" smashed="yes">
<attribute name="VALUE" x="62.23" y="-45.72" size="1.778" layer="96"/>
<attribute name="NAME" x="62.23" y="-27.178" size="1.778" layer="95"/>
</instance>
<instance part="THROBLED" gate="G$1" x="-20.32" y="-33.02" smashed="yes">
<attribute name="NAME" x="-22.86" y="-38.1" size="1.778" layer="94"/>
</instance>
<instance part="10UF" gate="G$1" x="10.16" y="-53.34" smashed="yes">
<attribute name="NAME" x="5.08" y="-60.96" size="1.778" layer="94"/>
</instance>
<instance part="10UFPWR" gate="G$1" x="-22.86" y="2.54" smashed="yes">
<attribute name="NAME" x="-27.94" y="-5.08" size="1.778" layer="94"/>
</instance>
<instance part="10KRES" gate="G$1" x="88.9" y="86.36" smashed="yes">
<attribute name="NAME" x="88.9" y="88.9" size="1.778" layer="94"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="U1" gate="A" pin="AN9/RP15/CN11/PMCS1/RB15"/>
<pinref part="MODE_BTN" gate="A" pin="1"/>
<wire x1="177.8" y1="40.64" x2="190.5" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="MODE_BTN" gate="A" pin="3"/>
<wire x1="213.36" y1="50.8" x2="220.98" y2="50.8" width="0.1524" layer="91"/>
<pinref part="GND1" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="EDIT_BTN" gate="A" pin="3"/>
<wire x1="213.36" y1="40.64" x2="220.98" y2="40.64" width="0.1524" layer="91"/>
<pinref part="GND2" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="DEC+_BTN" gate="A" pin="3"/>
<wire x1="213.36" y1="30.48" x2="220.98" y2="30.48" width="0.1524" layer="91"/>
<pinref part="GND3" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="DECSEL_BTN" gate="A" pin="3"/>
<wire x1="213.36" y1="20.32" x2="220.98" y2="20.32" width="0.1524" layer="91"/>
<pinref part="GND4" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="LCD" gate="1" pin="5"/>
<pinref part="GND5" gate="1" pin="GND"/>
<wire x1="25.4" y1="-10.16" x2="22.86" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="LCD" gate="1" pin="8"/>
<wire x1="33.02" y1="-10.16" x2="22.86" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="GPIO" gate="G$1" pin="10"/>
<wire x1="58.42" y1="-30.48" x2="22.86" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="2.54" x2="22.86" y2="-25.4" width="0.1524" layer="91"/>
<junction x="22.86" y="-25.4"/>
<pinref part="10UFPWR" gate="G$1" pin="P$2"/>
</segment>
<segment>
<pinref part="OSCILLATOR" gate="G$1" pin="GND"/>
<pinref part="GND6" gate="1" pin="GND"/>
<wire x1="165.1" y1="-48.26" x2="147.32" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="147.32" y1="-50.8" x2="147.32" y2="-55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U1" gate="A" pin="AN10/CVREF/RTCC/RP14/CN12/PMWR/RB14"/>
<pinref part="EDIT_BTN" gate="A" pin="1"/>
<wire x1="177.8" y1="38.1" x2="187.96" y2="38.1" width="0.1524" layer="91"/>
<wire x1="187.96" y1="38.1" x2="190.5" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U1" gate="A" pin="AN11/RP13/CN13/PMRD/RB13"/>
<pinref part="DEC+_BTN" gate="A" pin="1"/>
<wire x1="177.8" y1="35.56" x2="190.5" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U1" gate="A" pin="AN12/RP12/CN14/PMD0/RB12"/>
<pinref part="DECSEL_BTN" gate="A" pin="1"/>
<wire x1="177.8" y1="33.02" x2="190.5" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="DEBUG" gate="1" pin="2"/>
<pinref part="U1" gate="A" pin="PGC1/EMUC1/AN3/C2IN+/RP1/CN5/RB1"/>
<wire x1="60.96" y1="-10.16" x2="-10.16" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="DEBUG" gate="1" pin="3"/>
<pinref part="U1" gate="A" pin="PGD1/EMUD1/AN2/C2IN-/RP0/CN4/RB0"/>
<wire x1="63.5" y1="-10.16" x2="-10.16" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="DEBUG" gate="1" pin="4"/>
<pinref part="U1" gate="A" pin="VSS"/>
<wire x1="66.04" y1="-10.16" x2="177.8" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="LCD" gate="1" pin="2"/>
<pinref part="U1" gate="A" pin="TCK/RP8/SCL1/CN22/PMD4/RB8"/>
<wire x1="17.78" y1="-10.16" x2="10.16" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="10.16" y1="-27.94" x2="-10.16" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="LCD" gate="1" pin="3"/>
<pinref part="U1" gate="A" pin="PGC3/EMUC3/RP6/ASCL1/CN24/PMD6/RB6"/>
<wire x1="20.32" y1="-10.16" x2="20.32" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-2.54" x2="-10.16" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="LCD" gate="1" pin="4"/>
<pinref part="U1" gate="A" pin="PGD3/EMUD3/RP5/ASDA1/CN27/PMD7/RB5"/>
<wire x1="22.86" y1="-10.16" x2="22.86" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="22.86" y1="-2.54" x2="-10.16" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VDD" class="0">
<segment>
<pinref part="LCD" gate="1" pin="7"/>
<pinref part="SUPPLY1" gate="G$1" pin="VDD"/>
<wire x1="30.48" y1="-10.16" x2="-40.64" y2="50.8" width="0.1524" layer="91"/>
<pinref part="DEBUG" gate="1" pin="5"/>
<pinref part="U1" gate="A" pin="VDD"/>
<wire x1="68.58" y1="-10.16" x2="177.8" y2="45.72" width="0.1524" layer="91"/>
<wire x1="-40.64" y1="50.8" x2="-35.56" y2="45.72" width="0.1524" layer="91"/>
<wire x1="-35.56" y1="45.72" x2="-10.16" y2="45.72" width="0.1524" layer="91"/>
<pinref part="OSCILLATOR" gate="G$1" pin="VDD"/>
<wire x1="-10.16" y1="45.72" x2="177.8" y2="45.72" width="0.1524" layer="91"/>
<wire x1="147.32" y1="-22.86" x2="-40.64" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-40.64" y1="-17.78" x2="-40.64" y2="50.8" width="0.1524" layer="91"/>
<wire x1="88.9" y1="86.36" x2="177.8" y2="45.72" width="0.1524" layer="91"/>
<pinref part="GPIO" gate="G$1" pin="9"/>
<wire x1="73.66" y1="-30.48" x2="-40.64" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="2.54" x2="-40.64" y2="50.8" width="0.1524" layer="91"/>
<junction x="-40.64" y="50.8"/>
<pinref part="U1" gate="A" pin="VSS_2"/>
<junction x="-10.16" y="45.72"/>
<pinref part="THROBLED" gate="G$1" pin="PWR"/>
<wire x1="-25.4" y1="-33.02" x2="-40.64" y2="50.8" width="0.1524" layer="91"/>
<pinref part="10UFPWR" gate="G$1" pin="P$1"/>
<pinref part="10KRES" gate="G$1" pin="P$1"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="OSCILLATOR" gate="G$1" pin="SIG"/>
<pinref part="U1" gate="A" pin="SOSCI/RP4/PMBE/CN1/RB4"/>
<wire x1="165.1" y1="-22.86" x2="-10.16" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="LCD" gate="1" pin="1"/>
<pinref part="U1" gate="A" pin="TDO/RP9/SDA1/CN21/PMD3/RB9"/>
<wire x1="15.24" y1="-10.16" x2="177.8" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="DEBUG" gate="1" pin="6"/>
<pinref part="U1" gate="A" pin="!MCLR"/>
<wire x1="71.12" y1="-10.16" x2="177.8" y2="48.26" width="0.1524" layer="91"/>
<wire x1="99.06" y1="86.36" x2="177.8" y2="48.26" width="0.1524" layer="91"/>
<pinref part="10KRES" gate="G$1" pin="P$2"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="GPIO" gate="G$1" pin="8"/>
<pinref part="U1" gate="A" pin="AN4/C1IN-/RP2/SDA2/CN6/RB2"/>
<wire x1="58.42" y1="-33.02" x2="-10.16" y2="50.8" width="0.1524" layer="91"/>
<pinref part="THROBLED" gate="G$1" pin="GND"/>
<wire x1="-10.16" y1="-33.02" x2="58.42" y2="-33.02" width="0.1524" layer="91"/>
<junction x="58.42" y="-33.02"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="GPIO" gate="G$1" pin="6"/>
<pinref part="U1" gate="A" pin="AN5/C1IN+/RP3/SCL2/CN7/RB3"/>
<wire x1="58.42" y1="-35.56" x2="-10.16" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="GPIO" gate="G$1" pin="4"/>
<pinref part="U1" gate="A" pin="OSCI/CLKI/CN30/RA2"/>
<wire x1="58.42" y1="-38.1" x2="-10.16" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="GPIO" gate="G$1" pin="2"/>
<pinref part="U1" gate="A" pin="OSCO/CLKO/CN29/PMA0/RA3"/>
<wire x1="58.42" y1="-40.64" x2="-10.16" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="GPIO" gate="G$1" pin="7"/>
<pinref part="U1" gate="A" pin="AN1/VREF-/CN3/RA1"/>
<wire x1="73.66" y1="-33.02" x2="177.8" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="GPIO" gate="G$1" pin="5"/>
<pinref part="U1" gate="A" pin="AN0/VREF+/CN2/RA0"/>
<wire x1="73.66" y1="-35.56" x2="177.8" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="GPIO" gate="G$1" pin="3"/>
<pinref part="U1" gate="A" pin="PGC2/EMUC2/TMS/RP11/CN15/PMD1/RB11"/>
<wire x1="73.66" y1="-38.1" x2="177.8" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="GPIO" gate="G$1" pin="1"/>
<pinref part="U1" gate="A" pin="PGD2/EMUD2/TDI/RP10/CN16/PMD2/RB10"/>
<wire x1="73.66" y1="-40.64" x2="177.8" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="U1" gate="A" pin="VCAP/VDDCORE"/>
<wire x1="2.54" y1="-53.34" x2="5.08" y2="20.32" width="0.1524" layer="91"/>
<wire x1="5.08" y1="20.32" x2="177.8" y2="25.4" width="0.1524" layer="91"/>
<pinref part="10UF" gate="G$1" pin="P$1"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="U1" gate="A" pin="DISVREG"/>
<wire x1="17.78" y1="-53.34" x2="177.8" y2="22.86" width="0.1524" layer="91"/>
<pinref part="10UF" gate="G$1" pin="P$2"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
