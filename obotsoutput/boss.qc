string globaldef004806 /* = "progs/zombie.mdl" */;

void (vector globaldef004925) boss_missile;

// function boss_face
// function number 1563 begins at statement 23452
/*
 * OP_LOAD_ENT	28	181	14590
 * OP_LOAD_F	14590	152	14591
 * OP_LE	14591	213	14592
 * OP_CALL0	457	0	0
 * OP_LT	1	5514	14593
 * OP_OR	14592	14593	14594
 * OP_IFNOT	14594	18	0
 * OP_ADDRESS	28	181	14595
 * OP_LOAD_ENT	28	181	14596
 * OP_STORE_V	14596	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	1236	10	0
 * OP_CALL3	468	0	0
 * OP_STOREP_ENT	1	14595	0
 * OP_LOAD_ENT	28	181	14597
 * OP_NOT_ENT	14597	0	14598
 * OP_IFNOT	14598	8	0
 * OP_ADDRESS	28	181	14599
 * OP_LOAD_ENT	28	181	14600
 * OP_STORE_V	14600	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	1236	10	0
 * OP_CALL3	468	0	0
 * OP_STOREP_ENT	1	14599	0
 * OP_CALL0	3190	0	0
 * OP_DONE	0	0	0
 */

void () boss_face = {

   if ( ((self.enemy.health <= FALSE) || (random () < globaldef002083)) ) {

      self.enemy = find (self.enemy,classname,globaldef001170);
      if ( !self.enemy ) {

         self.enemy = find (self.enemy,classname,globaldef001170);

      }

   }
   ai_face ();

};

// function boss_rise1
// function number 1564 begins at statement 23478
/*
 * OP_STATE	213	14602	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	14603	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () boss_rise1 = [ 0.000, boss_rise2 ] {

   sound (self,CHAN_WEAPON,globaldef004811,TRUE,ATTN_NORM);

};
string globaldef004811 /* = "boss1/out1.wav" */;

// function boss_rise2
// function number 1565 begins at statement 23486
/*
 * OP_STATE	214	14604	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	14605	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () boss_rise2 = [ 1.000, boss_rise3 ] {

   sound (self,CHAN_VOICE,globaldef004813,TRUE,ATTN_NORM);

};
string globaldef004813 /* = "boss1/sight1.wav" */;

// function boss_rise3
// function number 1566 begins at statement 23494
/*
 * OP_STATE	216	14606	0
 * OP_DONE	0	0	0
 */

void () boss_rise3 = [ 2.000, boss_rise4 ] {


};

// function boss_rise4
// function number 1567 begins at statement 23496
/*
 * OP_STATE	228	14607	0
 * OP_DONE	0	0	0
 */

void () boss_rise4 = [ 3.000, boss_rise5 ] {


};

// function boss_rise5
// function number 1568 begins at statement 23498
/*
 * OP_STATE	229	14608	0
 * OP_DONE	0	0	0
 */

void () boss_rise5 = [ 4.000, boss_rise6 ] {


};

// function boss_rise6
// function number 1569 begins at statement 23500
/*
 * OP_STATE	230	14609	0
 * OP_DONE	0	0	0
 */

void () boss_rise6 = [ 5.000, boss_rise7 ] {


};

// function boss_rise7
// function number 1570 begins at statement 23502
/*
 * OP_STATE	231	14610	0
 * OP_DONE	0	0	0
 */

void () boss_rise7 = [ 6.000, boss_rise8 ] {


};

// function boss_rise8
// function number 1571 begins at statement 23504
/*
 * OP_STATE	232	14611	0
 * OP_DONE	0	0	0
 */

void () boss_rise8 = [ 7.000, boss_rise9 ] {


};

// function boss_rise9
// function number 1572 begins at statement 23506
/*
 * OP_STATE	217	14612	0
 * OP_DONE	0	0	0
 */

void () boss_rise9 = [ 8.000, boss_rise10 ] {


};

// function boss_rise10
// function number 1573 begins at statement 23508
/*
 * OP_STATE	234	14613	0
 * OP_DONE	0	0	0
 */

void () boss_rise10 = [ 9.000, boss_rise11 ] {


};

// function boss_rise11
// function number 1574 begins at statement 23510
/*
 * OP_STATE	235	14614	0
 * OP_DONE	0	0	0
 */

void () boss_rise11 = [ 10.000, boss_rise12 ] {


};

// function boss_rise12
// function number 1575 begins at statement 23512
/*
 * OP_STATE	236	14615	0
 * OP_DONE	0	0	0
 */

void () boss_rise12 = [ 11.000, boss_rise13 ] {


};

// function boss_rise13
// function number 1576 begins at statement 23514
/*
 * OP_STATE	791	14616	0
 * OP_DONE	0	0	0
 */

void () boss_rise13 = [ 12.000, boss_rise14 ] {


};

// function boss_rise14
// function number 1577 begins at statement 23516
/*
 * OP_STATE	792	14617	0
 * OP_DONE	0	0	0
 */

void () boss_rise14 = [ 13.000, boss_rise15 ] {


};

// function boss_rise15
// function number 1578 begins at statement 23518
/*
 * OP_STATE	5693	14618	0
 * OP_DONE	0	0	0
 */

void () boss_rise15 = [ 14.000, boss_rise16 ] {


};

// function boss_rise16
// function number 1579 begins at statement 23520
/*
 * OP_STATE	765	14619	0
 * OP_DONE	0	0	0
 */

void () boss_rise16 = [ 15.000, boss_rise17 ] {


};

// function boss_rise17
// function number 1580 begins at statement 23522
/*
 * OP_STATE	218	14620	0
 * OP_DONE	0	0	0
 */

