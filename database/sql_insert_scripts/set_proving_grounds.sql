-- card_id = 1
INSERT INTO card (set_name, set_number, card_name, type, rarity, energy)
VALUES ('proving grounds', '001', 'annie fiery', 'champion unit', 'epic', 5);
INSERT INTO card_domain VALUES (1, 'fury');
INSERT INTO card_tag VALUES (1, 'annie');
INSERT INTO card_tag VALUES (1, 'noxus');

-- card_id = 2
INSERT INTO card (set_name, set_number, card_name, type, rarity, energy)
VALUES ('proving grounds', '002', 'firestorm', 'spell', 'uncommon', 6);
INSERT INTO card_domain VALUES (2, 'fury');

-- card_id = 3
INSERT INTO card (set_name, set_number, card_name, type, rarity, energy)
VALUES ('proving grounds', '003', 'incinerate', 'spell', 'common', 2);
INSERT INTO card_domain VALUES (3, 'fury');

-- card_id = 4
INSERT INTO card (set_name, set_number, card_name, type, rarity, energy)
VALUES ('proving grounds', '004', 'master yi meditative', 'champion unit', 'rare', 5);
INSERT INTO card_domain VALUES (4, 'calm');
INSERT INTO card_tag VALUES (4, 'master yi');
INSERT INTO card_tag VALUES (4, 'ionia');
