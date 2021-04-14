void (vector globaldef004925) func001675;

// func001563
// function begins at statement 23452, parm_start=14590
// OP_LOAD_ENT	28	181	14590
// OP_LOAD_F	14590	152	14591
// OP_LE	14591	213	14592
// OP_CALL0	457	0	0
// OP_LT	1	5514	14593
// OP_OR	14592	14593	14594
// OP_IFNOT	14594	18	0
// OP_ADDRESS	28	181	14595
// OP_LOAD_ENT	28	181	14596
// OP_STORE_V	14596	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1236	10	0
// OP_CALL3	468	0	0
// OP_STOREP_ENT	1	14595	0
// OP_LOAD_ENT	28	181	14597
// OP_NOT_ENT	14597	0	14598
// OP_IFNOT	14598	8	0
// OP_ADDRESS	28	181	14599
// OP_LOAD_ENT	28	181	14600
// OP_STORE_V	14600	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	1236	10	0
// OP_CALL3	468	0	0
// OP_STOREP_ENT	1	14599	0
// OP_CALL0	3190	0	0
// OP_DONE	0	0	0
void () func001563 = 
{
    
    if((self.enemy.health <= FALSE) || (random() < 0.02))
    {
        self.enemy = find(self.enemy, classname, "player");
        
        if(!self.enemy)
        {
            self.enemy = find(self.enemy, classname, "player");
        }
        
    }
    
    ai_face();
};


// func001564
// function begins at statement 23478, parm_start=14602
// OP_STATE	213	14602	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	14603	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func001564 = [0, func001565]
{
    sound(self, CHAN_WEAPON, "boss1/out1.wav", TRUE, ATTN_NORM);
};


// func001565
// function begins at statement 23486, parm_start=14604
// OP_STATE	214	14604	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	14605	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func001565 = [1, func001566]
{
    sound(self, CHAN_VOICE, "boss1/sight1.wav", TRUE, ATTN_NORM);
};


// func001566
// function begins at statement 23494, parm_start=14606
// OP_STATE	216	14606	0
// OP_DONE	0	0	0
void () func001566 = [2, func001567]
{
};


// func001567
// function begins at statement 23496, parm_start=14607
// OP_STATE	228	14607	0
// OP_DONE	0	0	0
void () func001567 = [3, func001568]
{
};


// func001568
// function begins at statement 23498, parm_start=14608
// OP_STATE	229	14608	0
// OP_DONE	0	0	0
void () func001568 = [4, func001569]
{
};


// func001569
// function begins at statement 23500, parm_start=14609
// OP_STATE	230	14609	0
// OP_DONE	0	0	0
void () func001569 = [5, func001570]
{
};


// func001570
// function begins at statement 23502, parm_start=14610
// OP_STATE	231	14610	0
// OP_DONE	0	0	0
void () func001570 = [6, func001571]
{
};


// func001571
// function begins at statement 23504, parm_start=14611
// OP_STATE	232	14611	0
// OP_DONE	0	0	0
void () func001571 = [7, func001572]
{
};


// func001572
// function begins at statement 23506, parm_start=14612
// OP_STATE	217	14612	0
// OP_DONE	0	0	0
void () func001572 = [8, func001573]
{
};


// func001573
// function begins at statement 23508, parm_start=14613
// OP_STATE	234	14613	0
// OP_DONE	0	0	0
void () func001573 = [9, func001574]
{
};


// func001574
// function begins at statement 23510, parm_start=14614
// OP_STATE	235	14614	0
// OP_DONE	0	0	0
void () func001574 = [10, func001575]
{
};


// func001575
// function begins at statement 23512, parm_start=14615
// OP_STATE	236	14615	0
// OP_DONE	0	0	0
void () func001575 = [11, func001576]
{
};


// func001576
// function begins at statement 23514, parm_start=14616
// OP_STATE	791	14616	0
// OP_DONE	0	0	0
void () func001576 = [12, func001577]
{
};


// func001577
// function begins at statement 23516, parm_start=14617
// OP_STATE	792	14617	0
// OP_DONE	0	0	0
void () func001577 = [13, func001578]
{
};


// func001578
// function begins at statement 23518, parm_start=14618
// OP_STATE	5693	14618	0
// OP_DONE	0	0	0
void () func001578 = [14, func001579]
{
};


// func001579
// function begins at statement 23520, parm_start=14619
// OP_STATE	765	14619	0
// OP_DONE	0	0	0
void () func001579 = [15, func001580]
{
};


// func001580
// function begins at statement 23522, parm_start=14620
// OP_STATE	218	14620	0
// OP_DONE	0	0	0
void () func001580 = [16, func001612]
{
};


// func001581
// function begins at statement 23524, parm_start=14622
// OP_STATE	6892	14622	0
// OP_DONE	0	0	0
void () func001581 = [17, func001582]
{
};