void () boss_rise17 = [ 16.000, boss_missile1 ] {


};

void () boss_missile1;

// function boss_idle1
// function number 1581 begins at statement 23524
/*
 * OP_STATE	6892	14622	0
 * OP_DONE	0	0	0
 */

void () boss_idle1 = [ 17.000, boss_idle2 ] {


};

// function boss_idle2
// function number 1582 begins at statement 23526
/*
 * OP_STATE	6133	14623	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle2 = [ 18.000, boss_idle3 ] {

   boss_face ();

};

// function boss_idle3
// function number 1583 begins at statement 23529
/*
 * OP_STATE	6895	14624	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle3 = [ 19.000, boss_idle4 ] {

   boss_face ();

};

// function boss_idle4
// function number 1584 begins at statement 23532
/*
 * OP_STATE	2323	14625	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle4 = [ 20.000, boss_idle5 ] {

   boss_face ();

};

// function boss_idle5
// function number 1585 begins at statement 23535
/*
 * OP_STATE	12465	14626	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle5 = [ 21.000, boss_idle6 ] {

   boss_face ();

};

// function boss_idle6
// function number 1586 begins at statement 23538
/*
 * OP_STATE	12467	14627	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle6 = [ 22.000, boss_idle7 ] {

   boss_face ();

};

// function boss_idle7
// function number 1587 begins at statement 23541
/*
 * OP_STATE	304	14628	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle7 = [ 23.000, boss_idle8 ] {

   boss_face ();

};

// function boss_idle8
// function number 1588 begins at statement 23544
/*
 * OP_STATE	736	14629	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle8 = [ 24.000, boss_idle9 ] {

   boss_face ();

};

// function boss_idle9
// function number 1589 begins at statement 23547
/*
 * OP_STATE	305	14630	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle9 = [ 25.000, boss_idle10 ] {

   boss_face ();

};

// function boss_idle10
// function number 1590 begins at statement 23550
/*
 * OP_STATE	306	14631	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle10 = [ 26.000, boss_idle11 ] {

   boss_face ();

};

// function boss_idle11
// function number 1591 begins at statement 23553
/*
 * OP_STATE	307	14632	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle11 = [ 27.000, boss_idle12 ] {

   boss_face ();

};

// function boss_idle12
// function number 1592 begins at statement 23556
/*
 * OP_STATE	308	14633	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle12 = [ 28.000, boss_idle13 ] {

   boss_face ();

};

// function boss_idle13
// function number 1593 begins at statement 23559
/*
 * OP_STATE	9664	14634	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle13 = [ 29.000, boss_idle14 ] {

   boss_face ();

};

// function boss_idle14
// function number 1594 begins at statement 23562
/*
 * OP_STATE	309	14635	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle14 = [ 30.000, boss_idle15 ] {

   boss_face ();

};

// function boss_idle15
// function number 1595 begins at statement 23565
/*
 * OP_STATE	310	14636	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle15 = [ 31.000, boss_idle16 ] {

   boss_face ();

};

// function boss_idle16
// function number 1596 begins at statement 23568
/*
 * OP_STATE	219	14637	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle16 = [ 32.000, boss_idle17 ] {

   boss_face ();

};

// function boss_idle17
// function number 1597 begins at statement 23571
/*
 * OP_STATE	312	14638	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle17 = [ 33.000, boss_idle18 ] {

   boss_face ();

};

// function boss_idle18
// function number 1598 begins at statement 23574
/*
 * OP_STATE	9671	14639	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle18 = [ 34.000, boss_idle19 ] {

   boss_face ();

};

// function boss_idle19
// function number 1599 begins at statement 23577
/*
 * OP_STATE	5878	14640	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle19 = [ 35.000, boss_idle20 ] {

   boss_face ();

};

// function boss_idle20
// function number 1600 begins at statement 23580
/*
 * OP_STATE	9655	14641	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle20 = [ 36.000, boss_idle21 ] {

   boss_face ();

};

// function boss_idle21
// function number 1601 begins at statement 23583
/*
 * OP_STATE	9657	14642	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle21 = [ 37.000, boss_idle22 ] {

   boss_face ();

};

// function boss_idle22
// function number 1602 begins at statement 23586
/*
 * OP_STATE	9659	14643	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle22 = [ 38.000, boss_idle23 ] {

   boss_face ();

};

// function boss_idle23
// function number 1603 begins at statement 23589
/*
 * OP_STATE	9661	14644	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle23 = [ 39.000, boss_idle24 ] {

   boss_face ();

};

// function boss_idle24
// function number 1604 begins at statement 23592
/*
 * OP_STATE	746	14645	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle24 = [ 40.000, boss_idle25 ] {

   boss_face ();

};

// function boss_idle25
// function number 1605 begins at statement 23595
/*
 * OP_STATE	9993	14646	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle25 = [ 41.000, boss_idle26 ] {

   boss_face ();

};

// function boss_idle26
// function number 1606 begins at statement 23598
/*
 * OP_STATE	9995	14647	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle26 = [ 42.000, boss_idle27 ] {

   boss_face ();

};

// function boss_idle27
// function number 1607 begins at statement 23601
/*
 * OP_STATE	9997	14648	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle27 = [ 43.000, boss_idle28 ] {

   boss_face ();

};

// function boss_idle28
// function number 1608 begins at statement 23604
/*
 * OP_STATE	9999	14649	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle28 = [ 44.000, boss_idle29 ] {

   boss_face ();

};

// function boss_idle29
// function number 1609 begins at statement 23607
/*
 * OP_STATE	2598	14650	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle29 = [ 45.000, boss_idle30 ] {

   boss_face ();

};

// function boss_idle30
// function number 1610 begins at statement 23610
/*
 * OP_STATE	10002	14651	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle30 = [ 46.000, boss_idle31 ] {

   boss_face ();

};

// function boss_idle31
// function number 1611 begins at statement 23613
/*
 * OP_STATE	10004	14621	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_idle31 = [ 47.000, boss_idle1 ] {

   boss_face ();

};

// function boss_missile1
// function number 1612 begins at statement 23616
/*
 * OP_STATE	9923	14652	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_missile1 = [ 57.000, boss_missile2 ] {

   boss_face ();

};

// function boss_missile2
// function number 1613 begins at statement 23619
/*
 * OP_STATE	9925	14653	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_missile2 = [ 58.000, boss_missile3 ] {

   boss_face ();

};

// function boss_missile3
// function number 1614 begins at statement 23622
/*
 * OP_STATE	2783	14654	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_missile3 = [ 59.000, boss_missile4 ] {

   boss_face ();

};

// function boss_missile4
// function number 1615 begins at statement 23625
/*
 * OP_STATE	2019	14655	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_missile4 = [ 60.000, boss_missile5 ] {

   boss_face ();

};

// function boss_missile5
// function number 1616 begins at statement 23628
/*
 * OP_STATE	9928	14656	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_missile5 = [ 61.000, boss_missile6 ] {

   boss_face ();

};

// function boss_missile6
// function number 1617 begins at statement 23631
/*
 * OP_STATE	9930	14657	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_missile6 = [ 62.000, boss_missile7 ] {

   boss_face ();

};

// function boss_missile7
// function number 1618 begins at statement 23634
/*
 * OP_STATE	6707	14658	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_missile7 = [ 63.000, boss_missile8 ] {

   boss_face ();

};

// function boss_missile8
// function number 1619 begins at statement 23637
/*
 * OP_STATE	220	14659	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_missile8 = [ 64.000, boss_missile9 ] {

   boss_face ();

};

// function boss_missile9
// function number 1620 begins at statement 23640
/*
 * OP_STATE	9934	14660	0
 * OP_STORE_V	14661	4	0
 * OP_CALL1	14588	0	0
 * OP_DONE	0	0	0
 */

