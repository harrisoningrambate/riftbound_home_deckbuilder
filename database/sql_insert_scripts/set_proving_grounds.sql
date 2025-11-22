-- set_id = 1
INSERT INTO card_set VALUES (1, 'origins-proving grounds', 'OGS');

-- new tags in set (starting tag_id is 1);
INSERT INTO tag VALUES (1, 'annie');
INSERT INTO tag VALUES (2, 'noxus');
INSERT INTO tag VALUES (3, 'master yi');
INSERT INTO tag VALUES (4, 'ionia');
INSERT INTO tag VALUES (5, 'bird');
INSERT INTO tag VALUES (6, 'lux');
INSERT INTO tag VALUES (7, 'demacia');
INSERT INTO tag VALUES (8, 'garen');
INSERT INTO tag VALUES (9, 'elite');

-- card_id = 1
INSERT INTO card VALUES (1, 1, '001', 'annie fiery', 'epic', 5);
INSERT INTO card_type VALUES (1, 'champion');
INSERT INTO card_type VALUES (1, 'unit');
INSERT INTO card_domain VALUES (1, 'fury');
INSERT INTO card_tag VALUES (1, 1);
INSERT INTO card_tag VALUES (1, 2);

-- card_id = 2
INSERT INTO card VALUES (2, 1, '002', 'firestorm', 'uncommon', 6);
INSERT INTO card_type VALUES (2, 'spell');
INSERT INTO card_domain VALUES (2, 'fury');

-- card_id = 3
INSERT INTO card VALUES (3, 1, '003', 'incinerate', 'common', 2);
INSERT INTO card_type VALUES (3, 'spell');
INSERT INTO card_domain VALUES (3, 'fury');

-- card_id = 4
INSERT INTO card VALUES (4, 1, '004', 'master yi meditative', 'rare', 5);
INSERT INTO card_type VALUES (4, 'champion');
INSERT INTO card_type VALUES (4, 'unit');
INSERT INTO card_domain VALUES (4, 'calm');
INSERT INTO card_tag VALUES (4, 3);
INSERT INTO card_tag VALUES (4, 4);

-- card_id 5
INSERT INTO card VALUES (5, 1, '005', 'zephyr sage', 'uncommon', 6);
INSERT INTO card_type VALUES (5, 'unit');
INSERT INTO card_domain VALUES (5, 'calm');
INSERT INTO card_tag VALUES (5, 4);
INSERT INTO card_tag VALUES (5, 5);

-- card_id 6
INSERT INTO card VALUES (6, 1, '006', 'lux illuminated', 'rare', 6);
INSERT INTO card_type VALUES (6, 'champion');
INSERT INTO card_type VALUES (6, 'unit');
INSERT INTO card_domain VALUES (6, 'mind');
INSERT INTO card_tag VALUES (6, 6);
INSERT INTO card_tag VALUES (6, 7);

-- card_id 7
INSERT INTO card VALUES (7, 1, '007', 'garen rugged', 'rare', 6);
INSERT INTO card_type VALUES (7, 'champion');
INSERT INTO card_type VALUES (7, 'unit');
INSERT INTO card_domain VALUES (7, 'body');
INSERT INTO card_tag VALUES (7, 8);
INSERT INTO card_tag VALUES (7, 7);
INSERT INTO card_tag VALUES (7, 9);

-- card_id 8
INSERT INTO card VALUES (8, 1, '008', "gentleman's duel", 'common', 6);
INSERT INTO card_type VALUES (8, 'spell');
INSERT INTO card_domain VALUES (8, 'body');

-- card_id 9
INSERT INTO card VALUES (9, 1, '009', 'master yi honed', 'epic', 7);
INSERT INTO card_type VALUES (9, 'champion');
INSERT INTO card_type VALUES (9, 'unit');
INSERT INTO card_domain VALUES (9, 'body');
INSERT INTO card_tag VALUES (9, 3);
INSERT INTO card_tag VALUES (9, 4);

-- card_id 10
INSERT INTO card VALUES (10, 1, '010', 'annie stubborn', 'rare', 4);
INSERT INTO card_type VALUES (10, 'champion');
INSERT INTO card_type VALUES (10, 'unit');
INSERT INTO card_domain VALUES (10, 'chaos');
INSERT INTO card_tag VALUES (10, 1);
INSERT INTO card_tag VALUES (10, 2);

-- card_id 11
INSERT INTO card VALUES (11, 1, '011', 'flash', 'common', 2);
INSERT INTO card_type VALUES (11, 'spell');
INSERT INTO card_domain VALUES (11, 'chaos');