// func001582
// function begins at statement 23526, parm_start=14623
// OP_STATE	6133	14623	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001582 = [18, func001583]
{
    func001563();
};


// func001583
// function begins at statement 23529, parm_start=14624
// OP_STATE	6895	14624	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001583 = [19, func001584]
{
    func001563();
};


// func001584
// function begins at statement 23532, parm_start=14625
// OP_STATE	2323	14625	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001584 = [20, func001585]
{
    func001563();
};


// func001585
// function begins at statement 23535, parm_start=14626
// OP_STATE	12465	14626	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001585 = [21, func001586]
{
    func001563();
};


// func001586
// function begins at statement 23538, parm_start=14627
// OP_STATE	12467	14627	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001586 = [22, func001587]
{
    func001563();
};


// func001587
// function begins at statement 23541, parm_start=14628
// OP_STATE	304	14628	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001587 = [23, func001588]
{
    func001563();
};


// func001588
// function begins at statement 23544, parm_start=14629
// OP_STATE	736	14629	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001588 = [24, func001589]
{
    func001563();
};


// func001589
// function begins at statement 23547, parm_start=14630
// OP_STATE	305	14630	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001589 = [25, func001590]
{
    func001563();
};


// func001590
// function begins at statement 23550, parm_start=14631
// OP_STATE	306	14631	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001590 = [26, func001591]
{
    func001563();
};


// func001591
// function begins at statement 23553, parm_start=14632
// OP_STATE	307	14632	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001591 = [27, func001592]
{
    func001563();
};


// func001592
// function begins at statement 23556, parm_start=14633
// OP_STATE	308	14633	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001592 = [28, func001593]
{
    func001563();
};


// func001593
// function begins at statement 23559, parm_start=14634
// OP_STATE	9664	14634	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001593 = [29, func001594]
{
    func001563();
};


// func001594
// function begins at statement 23562, parm_start=14635
// OP_STATE	309	14635	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001594 = [30, func001595]
{
    func001563();
};


// func001595
// function begins at statement 23565, parm_start=14636
// OP_STATE	310	14636	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001595 = [31, func001596]
{
    func001563();
};


// func001596
// function begins at statement 23568, parm_start=14637
// OP_STATE	219	14637	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001596 = [32, func001597]
{
    func001563();
};


// func001597
// function begins at statement 23571, parm_start=14638
// OP_STATE	312	14638	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001597 = [33, func001598]
{
    func001563();
};


// func001598
// function begins at statement 23574, parm_start=14639
// OP_STATE	9671	14639	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001598 = [34, func001599]
{
    func001563();
};


// func001599
// function begins at statement 23577, parm_start=14640
// OP_STATE	5878	14640	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001599 = [35, func001600]
{
    func001563();
};


// func001600
// function begins at statement 23580, parm_start=14641
// OP_STATE	9655	14641	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001600 = [36, func001601]
{
    func001563();
};


// func001601
// function begins at statement 23583, parm_start=14642
// OP_STATE	9657	14642	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001601 = [37, func001602]
{
    func001563();
};


// func001602
// function begins at statement 23586, parm_start=14643
// OP_STATE	9659	14643	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001602 = [38, func001603]
{
    func001563();
};


// func001603
// function begins at statement 23589, parm_start=14644
// OP_STATE	9661	14644	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001603 = [39, func001604]
{
    func001563();
};


// func001604
// function begins at statement 23592, parm_start=14645
// OP_STATE	746	14645	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001604 = [40, func001605]
{
    func001563();
};


// func001605
// function begins at statement 23595, parm_start=14646
// OP_STATE	9993	14646	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001605 = [41, func001606]
{
    func001563();
};


// func001606
// function begins at statement 23598, parm_start=14647
// OP_STATE	9995	14647	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001606 = [42, func001607]
{
    func001563();
};


// func001607
// function begins at statement 23601, parm_start=14648
// OP_STATE	9997	14648	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001607 = [43, func001608]
{
    func001563();
};


// func001608
// function begins at statement 23604, parm_start=14649
// OP_STATE	9999	14649	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001608 = [44, func001609]
{
    func001563();
};


// func001609
// function begins at statement 23607, parm_start=14650
// OP_STATE	2598	14650	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001609 = [45, func001610]
{
    func001563();
};


// func001610
// function begins at statement 23610, parm_start=14651
// OP_STATE	10002	14651	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001610 = [46, func001611]
{
    func001563();
};


// func001611
// function begins at statement 23613, parm_start=14652
// OP_STATE	10004	14621	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001611 = [47, func001581]
{
    func001563();
};


// func001612
// function begins at statement 23616, parm_start=14652
// OP_STATE	9923	14652	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001612 = [57, func001613]
{
    func001563();
};


// func001613
// function begins at statement 23619, parm_start=14653
// OP_STATE	9925	14653	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001613 = [58, func001614]
{
    func001563();
};