void () boss_missile9 = [ 65.000, boss_missile10 ] {

   boss_missile (globaldef004869);

};
vector globaldef004869 /* = '100.000 100.000 200.000' */;

// function boss_missile10
// function number 1621 begins at statement 23644
/*
 * OP_STATE	9936	14664	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_missile10 = [ 66.000, boss_missile11 ] {

   boss_face ();

};

// function boss_missile11
// function number 1622 begins at statement 23647
/*
 * OP_STATE	9938	14665	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_missile11 = [ 67.000, boss_missile12 ] {

   boss_face ();

};

// function boss_missile12
// function number 1623 begins at statement 23650
/*
 * OP_STATE	8193	14666	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_missile12 = [ 68.000, boss_missile13 ] {

   boss_face ();

};

// function boss_missile13
// function number 1624 begins at statement 23653
/*
 * OP_STATE	8196	14667	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_missile13 = [ 69.000, boss_missile14 ] {

   boss_face ();

};

// function boss_missile14
// function number 1625 begins at statement 23656
/*
 * OP_STATE	1536	14668	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_missile14 = [ 70.000, boss_missile15 ] {

   boss_face ();

};

// function boss_missile15
// function number 1626 begins at statement 23659
/*
 * OP_STATE	8201	14669	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_missile15 = [ 71.000, boss_missile16 ] {

   boss_face ();

};

// function boss_missile16
// function number 1627 begins at statement 23662
/*
 * OP_STATE	9943	14670	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_missile16 = [ 72.000, boss_missile17 ] {

   boss_face ();

};

// function boss_missile17
// function number 1628 begins at statement 23665
/*
 * OP_STATE	5487	14671	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_missile17 = [ 73.000, boss_missile18 ] {

   boss_face ();

};

// function boss_missile18
// function number 1629 begins at statement 23668
/*
 * OP_STATE	9946	14672	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_missile18 = [ 74.000, boss_missile19 ] {

   boss_face ();

};

// function boss_missile19
// function number 1630 begins at statement 23671
/*
 * OP_STATE	9173	14673	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_missile19 = [ 75.000, boss_missile20 ] {

   boss_face ();

};

// function boss_missile20
// function number 1631 begins at statement 23674
/*
 * OP_STATE	9949	14674	0
 * OP_STORE_V	14675	4	0
 * OP_CALL1	14588	0	0
 * OP_DONE	0	0	0
 */

void () boss_missile20 = [ 76.000, boss_missile21 ] {

   boss_missile (globaldef004881);

};
vector globaldef004881 /* = '100.000 -100.000 200.000' */;

// function boss_missile21
// function number 1632 begins at statement 23678
/*
 * OP_STATE	9951	14678	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_missile21 = [ 77.000, boss_missile22 ] {

   boss_face ();

};

// function boss_missile22
// function number 1633 begins at statement 23681
/*
 * OP_STATE	9953	14679	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_missile22 = [ 78.000, boss_missile23 ] {

   boss_face ();

};

// function boss_missile23
// function number 1634 begins at statement 23684
/*
 * OP_STATE	9955	14620	0
 * OP_CALL0	14589	0	0
 * OP_DONE	0	0	0
 */

void () boss_missile23 = [ 79.000, boss_missile1 ] {

   boss_face ();

};

// function boss_shocka1
// function number 1635 begins at statement 23687
/*
 * OP_STATE	2805	14681	0
 * OP_DONE	0	0	0
 */