-- card_id 12
INSERT INTO card VALUES (12, 1, '012', 'blast of power', 'common', 6);
INSERT INTO card_type VALUES (12, 'spell');
INSERT INTO card_domain VALUES (12, 'order');

-- card_id 13
INSERT INTO card VALUES (13, 1, '013', 'garen commander', 'epic', 6);
INSERT INTO card_type VALUES (13, 'champion');
INSERT INTO card_type VALUES (13, 'unit');
INSERT INTO card_domain VALUES (13, 'order');
INSERT INTO card_tag VALUES (13, 8);
INSERT INTO card_tag VALUES (13, 7);
INSERT INTO card_tag VALUES (13, 9);

-- card_id 14
INSERT INTO card VALUES (14, 1, '014', 'lux crownguard', 'epic', 4);
INSERT INTO card_type VALUES (14, 'champion');
INSERT INTO card_type VALUES (14, 'unit');
INSERT INTO card_domain VALUES (14, 'order');
INSERT INTO card_tag VALUES (14, 6);
INSERT INTO card_tag VALUES (14, 7);

-- card_id 15
INSERT INTO card VALUES (15, 1, '015', 'recruit the vanguard', 'uncommon', 6);
INSERT INTO card_type VALUES (15, 'spell');
INSERT INTO card_domain VALUES (15, 'order');

-- card_id 16
INSERT INTO card VALUES (16, 1, '016', 'vanguard attendant', 'common', 6);
INSERT INTO card_type VALUES (16, 'unit');
INSERT INTO card_domain VALUES (16, 'order');
INSERT INTO card_tag VALUES (16, 9);
INSERT INTO card_tag VALUES (16, 7);

-- card_id 17
INSERT INTO card VALUES (17, 1, '017', 'dark child-starter', 'rare', NULL);
INSERT INTO card_type VALUES (17, 'legend');
INSERT INTO card_domain VALUES (17, 'fury');
INSERT INTO card_domain VALUES (17, 'chaos');
INSERT INTO card_tag VALUES (17, 1);

-- card_id 18
INSERT INTO card VALUES (18, 1, '018', 'tibbers', 'epic', 8);
INSERT INTO card_type VALUES (18, 'signature');
INSERT INTO card_type VALUES (18, 'unit');
INSERT INTO card_domain VALUES (18, 'fury');
INSERT INTO card_domain VALUES (18, 'chaos');
INSERT INTO card_tag VALUES (18, 1);

-- card_id 19
INSERT INTO card VALUES (19, 1, '019', 'wuju bladesman-starter', 'rare', NULL);
INSERT INTO card_type VALUES (19, 'legend');
INSERT INTO card_domain VALUES (19, 'calm');
INSERT INTO card_domain VALUES (19, 'body');
INSERT INTO card_tag VALUES (19, 3);

-- card_id 20
INSERT INTO card VALUES (20, 1, '020', 'highlander', 'epic', 4);
INSERT INTO card_type VALUES (20, 'signature');
INSERT INTO card_type VALUES (20, 'spell');
INSERT INTO card_domain VALUES (20, 'calm');
INSERT INTO card_domain VALUES (20, 'body');
INSERT INTO card_tag VALUES (20, '3');

-- card_id 21
INSERT INTO card VALUES (21, 1, '021', 'lady of luminosity-starter', 'rare', NULL);
INSERT INTO card_type VALUES (21, 'legend');
INSERT INTO card_domain VALUES (21, 'mind');
INSERT INTO card_domain VALUES (21, 'order');
INSERT INTO card_tag VALUES (21, 6);

-- card_id 22
INSERT INTO card VALUES (22, 1, '022', 'final spark', 'epic', 8);
INSERT INTO card_type VALUES (22, 'signature');
INSERT INTO card_type VALUES (22, 'spell');
INSERT INTO card_domain VALUES (22, 'mind');
INSERT INTO card_domain VALUES (22, 'order');
INSERT INTO card_tag VALUES (22, 6);

-- card_id 23
INSERT INTO card VALUES (23, 1, '023', 'might of demacia-starter', 'rare', NULL);
INSERT INTO card_type VALUES (23, 'legend');
INSERT INTO card_domain VALUES (23, 'body');
INSERT INTO card_domain VALUES (23, 'order');
INSERT INTO card_tag VALUES (23, 8);

-- card_id 24
INSERT INTO card VALUES (24, 1, '024', 'decisive strike', 'epic', 5);
INSERT INTO card_type VALUES (24, 'signature');
INSERT INTO card_type VALUES (24, 'spell');
INSERT INTO card_domain VALUES (24, 'body');
INSERT INTO card_domain VALUES (24, 'order');
INSERT INTO card_tag VALUES (24, 8);
