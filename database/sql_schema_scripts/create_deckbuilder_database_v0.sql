DROP DATABASE IF EXISTS deckbuilder;
CREATE DATABASE deckbuilder;
USE deckbuilder;

-- a card_set should be identifiable by its set_id or its name or its abbreviatted name
CREATE TABLE card_set (
	set_id		INT				AUTO_INCREMENT,
	name		VARCHAR(25)		NOT NULL UNIQUE,
	abrv		CHAR(3)			NOT NULL UNIQUE,
	CONSTRAINT setPK
		PRIMARY KEY (set_id)
) ENGINE INNODB
;

-- a card should be identifiable by its surragate card_id or by with its set_id and set_number together
CREATE TABLE card (
	card_id		INT				AUTO_INCREMENT,
	set_id		INT				NOT NULL,
	set_number	VARCHAR(4)		NOT NULL,
	card_name	VARCHAR(30)		NOT NULL,
	rarity		ENUM('common',
		'uncommon',
		'rare',
		'epic',
		'showcase',
		'signed')				NOT NULL,
	energy		INT,
	UNIQUE (set_id, set_number),
	CONSTRAINT cardPK
		PRIMARY KEY (card_id),
	CONSTRAINT card_fk_card_set
		FOREIGN KEY (set_id)
		REFERENCES card_set (set_id)
) ENGINE INNODB
;

CREATE TABLE card_type (
	card_id		INT				NOT NULL,
	type		ENUM('legend',
		'champion',
		'signature',
		'spell',
		'unit',
		'gear',
		'rune',
		'battlefield',
		'token')				NOT NULL,
	CONSTRAINT card_typePK
		PRIMARY KEY (card_id, type),
	CONSTRAINT card_type_fk_card
		FOREIGN KEY (card_id)
		REFERENCES card (card_id)
) ENGINE INNODB
;

CREATE TABLE card_domain (
	card_id		INT				NOT NULL,
	domain		ENUM('fury',
		'calm',
		'mind',
		'body',
		'chaos',
		'order')				NOT NULL,
	CONSTRAINT card_domainPK
		PRIMARY KEY (card_id, domain),
	CONSTRAINT card_domain_fk_card
		FOREIGN KEY (card_id)
		REFERENCES card (card_id)
) ENGINE INNODB
;

CREATE TABLE tag (
	tag_id		INT				AUTO_INCREMENT,
	tag_name	VARCHAR(20)		NOT NULL UNIQUE,
	CONSTRAINT tagPK
		PRIMARY KEY (tag_id)
) ENGINE INNODB
;

CREATE TABLE card_tag (
	card_id		INT				NOT NULL,
	tag_id		INT				NOT NULL,
	CONSTRAINT card_tagPK
		PRIMARY KEY (card_id, tag_id),
	CONSTRAINT card_tag_fk_card
		FOREIGN KEY (card_id)
		REFERENCES card (card_id),
	CONSTRAINT card_tag_fk_tag
		FOREIGN KEY (tag_id)
		REFERENCES tag (tag_id)
) ENGINE INNODB
;

CREATE TABLE location (
	location_id	INT				AUTO_INCREMENT,
	tag_name	VARCHAR(30)		NOT NULL UNIQUE,
	CONSTRAINT locationPK
		PRIMARY KEY (location_id)
) ENGINE INNODB
;

CREATE TABLE card_location (
	card_id		INT				NOT NULL,
	location_id	INT				NOT NULL,
	quantity	INT				NOT NULL,
	CONSTRAINT card_locationPK
		PRIMARY KEY (card_id, location_id),
	CONSTRAINT card_location_fk_card
		FOREIGN KEY (card_id)
		REFERENCES card (card_id),
	CONSTRAINT card_location_fk_location
		FOREIGN KEY (location_id)
		REFERENCES location (location_id)
) ENGINE INNODB
;

CREATE TABLE user (
	user_id		INT				AUTO_INCREMENT,
	username	VARCHAR(30)		NOT NULL UNIQUE,
	password	VARCHAR(30)		NOT NULL,
	PRIMARY KEY (user_id)
) ENGINE INNODB
;

CREATE TABLE deck (
	deck_id		INT				AUTO_INCREMENT,
	user_id		INT				NOT NULL,
	deck_name	VARCHAR(20)		NOT NULL,
	UNIQUE (user_id, deck_name),
	CONSTRAINT deckPK
		PRIMARY KEY (deck_id),
	CONSTRAINT deck_fk_user
		FOREIGN KEY (user_id)
		REFERENCES user (user_id)
) ENGINE INNODB
;

CREATE TABLE deck_line (
	deck_id		INT				NOT NULL,
	card_id		INT				NOT NULL,
	quantity	INT				NOT NULL,	
	CONSTRAINT deck_linePK
		PRIMARY KEY (deck_id, card_id),
	CONSTRAINT deck_line_fk_deck
		FOREIGN KEY (deck_id)
		REFERENCES deck (deck_id),
	CONSTRAINT deck_line_fk_card
		FOREIGN KEY (card_id)
		REFERENCES card (card_id)
) ENGINE INNODB
;