void () boss_shocka1 = [ 80.000, boss_shocka2 ] {


};

// function boss_shocka2
// function number 1636 begins at statement 23689
/*
 * OP_STATE	8204	14682	0
 * OP_DONE	0	0	0
 */

void () boss_shocka2 = [ 81.000, boss_shocka3 ] {


};

// function boss_shocka3
// function number 1637 begins at statement 23691
/*
 * OP_STATE	9959	14683	0
 * OP_DONE	0	0	0
 */

void () boss_shocka3 = [ 82.000, boss_shocka4 ] {


};

// function boss_shocka4
// function number 1638 begins at statement 23693
/*
 * OP_STATE	9961	14684	0
 * OP_DONE	0	0	0
 */

void () boss_shocka4 = [ 83.000, boss_shocka5 ] {


};

// function boss_shocka5
// function number 1639 begins at statement 23695
/*
 * OP_STATE	7694	14685	0
 * OP_DONE	0	0	0
 */

void () boss_shocka5 = [ 84.000, boss_shocka6 ] {


};

// function boss_shocka6
// function number 1640 begins at statement 23697
/*
 * OP_STATE	9963	14686	0
 * OP_DONE	0	0	0
 */

void () boss_shocka6 = [ 85.000, boss_shocka7 ] {


};

// function boss_shocka7
// function number 1641 begins at statement 23699
/*
 * OP_STATE	9965	14687	0
 * OP_DONE	0	0	0
 */

void () boss_shocka7 = [ 86.000, boss_shocka8 ] {


};

// function boss_shocka8
// function number 1642 begins at statement 23701
/*
 * OP_STATE	9967	14688	0
 * OP_DONE	0	0	0
 */

void () boss_shocka8 = [ 87.000, boss_shocka9 ] {


};

// function boss_shocka9
// function number 1643 begins at statement 23703
/*
 * OP_STATE	9969	14689	0
 * OP_DONE	0	0	0
 */

void () boss_shocka9 = [ 88.000, boss_shocka10 ] {


};

// function boss_shocka10
// function number 1644 begins at statement 23705
/*
 * OP_STATE	9971	14620	0
 * OP_DONE	0	0	0
 */

void () boss_shocka10 = [ 89.000, boss_missile1 ] {


};

// function boss_shockb1
// function number 1645 begins at statement 23707
/*
 * OP_STATE	2658	14691	0
 * OP_DONE	0	0	0
 */

void () boss_shockb1 = [ 90.000, boss_shockb2 ] {


};

// function boss_shockb2
// function number 1646 begins at statement 23709
/*
 * OP_STATE	9974	14692	0
 * OP_DONE	0	0	0
 */

void () boss_shockb2 = [ 91.000, boss_shockb3 ] {


};

// function boss_shockb3
// function number 1647 begins at statement 23711
/*
 * OP_STATE	9976	14693	0
 * OP_DONE	0	0	0
 */

void () boss_shockb3 = [ 92.000, boss_shockb4 ] {


};

// function boss_shockb4
// function number 1648 begins at statement 23713
/*
 * OP_STATE	9978	14694	0
 * OP_DONE	0	0	0
 */

void () boss_shockb4 = [ 93.000, boss_shockb5 ] {


};

// function boss_shockb5
// function number 1649 begins at statement 23715
/*
 * OP_STATE	9979	14695	0
 * OP_DONE	0	0	0
 */

void () boss_shockb5 = [ 94.000, boss_shockb6 ] {


};

// function boss_shockb6
// function number 1650 begins at statement 23717
/*
 * OP_STATE	9981	14696	0
 * OP_DONE	0	0	0
 */

void () boss_shockb6 = [ 95.000, boss_shockb7 ] {


};

// function boss_shockb7
// function number 1651 begins at statement 23719
/*
 * OP_STATE	2658	14697	0
 * OP_DONE	0	0	0
 */

void () boss_shockb7 = [ 90.000, boss_shockb8 ] {


};

// function boss_shockb8
// function number 1652 begins at statement 23721
/*
 * OP_STATE	9974	14698	0
 * OP_DONE	0	0	0
 */

void () boss_shockb8 = [ 91.000, boss_shockb9 ] {


};

// function boss_shockb9
// function number 1653 begins at statement 23723
/*
 * OP_STATE	9976	14699	0
 * OP_DONE	0	0	0
 */

void () boss_shockb9 = [ 92.000, boss_shockb10 ] {


};

// function boss_shockb10
// function number 1654 begins at statement 23725
/*
 * OP_STATE	9978	14620	0
 * OP_DONE	0	0	0
 */

void () boss_shockb10 = [ 93.000, boss_missile1 ] {


};

// function boss_shockc1
// function number 1655 begins at statement 23727
/*
 * OP_STATE	9983	14701	0
 * OP_DONE	0	0	0
 */

void () boss_shockc1 = [ 96.000, boss_shockc2 ] {


};

// function boss_shockc2
// function number 1656 begins at statement 23729
/*
 * OP_STATE	9985	14702	0
 * OP_DONE	0	0	0
 */

void () boss_shockc2 = [ 97.000, boss_shockc3 ] {


};

// function boss_shockc3
// function number 1657 begins at statement 23731
/*
 * OP_STATE	9987	14703	0
 * OP_DONE	0	0	0
 */

void () boss_shockc3 = [ 98.000, boss_shockc4 ] {


};

// function boss_shockc4
// function number 1658 begins at statement 23733
/*
 * OP_STATE	9989	14704	0
 * OP_DONE	0	0	0
 */