// func001614
// function begins at statement 23622, parm_start=14654
// OP_STATE	2783	14654	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001614 = [59, func001615]
{
    func001563();
};


// func001615
// function begins at statement 23625, parm_start=14655
// OP_STATE	2019	14655	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001615 = [60, func001616]
{
    func001563();
};


// func001616
// function begins at statement 23628, parm_start=14656
// OP_STATE	9928	14656	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001616 = [61, func001617]
{
    func001563();
};


// func001617
// function begins at statement 23631, parm_start=14657
// OP_STATE	9930	14657	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001617 = [62, func001618]
{
    func001563();
};


// func001618
// function begins at statement 23634, parm_start=14658
// OP_STATE	6707	14658	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001618 = [63, func001619]
{
    func001563();
};


// func001619
// function begins at statement 23637, parm_start=14659
// OP_STATE	220	14659	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001619 = [64, func001620]
{
    func001563();
};


// func001620
// function begins at statement 23640, parm_start=14660
// OP_STATE	9934	14660	0
// OP_STORE_V	14661	4	0
// OP_CALL1	14588	0	0
// OP_DONE	0	0	0
void () func001620 = [65, func001621]
{
    func001675('100 100 200');
};


// func001621
// function begins at statement 23644, parm_start=14664
// OP_STATE	9936	14664	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001621 = [66, func001622]
{
    func001563();
};


// func001622
// function begins at statement 23647, parm_start=14665
// OP_STATE	9938	14665	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001622 = [67, func001623]
{
    func001563();
};


// func001623
// function begins at statement 23650, parm_start=14666
// OP_STATE	8193	14666	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001623 = [68, func001624]
{
    func001563();
};


// func001624
// function begins at statement 23653, parm_start=14667
// OP_STATE	8196	14667	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001624 = [69, func001625]
{
    func001563();
};


// func001625
// function begins at statement 23656, parm_start=14668
// OP_STATE	1536	14668	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001625 = [70, func001626]
{
    func001563();
};


// func001626
// function begins at statement 23659, parm_start=14669
// OP_STATE	8201	14669	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001626 = [71, func001627]
{
    func001563();
};


// func001627
// function begins at statement 23662, parm_start=14670
// OP_STATE	9943	14670	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001627 = [72, func001628]
{
    func001563();
};


// func001628
// function begins at statement 23665, parm_start=14671
// OP_STATE	5487	14671	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001628 = [73, func001629]
{
    func001563();
};


// func001629
// function begins at statement 23668, parm_start=14672
// OP_STATE	9946	14672	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001629 = [74, func001630]
{
    func001563();
};


// func001630
// function begins at statement 23671, parm_start=14673
// OP_STATE	9173	14673	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001630 = [75, func001631]
{
    func001563();
};


// func001631
// function begins at statement 23674, parm_start=14674
// OP_STATE	9949	14674	0
// OP_STORE_V	14675	4	0
// OP_CALL1	14588	0	0
// OP_DONE	0	0	0
void () func001631 = [76, func001632]
{
    func001675('100 -100 200');
};


// func001632
// function begins at statement 23678, parm_start=14678
// OP_STATE	9951	14678	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001632 = [77, func001633]
{
    func001563();
};


// func001633
// function begins at statement 23681, parm_start=14679
// OP_STATE	9953	14679	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001633 = [78, func001634]
{
    func001563();
};


// func001634
// function begins at statement 23684, parm_start=14680
// OP_STATE	9955	14620	0
// OP_CALL0	14589	0	0
// OP_DONE	0	0	0
void () func001634 = [79, func001612]
{
    func001563();
};


// func001635
// function begins at statement 23687, parm_start=14681
// OP_STATE	2805	14681	0
// OP_DONE	0	0	0
void () func001635 = [80, func001636]
{
};


// func001636
// function begins at statement 23689, parm_start=14682
// OP_STATE	8204	14682	0
// OP_DONE	0	0	0
void () func001636 = [81, func001637]
{
};


// func001637
// function begins at statement 23691, parm_start=14683
// OP_STATE	9959	14683	0
// OP_DONE	0	0	0
void () func001637 = [82, func001638]
{
};


// func001638
// function begins at statement 23693, parm_start=14684
// OP_STATE	9961	14684	0
// OP_DONE	0	0	0
void () func001638 = [83, func001639]
{
};


// func001639
// function begins at statement 23695, parm_start=14685
// OP_STATE	7694	14685	0
// OP_DONE	0	0	0
void () func001639 = [84, func001640]
{
};


// func001640
// function begins at statement 23697, parm_start=14686
// OP_STATE	9963	14686	0
// OP_DONE	0	0	0
void () func001640 = [85, func001641]
{
};


// func001641
// function begins at statement 23699, parm_start=14687
// OP_STATE	9965	14687	0
// OP_DONE	0	0	0
void () func001641 = [86, func001642]
{
};


