ring = 22.5;                        //Ringinnendurchmesser
breite = 16;                        //Ringbreite (Minimum 15mm)
staerke = 1.5;                      //Wandstärke des Rings - empfehlenswert sind 2 mm
fase = 0.3;                         //x/y Wert für Fase an der Ringkante
bogeng = 27  * 360 / (PI * ring);   //Winkel des gesamten NFC-Chips mit Antenne
bogen1 = 3.5 * 360 / (PI * ring);   //Winkel für Abstand linke Aussenkante bis Chip
bogen2 =  7  * 360 / (PI * ring);   //Winkel für Breite des NFC Chips
hoehe1 = 3.5;                       //Abstand NFC Chip von Unterkante
hoehe2 = 7.8;                       //Höhe NFC Chip
hoehe3 = 13;                        //Höhe der Antenne
tiefe1 = 0.5;                       //Aussparung für Antenne 
tiefe2 = 1.1;                       //Aussparung für NFC Chip
abstand = (breite-hoehe3)/2;

difference() {
rotate_extrude($fn=200) translate([ring/2,0,0]) polygon(points=[[fase,0],[0,fase],[0,breite-fase],[fase,breite],[staerke-fase,breite],[staerke,breite-fase],[staerke,fase],[staerke-fase,0]]);
rotate_extrude(angle = -bogeng, $fn=200) translate([ring/2-0.1,abstand,0]) square([tiefe1+0.1,hoehe3], center = false); 
rotate([0,0,-bogen1]) rotate_extrude(angle = -bogen2, $fn=200) translate([ring/2-0.1,hoehe1+abstand,0]) square([tiefe2+0.1,hoehe2], center = false); }