void () boss_shockc4 = [ 99.000, boss_shockc5 ] {


};

// function boss_shockc5
// function number 1659 begins at statement 23735
/*
 * OP_STATE	1997	14705	0
 * OP_DONE	0	0	0
 */

void () boss_shockc5 = [ 100.000, boss_shockc6 ] {


};

// function boss_shockc6
// function number 1660 begins at statement 23737
/*
 * OP_STATE	8107	14706	0
 * OP_DONE	0	0	0
 */

void () boss_shockc6 = [ 101.000, boss_shockc7 ] {


};

// function boss_shockc7
// function number 1661 begins at statement 23739
/*
 * OP_STATE	8109	14707	0
 * OP_DONE	0	0	0
 */

void () boss_shockc7 = [ 102.000, boss_shockc8 ] {


};

// function boss_shockc8
// function number 1662 begins at statement 23741
/*
 * OP_STATE	8111	14708	0
 * OP_DONE	0	0	0
 */

void () boss_shockc8 = [ 103.000, boss_shockc9 ] {


};

// function boss_shockc9
// function number 1663 begins at statement 23743
/*
 * OP_STATE	8114	14709	0
 * OP_DONE	0	0	0
 */

void () boss_shockc9 = [ 104.000, boss_shockc10 ] {


};

// function boss_shockc10
// function number 1664 begins at statement 23745
/*
 * OP_STATE	9562	14710	0
 * OP_DONE	0	0	0
 */

void () boss_shockc10 = [ 105.000, boss_death1 ] {


};

// function boss_death1
// function number 1665 begins at statement 23747
/*
 * OP_STATE	10006	14711	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	14712	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_DONE	0	0	0
 */

void () boss_death1 = [ 48.000, boss_death2 ] {

   sound (self,CHAN_VOICE,globaldef004916,TRUE,ATTN_NORM);

};
string globaldef004916 /* = "boss1/death.wav" */;

// function boss_death2
// function number 1666 begins at statement 23755
/*
 * OP_STATE	10008	14713	0
 * OP_DONE	0	0	0
 */

void () boss_death2 = [ 49.000, boss_death3 ] {


};

// function boss_death3
// function number 1667 begins at statement 23757
/*
 * OP_STATE	1470	14714	0
 * OP_DONE	0	0	0
 */

void () boss_death3 = [ 50.000, boss_death4 ] {


};

// function boss_death4
// function number 1668 begins at statement 23759
/*
 * OP_STATE	9911	14715	0
 * OP_DONE	0	0	0
 */

void () boss_death4 = [ 51.000, boss_death5 ] {


};

// function boss_death5
// function number 1669 begins at statement 23761
/*
 * OP_STATE	9913	14716	0
 * OP_DONE	0	0	0
 */

void () boss_death5 = [ 52.000, boss_death6 ] {


};

// function boss_death6
// function number 1670 begins at statement 23763
/*
 * OP_STATE	9915	14717	0
 * OP_DONE	0	0	0
 */

void () boss_death6 = [ 53.000, boss_death7 ] {


};

// function boss_death7
// function number 1671 begins at statement 23765
/*
 * OP_STATE	9917	14718	0
 * OP_DONE	0	0	0
 */

void () boss_death7 = [ 54.000, boss_death8 ] {


};

// function boss_death8
// function number 1672 begins at statement 23767
/*
 * OP_STATE	9919	14719	0
 * OP_DONE	0	0	0
 */

void () boss_death8 = [ 55.000, boss_death9 ] {


};

// function boss_death9
// function number 1673 begins at statement 23769
/*
 * OP_STATE	9921	14720	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	329	7	0
 * OP_STORE_V	14603	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	304	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	323	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	106	14721
 * OP_STORE_V	14721	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	107	14722
 * OP_STORE_V	14722	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	108	14723
 * OP_STORE_V	14723	7	0
 * OP_CALL2	500	0	0
 * OP_DONE	0	0	0
 */

void () boss_death9 = [ 56.000, boss_death10 ] {

   sound (self,CHAN_BODY,globaldef004811,TRUE,ATTN_NORM);
   WriteByte (MSG_BROADCAST,globaldef000287);
   WriteByte (MSG_BROADCAST,TE_LAVASPLASH);
   WriteCoord (MSG_BROADCAST,self.origin);
   WriteCoord (MSG_BROADCAST,self.origin_y);
   WriteCoord (MSG_BROADCAST,self.origin_z);

};

// function boss_death10
// function number 1674 begins at statement 23795
/*
 * OP_STATE	9921	14720	0
 * OP_ADD_F	42	214	14724
 * OP_STORE_F	14724	42	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	307	7	0
 * OP_CALL2	496	0	0
 * OP_CALL0	520	0	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_DONE	0	0	0
 */

void () boss_death10 = [ 56.000, boss_death10 ] {

   killed_monsters = (killed_monsters + TRUE);
   WriteByte (MSG_ALL,SVC_KILLEDMONSTER);
   SUB_UseTargets ();
   remove (self);

};