// func001642
// function begins at statement 23701, parm_start=14688
// OP_STATE	9967	14688	0
// OP_DONE	0	0	0
void () func001642 = [87, func001643]
{
};


// func001643
// function begins at statement 23703, parm_start=14689
// OP_STATE	9969	14689	0
// OP_DONE	0	0	0
void () func001643 = [88, func001644]
{
};


// func001644
// function begins at statement 23705, parm_start=14690
// OP_STATE	9971	14620	0
// OP_DONE	0	0	0
void () func001644 = [89, func001612]
{
};


// func001645
// function begins at statement 23707, parm_start=14691
// OP_STATE	2658	14691	0
// OP_DONE	0	0	0
void () func001645 = [90, func001646]
{
};


// func001646
// function begins at statement 23709, parm_start=14692
// OP_STATE	9974	14692	0
// OP_DONE	0	0	0
void () func001646 = [91, func001647]
{
};


// func001647
// function begins at statement 23711, parm_start=14693
// OP_STATE	9976	14693	0
// OP_DONE	0	0	0
void () func001647 = [92, func001648]
{
};


// func001648
// function begins at statement 23713, parm_start=14694
// OP_STATE	9978	14694	0
// OP_DONE	0	0	0
void () func001648 = [93, func001649]
{
};


// func001649
// function begins at statement 23715, parm_start=14695
// OP_STATE	9979	14695	0
// OP_DONE	0	0	0
void () func001649 = [94, func001650]
{
};


// func001650
// function begins at statement 23717, parm_start=14696
// OP_STATE	9981	14696	0
// OP_DONE	0	0	0
void () func001650 = [95, func001651]
{
};


// func001651
// function begins at statement 23719, parm_start=14697
// OP_STATE	2658	14697	0
// OP_DONE	0	0	0
void () func001651 = [90, func001652]
{
};


// func001652
// function begins at statement 23721, parm_start=14698
// OP_STATE	9974	14698	0
// OP_DONE	0	0	0
void () func001652 = [91, func001653]
{
};


// func001653
// function begins at statement 23723, parm_start=14699
// OP_STATE	9976	14699	0
// OP_DONE	0	0	0
void () func001653 = [92, func001654]
{
};


// func001654
// function begins at statement 23725, parm_start=14700
// OP_STATE	9978	14620	0
// OP_DONE	0	0	0
void () func001654 = [93, func001612]
{
};


// func001655
// function begins at statement 23727, parm_start=14701
// OP_STATE	9983	14701	0
// OP_DONE	0	0	0
void () func001655 = [96, func001656]
{
};


// func001656
// function begins at statement 23729, parm_start=14702
// OP_STATE	9985	14702	0
// OP_DONE	0	0	0
void () func001656 = [97, func001657]
{
};


// func001657
// function begins at statement 23731, parm_start=14703
// OP_STATE	9987	14703	0
// OP_DONE	0	0	0
void () func001657 = [98, func001658]
{
};


// func001658
// function begins at statement 23733, parm_start=14704
// OP_STATE	9989	14704	0
// OP_DONE	0	0	0
void () func001658 = [99, func001659]
{
};


// func001659
// function begins at statement 23735, parm_start=14705
// OP_STATE	1997	14705	0
// OP_DONE	0	0	0
void () func001659 = [100, func001660]
{
};


// func001660
// function begins at statement 23737, parm_start=14706
// OP_STATE	8107	14706	0
// OP_DONE	0	0	0
void () func001660 = [101, func001661]
{
};


// func001661
// function begins at statement 23739, parm_start=14707
// OP_STATE	8109	14707	0
// OP_DONE	0	0	0
void () func001661 = [102, func001662]
{
};


// func001662
// function begins at statement 23741, parm_start=14708
// OP_STATE	8111	14708	0
// OP_DONE	0	0	0
void () func001662 = [103, func001663]
{
};


// func001663
// function begins at statement 23743, parm_start=14709
// OP_STATE	8114	14709	0
// OP_DONE	0	0	0
void () func001663 = [104, func001664]
{
};


// func001664
// function begins at statement 23745, parm_start=14710
// OP_STATE	9562	14710	0
// OP_DONE	0	0	0
void () func001664 = [105, func001665]
{
};


// func001665
// function begins at statement 23747, parm_start=14711
// OP_STATE	10006	14711	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	14712	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_DONE	0	0	0
void () func001665 = [48, func001666]
{
    sound(self, CHAN_VOICE, "boss1/death.wav", TRUE, ATTN_NORM);
};


// func001666
// function begins at statement 23755, parm_start=14713
// OP_STATE	10008	14713	0
// OP_DONE	0	0	0
void () func001666 = [49, func001667]
{
};


// func001667
// function begins at statement 23757, parm_start=14714
// OP_STATE	1470	14714	0
// OP_DONE	0	0	0
void () func001667 = [50, func001668]
{
};