// function boss_missile
// function number 1675 begins at statement 23805
/*
 * OP_LOAD_ENT	28	181	14741
 * OP_LOAD_V	14741	105	14742
 * OP_LOAD_V	28	105	14745
 * OP_SUB_V	14742	14745	14748
 * OP_STORE_V	14748	4	0
 * OP_CALL1	495	0	0
 * OP_STORE_V	1	14728	0
 * OP_STORE_V	14728	4	0
 * OP_CALL1	452	0	0
 * OP_LOAD_V	28	105	14751
 * OP_MUL_FV	14725	59	14754
 * OP_ADD_V	14751	14754	14757
 * OP_MUL_FV	14726	65	14760
 * OP_ADD_V	14757	14760	14763
 * OP_MUL_FV	14727	2967	14766
 * OP_ADD_V	14763	14766	14769
 * OP_STORE_V	14769	14731	0
 * OP_GT	354	214	14772
 * OP_IFNOT	14772	18	0
 * OP_LOAD_ENT	28	181	14773
 * OP_LOAD_V	14773	105	14774
 * OP_SUB_V	14774	14731	14777
 * OP_STORE_V	14777	4	0
 * OP_CALL1	462	0	0
 * OP_DIV_F	1	540	14780
 * OP_STORE_F	14780	14740	0
 * OP_LOAD_ENT	28	181	14781
 * OP_LOAD_V	14781	113	14782
 * OP_STORE_V	14782	14734	0
 * OP_STORE_F	213	14736	0
 * OP_LOAD_ENT	28	181	14785
 * OP_LOAD_V	14785	105	14786
 * OP_MUL_FV	14740	14734	14789
 * OP_ADD_V	14786	14789	14792
 * OP_STORE_V	14792	14737	0
 * OP_GOTO	4	0	0
 * OP_LOAD_ENT	28	181	14795
 * OP_LOAD_V	14795	105	14796
 * OP_STORE_V	14796	14737	0
 * OP_SUB_V	14737	14731	14799
 * OP_STORE_V	14799	4	0
 * OP_CALL1	459	0	0
 * OP_STORE_V	1	14734	0
 * OP_STORE_V	14731	4	0
 * OP_STORE_V	14734	7	0
 * OP_CALL2	6018	0	0
 * OP_STORE_V	350	4	0
 * OP_STORE_V	6694	7	0
 * OP_CALL2	454	0	0
 * OP_ADDRESS	350	121	14802
 * OP_STOREP_V	14805	14802	0
 * OP_STORE_V	350	4	0
 * OP_STORE_V	286	7	0
 * OP_STORE_V	286	10	0
 * OP_CALL3	455	0	0
 * OP_ADDRESS	350	113	14808
 * OP_MUL_VF	14734	540	14811
 * OP_STOREP_V	14811	14808	0
 * OP_ADDRESS	350	146	14814
 * OP_STOREP_FNC	3922	14814	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	326	7	0
 * OP_STORE_V	14815	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_LOAD_ENT	28	181	14816
 * OP_LOAD_F	14816	152	14817
 * OP_LE	14817	213	14818
 * OP_IFNOT	14818	2	0
 * OP_CALL0	14621	0	0
 * OP_DONE	0	0	0
 */

void (vector globaldef004925) boss_missile = {

   local vector offang;
   local vector org;
   local vector vec;
   local vector d;
   local float t;

   offang = vectoangles ((self.enemy.origin - self.origin));
   makevectors (offang);
   org = (((self.origin + (globaldef004925_x * v_forward)) + (globaldef004927 * v_right)) + (globaldef004928 * globaldef001462));
   if ( (skill > TRUE) ) {

      t = (vlen ((self.enemy.origin - org)) / globaldef000523);
      vec = self.enemy.velocity;
      globaldef004940 = FALSE;
      d = (self.enemy.origin + (t * vec));

   } else {

      d = self.enemy.origin;

   }
   vec = normalize ((d - org));
   launch_spike (org,vec);
   setmodel (newmis,globaldef002439);
   newmis.avelocity = globaldef004946;
   setsize (newmis,VEC_ORIGIN,VEC_ORIGIN);
   newmis.velocity = (vec * globaldef000523);
   newmis.touch = T_MissileTouch;
   sound (self,CHAN_WEAPON,globaldef004947,TRUE,ATTN_NORM);
   if ( (self.enemy.health <= FALSE) ) {

      boss_idle1 ();

   }

};
vector globaldef004946 /* = '200.000 100.000 300.000' */;
string globaldef004947 /* = "boss1/throw.wav" */;

// function boss_awake
// function number 1676 begins at statement 23877
/*
 * OP_ADDRESS	28	104	14820
 * OP_STOREP_F	240	14820	0
 * OP_ADDRESS	28	103	14821
 * OP_STOREP_F	229	14821	0
 * OP_ADDRESS	28	163	14822
 * OP_STOREP_F	250	14822	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	14823	7	0
 * OP_CALL2	454	0	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	14824	7	0
 * OP_STORE_V	14827	10	0
 * OP_CALL3	455	0	0
 * OP_EQ_F	354	213	14830
 * OP_IFNOT	14830	4	0
 * OP_ADDRESS	28	152	14831
 * OP_STOREP_F	214	14831	0
 * OP_GOTO	3	0	0
 * OP_ADDRESS	28	152	14832
 * OP_STOREP_F	228	14832	0
 * OP_ADDRESS	28	181	14833
 * OP_STOREP_ENT	351	14833	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	304	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_STORE_V	323	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	106	14834
 * OP_STORE_V	14834	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	107	14835
 * OP_STORE_V	14835	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	342	4	0
 * OP_LOAD_F	28	108	14836
 * OP_STORE_V	14836	7	0
 * OP_CALL2	500	0	0
 * OP_ADDRESS	28	192	14837
 * OP_STOREP_F	2323	14837	0
 * OP_CALL0	14601	0	0
 * OP_DONE	0	0	0
 */