// func001668
// function begins at statement 23759, parm_start=14715
// OP_STATE	9911	14715	0
// OP_DONE	0	0	0
void () func001668 = [51, func001669]
{
};


// func001669
// function begins at statement 23761, parm_start=14716
// OP_STATE	9913	14716	0
// OP_DONE	0	0	0
void () func001669 = [52, func001670]
{
};


// func001670
// function begins at statement 23763, parm_start=14717
// OP_STATE	9915	14717	0
// OP_DONE	0	0	0
void () func001670 = [53, func001671]
{
};


// func001671
// function begins at statement 23765, parm_start=14718
// OP_STATE	9917	14718	0
// OP_DONE	0	0	0
void () func001671 = [54, func001672]
{
};


// func001672
// function begins at statement 23767, parm_start=14719
// OP_STATE	9919	14719	0
// OP_DONE	0	0	0
void () func001672 = [55, func001673]
{
};


// func001673
// function begins at statement 23769, parm_start=14720
// OP_STATE	9921	14720	0
// OP_STORE_V	28	4	0
// OP_STORE_V	329	7	0
// OP_STORE_V	14603	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	304	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	323	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_LOAD_F	28	106	14721
// OP_STORE_V	14721	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_LOAD_F	28	107	14722
// OP_STORE_V	14722	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_LOAD_F	28	108	14723
// OP_STORE_V	14723	7	0
// OP_CALL2	500	0	0
// OP_DONE	0	0	0
void () func001673 = [56, func001674]
{
    sound(self, CHAN_BODY, "boss1/out1.wav", TRUE, ATTN_NORM);
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_LAVASPLASH);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
};


// func001674
// function begins at statement 23795, parm_start=14724
// OP_STATE	9921	14720	0
// OP_ADD_F	42	214	14724
// OP_STORE_F	14724	42	0
// OP_STORE_V	344	4	0
// OP_STORE_V	307	7	0
// OP_CALL2	496	0	0
// OP_CALL0	520	0	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_DONE	0	0	0
void () func001674 = [56, func001674]
{
    killed_monsters = killed_monsters + TRUE;
    WriteByte(MSG_ALL, SVC_KILLEDMONSTER);
    SUB_UseTargets();
    remove(self);
};


// func001675
// function begins at statement 23805, parm_start=14725
// OP_LOAD_ENT	28	181	14741
// OP_LOAD_V	14741	105	14742
// OP_LOAD_V	28	105	14745
// OP_SUB_V	14742	14745	14748
// OP_STORE_V	14748	4	0
// OP_CALL1	495	0	0
// OP_STORE_V	1	14728	0
// OP_STORE_V	14728	4	0
// OP_CALL1	452	0	0
// OP_LOAD_V	28	105	14751
// OP_MUL_FV	14725	59	14754
// OP_ADD_V	14751	14754	14757
// OP_MUL_FV	14726	65	14760
// OP_ADD_V	14757	14760	14763
// OP_MUL_FV	14727	2967	14766
// OP_ADD_V	14763	14766	14769
// OP_STORE_V	14769	14731	0
// OP_GT	354	214	14772
// OP_IFNOT	14772	18	0
// OP_LOAD_ENT	28	181	14773
// OP_LOAD_V	14773	105	14774
// OP_SUB_V	14774	14731	14777
// OP_STORE_V	14777	4	0
// OP_CALL1	462	0	0
// OP_DIV_F	1	540	14780
// OP_STORE_F	14780	14740	0
// OP_LOAD_ENT	28	181	14781
// OP_LOAD_V	14781	113	14782
// OP_STORE_V	14782	14734	0
// OP_STORE_F	213	14736	0
// OP_LOAD_ENT	28	181	14785
// OP_LOAD_V	14785	105	14786
// OP_MUL_FV	14740	14734	14789
// OP_ADD_V	14786	14789	14792
// OP_STORE_V	14792	14737	0
// OP_GOTO	4	0	0
// OP_LOAD_ENT	28	181	14795
// OP_LOAD_V	14795	105	14796
// OP_STORE_V	14796	14737	0
// OP_SUB_V	14737	14731	14799
// OP_STORE_V	14799	4	0
// OP_CALL1	459	0	0
// OP_STORE_V	1	14734	0
// OP_STORE_V	14731	4	0
// OP_STORE_V	14734	7	0
// OP_CALL2	6018	0	0
// OP_STORE_V	350	4	0
// OP_STORE_V	6694	7	0
// OP_CALL2	454	0	0
// OP_ADDRESS	350	121	14802
// OP_STOREP_V	14805	14802	0
// OP_STORE_V	350	4	0
// OP_STORE_V	286	7	0
// OP_STORE_V	286	10	0
// OP_CALL3	455	0	0
// OP_ADDRESS	350	113	14808
// OP_MUL_VF	14734	540	14811
// OP_STOREP_V	14811	14808	0
// OP_ADDRESS	350	146	14814
// OP_STOREP_FNC	3922	14814	0
// OP_STORE_V	28	4	0
// OP_STORE_V	326	7	0
// OP_STORE_V	14815	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_LOAD_ENT	28	181	14816
// OP_LOAD_F	14816	152	14817
// OP_LE	14817	213	14818
// OP_IFNOT	14818	2	0
// OP_CALL0	14621	0	0
// OP_DONE	0	0	0
void (vector globaldef004925) func001675 = 
{
    local vector globaldef004929;
    local vector globaldef004933;
    local vector globaldef004937;
    local vector globaldef004941;
    local float globaldef004945;
    globaldef004929 = vectoangles(self.enemy.origin - self.origin);
    makevectors(globaldef004929);
    globaldef004933 = ((self.origin + (globaldef004925_x * v_forward)) + (globaldef004925_y * v_right)) + (globaldef004925_z * '0 0 1');
    if(skill > TRUE)
    {
        globaldef004945 = (vlen(self.enemy.origin - globaldef004933)) / RA_MAXIDLETIME;
        globaldef004937 = self.enemy.velocity;
        globaldef004937_z = FALSE;
        globaldef004941 = self.enemy.origin + (globaldef004945 * globaldef004937);
    }
    else
    {
        globaldef004941 = self.enemy.origin;
    }
    
    globaldef004937 = normalize(globaldef004941 - globaldef004933);
    launch_spike(globaldef004933, globaldef004937);
    setmodel(newmis, "progs/lavaball.mdl");
    newmis.avelocity = '200 100 300';
    setsize(newmis, VEC_ORIGIN, VEC_ORIGIN);
    newmis.velocity = globaldef004937 * RA_MAXIDLETIME;
    newmis.touch = T_MissileTouch;
    sound(self, CHAN_WEAPON, "boss1/throw.wav", TRUE, ATTN_NORM);
    
    if(self.enemy.health <= FALSE)
    {
        func001581();
    }
    
};