void () boss_awake = {

   self.solid = SOLID_SLIDEBOX;
   self.movetype = MOVETYPE_STEP;
   self.takedamage = DAMAGE_NO;
   setmodel (self,globaldef004949);
   setsize (self,globaldef004950,globaldef004951);
   if ( (skill == FALSE) ) {

      self.health = TRUE;

   } else {

      self.health = MOVETYPE_WALK;

   }
   self.enemy = activator;
   WriteByte (MSG_BROADCAST,globaldef000287);
   WriteByte (MSG_BROADCAST,TE_LAVASPLASH);
   WriteCoord (MSG_BROADCAST,self.origin);
   WriteCoord (MSG_BROADCAST,self.origin_y);
   WriteCoord (MSG_BROADCAST,self.origin_z);
   self.yaw_speed = globaldef001384;
   boss_rise1 ();

};
string globaldef004949 /* = "progs/boss.mdl" */;
vector globaldef004950 /* = '-128.000 -128.000 -24.000' */;
vector globaldef004951 /* = '128.000 128.000 256.000' */;

// function monster_boss
// function number 1677 begins at statement 23921
/*
 * OP_IFNOT	35	4	0
 * OP_STORE_V	28	4	0
 * OP_CALL1	465	0	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	14823	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	6694	4	0
 * OP_CALL1	470	0	0
 * OP_STORE_V	5359	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	14603	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	14605	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	6659	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	14815	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	14839	4	0
 * OP_CALL1	469	0	0
 * OP_STORE_V	14712	4	0
 * OP_CALL1	469	0	0
 * OP_ADD_F	40	214	14840
 * OP_STORE_F	14840	40	0
 * OP_ADDRESS	28	147	14841
 * OP_STOREP_FNC	14819	14841	0
 * OP_DONE	0	0	0
 */

void () monster_boss = {

   if ( deathmatch ) {

      remove (self);
      return ;

   }
   precache_model (globaldef004949);
   precache_model (globaldef002439);
   precache_sound (globaldef002013);
   precache_sound (globaldef004811);
   precache_sound (globaldef004813);
   precache_sound (globaldef002404);
   precache_sound (globaldef004947);
   precache_sound (globaldef004953);
   precache_sound (globaldef004916);
   total_monsters = (total_monsters + TRUE);
   self.use = boss_awake;

};
string globaldef004953 /* = "boss1/pain.wav" */;
entity globaldef004954;
entity globaldef004955;
float globaldef004956 /* = 0.000 */;

// function lightning_fire
// function number 1678 begins at statement 23948
/*
 * OP_GE	31	14844	14852
 * OP_IFNOT	14852	6	0
 * OP_STORE_ENT	14842	28	0
 * OP_CALL0	10226	0	0
 * OP_STORE_ENT	14843	28	0
 * OP_CALL0	10226	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_V	14842	134	14853
 * OP_LOAD_V	14842	138	14856
 * OP_ADD_V	14853	14856	14859
 * OP_MUL_VF	14859	539	14862
 * OP_STORE_V	14862	14846	0
 * OP_LOAD_F	14842	97	14865
 * OP_SUB_F	14865	218	14866
 * OP_STORE_F	14866	14848	0
 * OP_LOAD_V	14843	134	14867
 * OP_LOAD_V	14843	138	14870
 * OP_ADD_V	14867	14870	14873
 * OP_MUL_VF	14873	539	14876
 * OP_STORE_V	14876	14849	0
 * OP_LOAD_F	14843	97	14879
 * OP_SUB_F	14879	218	14880
 * OP_STORE_F	14880	14851	0
 * OP_SUB_V	14849	14846	14881
 * OP_STORE_V	14881	4	0
 * OP_CALL1	459	0	0
 * OP_MUL_VF	1	1997	14884
 * OP_SUB_V	14849	14884	14887
 * OP_STORE_V	14887	14849	0
 * OP_ADDRESS	28	150	14890
 * OP_ADD_F	31	3036	14891
 * OP_STOREP_F	14891	14890	0
 * OP_ADDRESS	28	148	14892
 * OP_STOREP_FNC	14845	14892	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	304	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	322	7	0
 * OP_CALL2	496	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	30	7	0
 * OP_CALL2	503	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	14846	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	14847	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	14848	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	14849	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	14850	7	0
 * OP_CALL2	500	0	0
 * OP_STORE_V	344	4	0
 * OP_STORE_V	14851	7	0
 * OP_CALL2	500	0	0
 * OP_DONE	0	0	0
 */

void () lightning_fire = {

   local vector p1;
   local vector p2;

   if ( (time >= globaldef004956) ) {

      self = globaldef004954;
      door_go_down ();
      self = globaldef004955;
      door_go_down ();
      return ;

   }
   p1 = ((globaldef004954.mins + globaldef004954.maxs) * globaldef000522);
   globaldef004961 = (globaldef004954.absmin_z - FL_INWATER);
   p2 = ((globaldef004955.mins + globaldef004955.maxs) * globaldef000522);
   globaldef004965 = (globaldef004955.absmin_z - FL_INWATER);
   p2 = (p2 - (normalize ((p2 - p1)) * globaldef001335));
   self.nextthink = (time + globaldef001488);
   self.think = lightning_fire;
   WriteByte (MSG_ALL,globaldef000287);
   WriteByte (MSG_ALL,TE_LIGHTNING3);
   WriteEntity (MSG_ALL,world);
   WriteCoord (MSG_ALL,p1);
   WriteCoord (MSG_ALL,globaldef004960);
   WriteCoord (MSG_ALL,globaldef004961);
   WriteCoord (MSG_ALL,p2);
   WriteCoord (MSG_ALL,globaldef004964);
   WriteCoord (MSG_ALL,globaldef004965);

};