// func001676
// function begins at statement 23877, parm_start=14820
// OP_ADDRESS	28	104	14820
// OP_STOREP_F	240	14820	0
// OP_ADDRESS	28	103	14821
// OP_STOREP_F	229	14821	0
// OP_ADDRESS	28	163	14822
// OP_STOREP_F	250	14822	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14823	7	0
// OP_CALL2	454	0	0
// OP_STORE_V	28	4	0
// OP_STORE_V	14824	7	0
// OP_STORE_V	14827	10	0
// OP_CALL3	455	0	0
// OP_EQ_F	354	213	14830
// OP_IFNOT	14830	4	0
// OP_ADDRESS	28	152	14831
// OP_STOREP_F	214	14831	0
// OP_GOTO	3	0	0
// OP_ADDRESS	28	152	14832
// OP_STOREP_F	228	14832	0
// OP_ADDRESS	28	181	14833
// OP_STOREP_ENT	351	14833	0
// OP_STORE_V	342	4	0
// OP_STORE_V	304	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_STORE_V	323	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	342	4	0
// OP_LOAD_F	28	106	14834
// OP_STORE_V	14834	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_LOAD_F	28	107	14835
// OP_STORE_V	14835	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	342	4	0
// OP_LOAD_F	28	108	14836
// OP_STORE_V	14836	7	0
// OP_CALL2	500	0	0
// OP_ADDRESS	28	192	14837
// OP_STOREP_F	2323	14837	0
// OP_CALL0	14601	0	0
// OP_DONE	0	0	0
void () func001676 = 
{
    self.solid = SOLID_SLIDEBOX;
    self.movetype = MOVETYPE_STEP;
    self.takedamage = DAMAGE_NO;
    setmodel(self, "progs/boss.mdl");
    setsize(self, '-128 -128 -24', '128 128 256');
    if(skill == FALSE)
    {
        self.health = TRUE;
    }
    else
    {
        self.health = MOVETYPE_WALK;
    }
    
    self.enemy = activator;
    WriteByte(MSG_BROADCAST, SVC_TEMPENTITY);
    WriteByte(MSG_BROADCAST, TE_LAVASPLASH);
    WriteCoord(MSG_BROADCAST, self.origin_x);
    WriteCoord(MSG_BROADCAST, self.origin_y);
    WriteCoord(MSG_BROADCAST, self.origin_z);
    self.yaw_speed = 20;
    func001564();
};


// monster_boss
// function begins at statement 23921, parm_start=14839
// OP_IFNOT	35	4	0
// OP_STORE_V	28	4	0
// OP_CALL1	465	0	0
// OP_RETURN	0	0	0
// OP_STORE_V	14823	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	6694	4	0
// OP_CALL1	470	0	0
// OP_STORE_V	5359	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14603	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14605	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	6659	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14815	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14839	4	0
// OP_CALL1	469	0	0
// OP_STORE_V	14712	4	0
// OP_CALL1	469	0	0
// OP_ADD_F	40	214	14840
// OP_STORE_F	14840	40	0
// OP_ADDRESS	28	147	14841
// OP_STOREP_FNC	14819	14841	0
// OP_DONE	0	0	0
void () monster_boss = 
{
    
    if(deathmatch)
    {
        remove(self);
        return;
    }
    
    precache_model("progs/boss.mdl");
    precache_model("progs/lavaball.mdl");
    precache_sound("weapons/rocket1i.wav");
    precache_sound("boss1/out1.wav");
    precache_sound("boss1/sight1.wav");
    precache_sound("misc/power.wav");
    precache_sound("boss1/throw.wav");
    precache_sound("boss1/pain.wav");
    precache_sound("boss1/death.wav");
    total_monsters = total_monsters + TRUE;
    self.use = func001676;
};

entity globaldef004954;
entity globaldef004955;
float globaldef004956;

// func001678
// function begins at statement 23948, parm_start=14846
// OP_GE	31	14844	14852
// OP_IFNOT	14852	6	0
// OP_STORE_ENT	14842	28	0
// OP_CALL0	10226	0	0
// OP_STORE_ENT	14843	28	0
// OP_CALL0	10226	0	0
// OP_RETURN	0	0	0
// OP_LOAD_V	14842	134	14853
// OP_LOAD_V	14842	138	14856
// OP_ADD_V	14853	14856	14859
// OP_MUL_VF	14859	539	14862
// OP_STORE_V	14862	14846	0
// OP_LOAD_F	14842	97	14865
// OP_SUB_F	14865	218	14866
// OP_STORE_F	14866	14848	0
// OP_LOAD_V	14843	134	14867
// OP_LOAD_V	14843	138	14870
// OP_ADD_V	14867	14870	14873
// OP_MUL_VF	14873	539	14876
// OP_STORE_V	14876	14849	0
// OP_LOAD_F	14843	97	14879
// OP_SUB_F	14879	218	14880
// OP_STORE_F	14880	14851	0
// OP_SUB_V	14849	14846	14881
// OP_STORE_V	14881	4	0
// OP_CALL1	459	0	0
// OP_MUL_VF	1	1997	14884
// OP_SUB_V	14849	14884	14887
// OP_STORE_V	14887	14849	0
// OP_ADDRESS	28	150	14890
// OP_ADD_F	31	3036	14891
// OP_STOREP_F	14891	14890	0
// OP_ADDRESS	28	148	14892
// OP_STOREP_FNC	14845	14892	0
// OP_STORE_V	344	4	0
// OP_STORE_V	304	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	322	7	0
// OP_CALL2	496	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	30	7	0
// OP_CALL2	503	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	14846	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	14847	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	14848	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	14849	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	14850	7	0
// OP_CALL2	500	0	0
// OP_STORE_V	344	4	0
// OP_STORE_V	14851	7	0
// OP_CALL2	500	0	0
// OP_DONE	0	0	0
void () func001678 = 
{
    local vector globaldef004958;
    local vector globaldef004962;
    
    if(time >= globaldef004956)
    {
        self = globaldef004954;
        door_go_down();
        self = globaldef004955;
        door_go_down();
        return;
    }
    
    globaldef004958 = (globaldef004954.mins + globaldef004954.maxs) * RA_PLAYERSTATTIME;
    globaldef004958_z = globaldef004954.absmin_z - FL_INWATER;
    globaldef004962 = (globaldef004955.mins + globaldef004955.maxs) * RA_PLAYERSTATTIME;
    globaldef004962_z = globaldef004955.absmin_z - FL_INWATER;
    globaldef004962 = globaldef004962 - ((normalize(globaldef004962 - globaldef004958)) * 100);
    self.nextthink = time + 0.1;
    self.think = func001678;
    WriteByte(MSG_ALL, SVC_TEMPENTITY);
    WriteByte(MSG_ALL, TE_LIGHTNING3);
    WriteEntity(MSG_ALL, world);
    WriteCoord(MSG_ALL, globaldef004958_x);
    WriteCoord(MSG_ALL, globaldef004958_y);
    WriteCoord(MSG_ALL, globaldef004958_z);
    WriteCoord(MSG_ALL, globaldef004962_x);
    WriteCoord(MSG_ALL, globaldef004962_y);
    WriteCoord(MSG_ALL, globaldef004962_z);
};