// function lightning_use
// function number 1679 begins at statement 24010
/*
 * OP_ADD_F	31	214	14894
 * OP_GE	14844	14894	14895
 * OP_IFNOT	14895	2	0
 * OP_RETURN	0	0	0
 * OP_STORE_V	30	4	0
 * OP_STORE_V	196	7	0
 * OP_STORE_V	14896	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	14842	0
 * OP_STORE_V	14842	4	0
 * OP_STORE_V	196	7	0
 * OP_STORE_V	14896	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	14843	0
 * OP_NOT_ENT	14842	0	14897
 * OP_NOT_ENT	14843	0	14898
 * OP_OR	14897	14898	14899
 * OP_IFNOT	14899	4	0
 * OP_STORE_V	14900	4	0
 * OP_CALL1	473	0	0
 * OP_RETURN	0	0	0
 * OP_LOAD_F	14842	438	14901
 * OP_NE_F	14901	282	14902
 * OP_LOAD_F	14842	438	14903
 * OP_NE_F	14903	283	14904
 * OP_AND	14902	14904	14905
 * OP_LOAD_F	14843	438	14906
 * OP_NE_F	14906	282	14907
 * OP_LOAD_F	14843	438	14908
 * OP_NE_F	14908	283	14909
 * OP_AND	14907	14909	14910
 * OP_OR	14905	14910	14911
 * OP_LOAD_F	14842	438	14912
 * OP_LOAD_F	14843	438	14913
 * OP_NE_F	14912	14913	14914
 * OP_OR	14911	14914	14915
 * OP_IFNOT	14915	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	14842	150	14916
 * OP_STOREP_F	276	14916	0
 * OP_ADDRESS	14843	150	14917
 * OP_STOREP_F	276	14917	0
 * OP_ADD_F	31	214	14918
 * OP_STORE_F	14918	14844	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	6659	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_CALL0	14845	0	0
 * OP_STORE_V	30	4	0
 * OP_STORE_V	129	7	0
 * OP_STORE_V	14919	10	0
 * OP_CALL3	468	0	0
 * OP_STORE_ENT	1	28	0
 * OP_NOT_ENT	28	0	14920
 * OP_IFNOT	14920	2	0
 * OP_RETURN	0	0	0
 * OP_ADDRESS	28	181	14921
 * OP_STOREP_ENT	351	14921	0
 * OP_LOAD_F	14842	438	14922
 * OP_EQ_F	14922	282	14923
 * OP_LOAD_F	28	152	14924
 * OP_GT	14924	213	14925
 * OP_AND	14923	14925	14926
 * OP_IFNOT	14926	25	0
 * OP_STORE_V	28	4	0
 * OP_STORE_V	327	7	0
 * OP_STORE_V	14839	10	0
 * OP_STORE_V	214	13	0
 * OP_STORE_V	331	16	0
 * OP_CALL5	458	0	0
 * OP_ADDRESS	28	152	14927
 * OP_LOAD_F	28	152	14928
 * OP_SUB_F	14928	214	14929
 * OP_STOREP_F	14929	14927	0
 * OP_LOAD_F	28	152	14930
 * OP_GE	14930	216	14931
 * OP_IFNOT	14931	3	0
 * OP_CALL0	14680	0	0
 * OP_GOTO	10	0	0
 * OP_LOAD_F	28	152	14932
 * OP_EQ_F	14932	214	14933
 * OP_IFNOT	14933	3	0
 * OP_CALL0	14690	0	0
 * OP_GOTO	5	0	0
 * OP_LOAD_F	28	152	14934
 * OP_EQ_F	14934	213	14935
 * OP_IFNOT	14935	2	0
 * OP_CALL0	14700	0	0
 * OP_DONE	0	0	0
 */

void () lightning_use = {

   if ( (globaldef004956 >= (time + TRUE)) ) {

      return ;

   }
   globaldef004954 = find (world,target,globaldef004967);
   globaldef004955 = find (globaldef004954,target,globaldef004967);
   if ( (!globaldef004954 || !globaldef004955) ) {

      dprint (globaldef004968);
      return ;

   }
   if ( ((((globaldef004954.state != STATE_TOP) && (globaldef004954.state != STATE_BOTTOM)) || ((globaldef004955.state != STATE_TOP) && (globaldef004955.state != STATE_BOTTOM))) || (globaldef004954.state != globaldef004955.state)) ) {

      return ;

   }
   globaldef004954.nextthink = CONTENT_EMPTY;
   globaldef004955.nextthink = CONTENT_EMPTY;
   globaldef004956 = (time + TRUE);
   sound (self,CHAN_VOICE,globaldef002404,TRUE,ATTN_NORM);
   lightning_fire ();
   self = find (world,classname,globaldef004969);
   if ( !self ) {

      return ;

   }
   self.enemy = activator;
   if ( ((globaldef004954.state == STATE_TOP) && (self.health > FALSE)) ) {

      sound (self,CHAN_VOICE,globaldef004953,TRUE,ATTN_NORM);
      self.health = (self.health - TRUE);
      if ( (self.health >= FL_SWIM) ) {

         boss_shocka1 ();

      } else {

         if ( (self.health == TRUE) ) {

            boss_shockb1 ();

         } else {

            if ( (self.health == FALSE) ) {

               boss_shockc1 ();

            }

         }

      }

   }

};
string globaldef004967 /* = "lightning" */;
string globaldef004968 /* = "missing lightning targets\n" */;
string globaldef004969 /* = "monster_boss" */;

// function event_lightning
// function number 1680 begins at statement 24102
/*
 * OP_ADDRESS	28	147	14937
 * OP_STOREP_FNC	14893	14937	0
 * OP_DONE	0	0	0
 */

void () event_lightning = {

   self.use = lightning_use;

};