// func001679
// function begins at statement 24010, parm_start=14894
// OP_ADD_F	31	214	14894
// OP_GE	14844	14894	14895
// OP_IFNOT	14895	2	0
// OP_RETURN	0	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	196	7	0
// OP_STORE_V	14896	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	14842	0
// OP_STORE_V	14842	4	0
// OP_STORE_V	196	7	0
// OP_STORE_V	14896	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	14843	0
// OP_NOT_ENT	14842	0	14897
// OP_NOT_ENT	14843	0	14898
// OP_OR	14897	14898	14899
// OP_IFNOT	14899	4	0
// OP_STORE_V	14900	4	0
// OP_CALL1	473	0	0
// OP_RETURN	0	0	0
// OP_LOAD_F	14842	438	14901
// OP_NE_F	14901	282	14902
// OP_LOAD_F	14842	438	14903
// OP_NE_F	14903	283	14904
// OP_AND	14902	14904	14905
// OP_LOAD_F	14843	438	14906
// OP_NE_F	14906	282	14907
// OP_LOAD_F	14843	438	14908
// OP_NE_F	14908	283	14909
// OP_AND	14907	14909	14910
// OP_OR	14905	14910	14911
// OP_LOAD_F	14842	438	14912
// OP_LOAD_F	14843	438	14913
// OP_NE_F	14912	14913	14914
// OP_OR	14911	14914	14915
// OP_IFNOT	14915	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	14842	150	14916
// OP_STOREP_F	276	14916	0
// OP_ADDRESS	14843	150	14917
// OP_STOREP_F	276	14917	0
// OP_ADD_F	31	214	14918
// OP_STORE_F	14918	14844	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	6659	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_CALL0	14845	0	0
// OP_STORE_V	30	4	0
// OP_STORE_V	129	7	0
// OP_STORE_V	14919	10	0
// OP_CALL3	468	0	0
// OP_STORE_ENT	1	28	0
// OP_NOT_ENT	28	0	14920
// OP_IFNOT	14920	2	0
// OP_RETURN	0	0	0
// OP_ADDRESS	28	181	14921
// OP_STOREP_ENT	351	14921	0
// OP_LOAD_F	14842	438	14922
// OP_EQ_F	14922	282	14923
// OP_LOAD_F	28	152	14924
// OP_GT	14924	213	14925
// OP_AND	14923	14925	14926
// OP_IFNOT	14926	25	0
// OP_STORE_V	28	4	0
// OP_STORE_V	327	7	0
// OP_STORE_V	14839	10	0
// OP_STORE_V	214	13	0
// OP_STORE_V	331	16	0
// OP_CALL5	458	0	0
// OP_ADDRESS	28	152	14927
// OP_LOAD_F	28	152	14928
// OP_SUB_F	14928	214	14929
// OP_STOREP_F	14929	14927	0
// OP_LOAD_F	28	152	14930
// OP_GE	14930	216	14931
// OP_IFNOT	14931	3	0
// OP_CALL0	14680	0	0
// OP_GOTO	10	0	0
// OP_LOAD_F	28	152	14932
// OP_EQ_F	14932	214	14933
// OP_IFNOT	14933	3	0
// OP_CALL0	14690	0	0
// OP_GOTO	5	0	0
// OP_LOAD_F	28	152	14934
// OP_EQ_F	14934	213	14935
// OP_IFNOT	14935	2	0
// OP_CALL0	14700	0	0
// OP_DONE	0	0	0
void () func001679 = 
{
    
    if(globaldef004956 >= (time + TRUE))
    {
        return;
    }
    
    globaldef004954 = find(world, target, "lightning");
    globaldef004955 = find(globaldef004954, target, "lightning");
    
    if(!globaldef004954 || !globaldef004955)
    {
        dprint("missing lightning targets\n");
        return;
    }
    
    
    if((((globaldef004954.state != STATE_TOP) && (globaldef004954.state != STATE_BOTTOM)) || ((globaldef004955.state != STATE_TOP) && (globaldef004955.state != STATE_BOTTOM))) || (globaldef004954.state != globaldef004955.state))
    {
        return;
    }
    
    globaldef004954.nextthink = CONTENT_EMPTY;
    globaldef004955.nextthink = CONTENT_EMPTY;
    globaldef004956 = time + TRUE;
    sound(self, CHAN_VOICE, "misc/power.wav", TRUE, ATTN_NORM);
    func001678();
    self = find(world, classname, "monster_boss");
    
    if(!self)
    {
        return;
    }
    
    self.enemy = activator;
    
    if((globaldef004954.state == STATE_TOP) && (self.health > FALSE))
    {
        sound(self, CHAN_VOICE, "boss1/pain.wav", TRUE, ATTN_NORM);
        self.health = self.health - TRUE;
        if(self.health >= FL_SWIM)
        {
            func001635();
        }
        else
        {
            if(self.health == TRUE)
            {
                func001645();
            }
            else
            {
                
                if(self.health == FALSE)
                {
                    func001655();
                }
                
            }
            
        }
        
    }
    
};


// event_lightning
// function begins at statement 24102, parm_start=14937
// OP_ADDRESS	28	147	14937
// OP_STOREP_FNC	14893	14937	0
// OP_DONE	0	0	0
void () event_lightning = 
{
    self.use = func001679;
};

