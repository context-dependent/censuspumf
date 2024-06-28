/* The following line should contain the complete path and name of your raw data file */
FILENAME datafile '\\....\....\....\data_donnees_2021_ind.dat';

/* The following line should contain the directory in which you wish your SAS file to be stored */
libname library '\\....\....\....\sas';

	/* The following line contains the name (without the extension) for your SAS dataset */
%LET dataset = PUMF2021;

proc format;
	value ABOID
		1 = "First Nations (North American Indian)"
		2 = "Métis"
		3 = "Inuk (Inuit)"
		4 = "Multiple Indigenous responses"
		5 = "Indigenous responses not included elsewhere"
		6 = "Non-Indigenous identity"
	;
	value AGEGRP
		1 = "0 to 4 years"
		2 = "5 to 6 years"
		3 = "7 to 9 years"
		4 = "10 to 11 years"
		5 = "12 to 14 years"
		6 = "15 to 17 years"
		7 = "18 to 19 years"
		8 = "20 to 24 years"
		9 = "25 to 29 years"
		10 = "30 to 34 years"
		11 = "35 to 39 years"
		12 = "40 to 44 years"
		13 = "45 to 49 years"
		14 = "50 to 54 years"
		15 = "55 to 59 years"
		16 = "60 to 64 years"
		17 = "65 to 69 years"
		18 = "70 to 74 years"
		19 = "75 to 79 years"
		20 = "80 to 84 years"
		21 = "85 years and over"
		88 = "Not available"
	;
	value AGEIMM
		1 = "0 to 4 years"
		2 = "5 to 9 years"
		3 = "10 to 14 years"
		4 = "15 to 19 years"
		5 = "20 to 24 years"
		6 = "25 to 29 years"
		7 = "30 to 34 years"
		8 = "35 to 39 years"
		9 = "40 to 44 years"
		10 = "45 to 49 years"
		11 = "50 to 54 years"
		12 = "55 to 59 years"
		13 = "60 years and over"
		88 = "Not available"
		99 = "Not applicable"
	;
	value ATTSCH
		1 = "Did not attend school"
		2 = "Elementary or secondary school"
		3 = "College, CEGEP, trade school or other non-university institution"
		4 = "University"
		5 = "Multiple responses"
		9 = "Not applicable"
		8 = "Not available"
	;
	value BedRm
		0 = "No bedroom"
		1 = "1 bedroom"
		2 = "2 bedrooms"
		3 = "3 bedrooms"
		4 = "4 bedrooms"
		5 = "5 bedrooms or more"
		8 = "Not available"
	;
	value BFNMEMB
		1 = "Member of a First Nation or Indian band"
		0 = "Not a member of a First Nation or Indian band"
	;
	value CFInc
		1 = "Under $2,000"
		2 = "$2,000 to $4,999"
		3 = "$5,000 to $6,999"
		4 = "$7,000 to $9,999"
		5 = "$10,000 to $11,999"
		6 = "$12,000 to $14,999"
		7 = "$15,000 to $16,999"
		8 = "$17,000 to $19,999"
		9 = "$20,000 to $24,999"
		10 = "$25,000 to $29,999"
		11 = "$30,000 to $34,999"
		12 = "$35,000 to $39,999"
		13 = "$40,000 to $44,999"
		14 = "$45,000 to $49,999"
		15 = "$50,000 to $54,999"
		16 = "$55,000 to $59,999"
		17 = "$60,000 to $64,999"
		18 = "$65,000 to $69,999"
		19 = "$70,000 to $74,999"
		20 = "$75,000 to $79,999"
		21 = "$80,000 to $84,999"
		22 = "$85,000 to $89,999"
		23 = "$90,000 to $94,999"
		24 = "$95,000 to $99,999"
		25 = "$100,000 to $109,999"
		26 = "$110,000 to $119,999"
		27 = "$120,000 to $129,999"
		28 = "$130,000 to $139,999"
		29 = "$140,000 to $149,999"
		30 = "$150,000 to $174,999"
		31 = "$175,000 to $199,999"
		32 = "$200,000 to $249,999"
		33 = "$250,000 and over"
		88 = "Not available "
	;
	value CFInc_AT
		1 = "Under $2,000"
		2 = "$2,000 to $4,999"
		3 = "$5,000 to $6,999"
		4 = "$7,000 to $9,999"
		5 = "$10,000 to $11,999"
		6 = "$12,000 to $14,999"
		7 = "$15,000 to $16,999"
		8 = "$17,000 to $19,999"
		9 = "$20,000 to $24,999"
		10 = "$25,000 to $29,999"
		11 = "$30,000 to $34,999"
		12 = "$35,000 to $39,999"
		13 = "$40,000 to $44,999"
		14 = "$45,000 to $49,999"
		15 = "$50,000 to $54,999"
		16 = "$55,000 to $59,999"
		17 = "$60,000 to $64,999"
		18 = "$65,000 to $69,999"
		19 = "$70,000 to $74,999"
		20 = "$75,000 to $79,999"
		21 = "$80,000 to $84,999"
		22 = "$85,000 to $89,999"
		23 = "$90,000 to $94,999"
		24 = "$95,000 to $99,999"
		25 = "$100,000 to $109,999"
		26 = "$110,000 to $119,999"
		27 = "$120,000 to $134,999"
		28 = "$135,000 to $149,999"
		29 = "$150,000 to $174,999"
		30 = "$175,000 to $199,999"
		31 = "$200,000 to $249,999"
		32 = "$250,000 and over"
		88 = "Not available "
	;
	value CfSize
		1 = "Person not in a census family"
		2 = "2 persons"
		3 = "3 persons"
		4 = "4 persons"
		5 = "5 persons"
		6 = "6 persons"
		7 = "7 persons or more"
		8 = "Not available"
	;
	value CFSTAT
		1 = "Married spouse or common-law partner without children"
		2 = "Married spouse or common-law partner with children"
		3 = "Parent in a one-parent family"
		4 = "Child of a couple"
		5 = "Child of a parent in a one-parent family"
		6 = "Person living alone"
		7 = "Person not in a census family living with non-relatives only"
		8 = "Person not in a census family but living with other relatives"
	;
	value CIP2021_
		1 = "01 Education"
		2 = "02 Visual and performing arts, and communications technologies"
		3 = "03 Humanities"
		4 = "04 Social and behavioural sciences and law"
		5 = "05 Business, management and public administration"
		6 = "06 Physical and life sciences and technologies"
		7 = "07 Mathematics, computer and information sciences"
		8 = "08 Architecture, engineering, and related trades"
		9 = "09 Agriculture, natural resources and conservation"
		10 = "10 Health and related fields"
		11 = "11 Personal, protective and transportation services"
		13 = "No postsecondary certificate, diploma or degree"
		88 = "Not available"
		99 = "Not applicable"
		12 = "12 Other"
	;
	value CIP2021_STEM_SUM
		1 = "Science and science technology"
		2 = "Engineering and engineering technology"
		3 = "Mathematics and computer and information sciences"
		4 = "Business and administration"
		5 = "Arts and humanities"
		6 = "Social and behavioural sciences"
		7 = "Legal professions and studies"
		8 = "Health care"
		9 = "Education and teaching"
		10 = "Trades, services, natural resources and conservation"
		11 = "No postsecondary certificate, diploma or degree"
		88 = "Not available"
		99 = "Not applicable"
	;
	value Citizen
		1 = "Canadian citizens by birth"
		2 = "Canadian citizens by naturalization"
		3 = "Not a Canadian citizen"
	;
	value CitOth
		1 = "United States"
		2 = "Other Americas"
		3 = "United Kingdom - British citizen"
		4 = "Other Europe"
		5 = "Africa"
		6 = "West Central Asia and the Middle East"
		7 = "China, People's Republic of"
		8 = "Other Eastern Asia"
		9 = "Philippines"
		10 = "Other Southeast Asia"
		11 = "India"
		12 = "Other Southern Asia"
		13 = "Oceania and other"
		14 = "Two other countries"
		88 = "Not available"
		15 = "No other country of citizenship"
	;
	value CMA 
        205 = "Halifax"
		399 = "Moncton –  Saint John"
		421 = "Québec"
		462 = "Montréal"
		499 = "Sherbrooke – Trois-Rivières"
		505 = "Ottawa - Gatineau"
		532 = "Oshawa"
		535 = "Toronto"
		537 = "Hamilton"
		539 = "St. Catharines – Niagara"
		541 = "Kitchener –  Cambridge –  Waterloo"
		555 = "London"
		559 = "Windsor"
		577 = "Brantford – Guelph – Barrie"
		588 = "Kingston – Peterborough"
		599 = "Greater Sudbury – Thunder Bay"
		602 = "Winnipeg"
		799 = "Regina – Saskatoon"
		825 = "Calgary"
		835 = "Edmonton"
		933 = "Vancouver"
		935 = "Victoria"
		988 = "Kelowna –  Abbotsford-Mission"
		999 = "Other census metropolitan areas, census agglomerations and other geographies"
	;
	value CONDO
		0 = "Not condominium"
		1 = "Condominium"
		8 = "Not available"
	;
	value COW
		1 = "Employee"
		2 = "Unpaid family worker"
		3 = "Self-employed, without paid help, incorporated"
		4 = "Self-employed, with paid help, incorporated"
		5 = "Self-employed, without paid help, unincorporated"
		6 = "Self-employed, with paid help, unincorporated"
		8 = "Not available"
		9 = "Not applicable"
	;
	value DIST
		9 = "Not applicable"
		1 = "Less than 5 km"
		2 = "5 to 9.9 km"
		3 = "10 to 14.9 km"
		4 = "15 to 19.9 km"
		5 = "20 to 24.9 km"
		6 = "25 to 29.9 km"
		7 = "Greater or equal to 30 km"
	;
	value DPGRSUM
		1 = "White"
		2 = "South Asian"
		3 = "Chinese"
		4 = "Black"
		5 = "Filipino"
		6 = "Arab"
		7 = "Latin American"
		8 = "Southeast Asian"
		9 = "West Asian"
		10 = "Korean"
		11 = "Japanese"
		12 = "Other population groups, n.i.e."
		13 = "Other multiple population groups"
		14 = "Indigenous peoples"
		88 = "Not available"
	;
	value DTYPE
		1 = "Single-detached house"
		2 = "Apartment"
		3 = "Other dwelling"
		8 = "Not available"
	;
	value EFDecile
		1 = "In bottom decile"
		2 = "In second decile"
		3 = "In third decile"
		4 = "In fourth decile"
		5 = "In fifth decile"
		6 = "In sixth decile"
		7 = "In seventh decile"
		8 = "In eighth decile"
		9 = "In ninth decile"
		10 = "In top decile"
		88 = "Not available"
	;
	value EfDIMBM_2018_
		1 = "Under $2,000"
		2 = "$2,000 to $4,999"
		3 = "$5,000 to $6,999"
		4 = "$7,000 to $9,999"
		5 = "$10,000 to $11,999"
		6 = "$12,000 to $14,999"
		7 = "$15,000 to $16,999"
		8 = "$17,000 to $19,999"
		9 = "$20,000 to $24,999"
		10 = "$25,000 to $29,999"
		11 = "$30,000 to $34,999"
		12 = "$35,000 to $39,999"
		13 = "$40,000 to $44,999"
		14 = "$45,000 to $49,999"
		15 = "$50,000 to $54,999"
		16 = "$55,000 to $59,999"
		17 = "$60,000 to $64,999"
		18 = "$65,000 to $69,999"
		19 = "$70,000 to $74,999"
		20 = "$75,000 to $79,999"
		21 = "$80,000 to $84,999"
		22 = "$85,000 to $89,999"
		23 = "$90,000 to $94,999"
		24 = "$95,000 to $99,999"
		25 = "$100,000 to $109,999"
		26 = "$110,000 to $119,999"
		27 = "$120,000 to $134,999"
		28 = "$135,000 to $149,999"
		29 = "$150,000 to $174,999"
		30 = "$175,000 to $199,999"
		31 = "$200,000 to $249,999"
		32 = "$250,000 and over"
		88 = "Not available "
	;
	value EFInc
		1 = "Under $2,000"
		2 = "$2,000 to $4,999"
		3 = "$5,000 to $6,999"
		4 = "$7,000 to $9,999"
		5 = "$10,000 to $11,999"
		6 = "$12,000 to $14,999"
		7 = "$15,000 to $16,999"
		8 = "$17,000 to $19,999"
		9 = "$20,000 to $24,999"
		10 = "$25,000 to $29,999"
		11 = "$30,000 to $34,999"
		12 = "$35,000 to $39,999"
		13 = "$40,000 to $44,999"
		14 = "$45,000 to $49,999"
		15 = "$50,000 to $54,999"
		16 = "$55,000 to $59,999"
		17 = "$60,000 to $64,999"
		18 = "$65,000 to $69,999"
		19 = "$70,000 to $74,999"
		20 = "$75,000 to $79,999"
		21 = "$80,000 to $84,999"
		22 = "$85,000 to $89,999"
		23 = "$90,000 to $94,999"
		24 = "$95,000 to $99,999"
		25 = "$100,000 to $109,999"
		26 = "$110,000 to $119,999"
		27 = "$120,000 to $129,999"
		28 = "$130,000 to $139,999"
		29 = "$140,000 to $149,999"
		30 = "$150,000 to $174,999"
		31 = "$175,000 to $199,999"
		32 = "$200,000 to $249,999"
		33 = "$250,000 and over"
		88 = "Not available "
	;
	value EFInc_AT
		1 = "Under $2,000"
		2 = "$2,000 to $4,999"
		3 = "$5,000 to $6,999"
		4 = "$7,000 to $9,999"
		5 = "$10,000 to $11,999"
		6 = "$12,000 to $14,999"
		7 = "$15,000 to $16,999"
		8 = "$17,000 to $19,999"
		9 = "$20,000 to $24,999"
		10 = "$25,000 to $29,999"
		11 = "$30,000 to $34,999"
		12 = "$35,000 to $39,999"
		13 = "$40,000 to $44,999"
		14 = "$45,000 to $49,999"
		15 = "$50,000 to $54,999"
		16 = "$55,000 to $59,999"
		17 = "$60,000 to $64,999"
		18 = "$65,000 to $69,999"
		19 = "$70,000 to $74,999"
		20 = "$75,000 to $79,999"
		21 = "$80,000 to $84,999"
		22 = "$85,000 to $89,999"
		23 = "$90,000 to $94,999"
		24 = "$95,000 to $99,999"
		25 = "$100,000 to $109,999"
		26 = "$110,000 to $119,999"
		27 = "$120,000 to $134,999"
		28 = "$135,000 to $149,999"
		29 = "$150,000 to $174,999"
		30 = "$175,000 to $199,999"
		31 = "$200,000 to $249,999"
		32 = "$250,000 and over"
		88 = "Not available "
	;
	value EfSize
		1 = "Person not in an economic family"
		2 = "2 persons"
		3 = "3 persons"
		4 = "4 persons"
		5 = "5 persons"
		6 = "6 persons"
		7 = "7 persons or more"
		8 = "Not available"
	;
	value ETHDER
		1 = "North American Indigenous origins"
		2 = "Acadian"
		3 = "Canadian"
		4 = "French Canadian"
		5 = "Québécois"
		6 = "Other North American origins"
		7 = "English"
		8 = "Irish"
		9 = "Scottish"
		10 = "Other British Isles origins"
		11 = "French origins"
		12 = "Dutch"
		13 = "German"
		14 = "Other Western European origins"
		15 = "Other Northern European origins"
		16 = "Greek"
		17 = "Italian"
		18 = "Portuguese"
		19 = "Other Southern European origins"
		20 = "Romanian"
		21 = "Other Southeast European origins"
		22 = "Hungarian"
		23 = "Polish"
		24 = "Russian"
		25 = "Ukrainian"
		26 = "Other Eastern European origins"
		27 = "Other European origins"
		28 = "Haitian"
		29 = "Jamaican"
		30 = "Other Caribbean origins"
		31 = "Mexican"
		32 = "Other Latin, Central and South American origins"
		33 = "Central and West African origins"
		34 = "North African origins"
		35 = "Southern and East African origins"
		36 = "Other African origins"
		37 = "Afghan"
		38 = "Iranian"
		39 = "Lebanese"
		40 = "Other West and Central Asian and Middle Eastern origins"
		41 = "Indian (India)"
		42 = "Pakistani"
		43 = "Punjabi"
		44 = "Sri Lankan"
		45 = "Other South Asian origins"
		46 = "Chinese"
		47 = "Filipino"
		48 = "Korean"
		49 = "Vietnamese"
		50 = "East and Southeast Asian origins, n.i.e."
		51 = "Other Asian origins"
		52 = "Arab, n.o.s."
		53 = "Caucasian (White), n.o.s."
		54 = "Christian, n.i.e."
		55 = "Hindu"
		56 = "Jewish"
		57 = "Sikh"
		58 = "Other ethnic and cultural origins"
		59 = "Multiple ethnic or cultural origins"
		88 = "Not available"
	;
	value FOL
		1 = "English"
		2 = "French"
		3 = "English and French"
		4 = "Neither English nor French"
	;
	value FPTWK
		1 = "Worked mainly full-time weeks in 2020"
		2 = "Worked mainly part-time weeks in 2020"
		8 = "Not available"
		9 = "Not applicable"
	;
	value Gender
		1 = "Woman+"
		2 = "Man+"
	;
	value GENSTAT
		1 = "First generation, respondent born outside Canada"
		2 = "Second generation, respondent born in Canada, both parents born outside Canada"
		3 = "Second generation, respondent born in Canada, one parent born outside Canada and one parent born in Canada"
		4 = "Third generation or more, respondent born in Canada, both parents born in Canada"
		8 = "Not available"
	;
	value HCORENEED_IND
		100 = "In core need"
		0 = "Not in core need"
		888 = "Not available"
	;
	value HDGREE
		1 = "No certificate, diploma or degree"
		2 = "High (secondary) school diploma or equivalency certificate"
		3 = "Non-apprenticeship trades certificate or diploma"
		4 = " Apprenticeship certificate"
		5 = "Program of 3 months to less than 1 year (College, CEGEP and other non-university certificates or diplomas)"
		6 = "Program of 1 to 2 years (College, CEGEP and other non-university certificates or diplomas)"
		7 = "Program of more than 2 years (College, CEGEP and other non-university certificates or diplomas)"
		8 = "University certificate or diploma below bachelor level"
		9 = "Bachelor's degree"
		10 = "University certificate or diploma above bachelor level"
		11 = "Degree in medicine, dentistry, veterinary medicine or optometry"
		12 = "Master's degree"
		13 = "Earned doctorate"
		88 = "Not available"
		99 = "Not applicable"
	;
	value HHInc
		1 = "Under $2,000"
		2 = "$2,000 to $4,999"
		3 = "$5,000 to $6,999"
		4 = "$7,000 to $9,999"
		5 = "$10,000 to $11,999"
		6 = "$12,000 to $14,999"
		7 = "$15,000 to $16,999"
		8 = "$17,000 to $19,999"
		9 = "$20,000 to $24,999"
		10 = "$25,000 to $29,999"
		11 = "$30,000 to $34,999"
		12 = "$35,000 to $39,999"
		13 = "$40,000 to $44,999"
		14 = "$45,000 to $49,999"
		15 = "$50,000 to $54,999"
		16 = "$55,000 to $59,999"
		17 = "$60,000 to $64,999"
		18 = "$65,000 to $69,999"
		19 = "$70,000 to $74,999"
		20 = "$75,000 to $79,999"
		21 = "$80,000 to $84,999"
		22 = "$85,000 to $89,999"
		23 = "$90,000 to $94,999"
		24 = "$95,000 to $99,999"
		25 = "$100,000 to $109,999"
		26 = "$110,000 to $119,999"
		27 = "$120,000 to $129,999"
		28 = "$130,000 to $139,999"
		29 = "$140,000 to $149,999"
		30 = "$150,000 to $174,999"
		31 = "$175,000 to $199,999"
		32 = "$200,000 to $249,999"
		33 = "$250,000 and over"
		88 = "Not available "
	;
	value HHInc_AT
		1 = "Under $2,000"
		2 = "$2,000 to $4,999"
		3 = "$5,000 to $6,999"
		4 = "$7,000 to $9,999"
		5 = "$10,000 to $11,999"
		6 = "$12,000 to $14,999"
		7 = "$15,000 to $16,999"
		8 = "$17,000 to $19,999"
		9 = "$20,000 to $24,999"
		10 = "$25,000 to $29,999"
		11 = "$30,000 to $34,999"
		12 = "$35,000 to $39,999"
		13 = "$40,000 to $44,999"
		14 = "$45,000 to $49,999"
		15 = "$50,000 to $54,999"
		16 = "$55,000 to $59,999"
		17 = "$60,000 to $64,999"
		18 = "$65,000 to $69,999"
		19 = "$70,000 to $74,999"
		20 = "$75,000 to $79,999"
		21 = "$80,000 to $84,999"
		22 = "$85,000 to $89,999"
		23 = "$90,000 to $94,999"
		24 = "$95,000 to $99,999"
		25 = "$100,000 to $109,999"
		26 = "$110,000 to $119,999"
		27 = "$120,000 to $134,999"
		28 = "$135,000 to $149,999"
		29 = "$150,000 to $174,999"
		30 = "$175,000 to $199,999"
		31 = "$200,000 to $249,999"
		32 = "$250,000 and over"
		88 = "Not available "
	;
	value HHMRKINC
		1 = "Under $2,000"
		2 = "$2,000 to $4,999"
		3 = "$5,000 to $6,999"
		4 = "$7,000 to $9,999"
		5 = "$10,000 to $11,999"
		6 = "$12,000 to $14,999"
		7 = "$15,000 to $16,999"
		8 = "$17,000 to $19,999"
		9 = "$20,000 to $24,999"
		10 = "$25,000 to $29,999"
		11 = "$30,000 to $34,999"
		12 = "$35,000 to $39,999"
		13 = "$40,000 to $44,999"
		14 = "$45,000 to $49,999"
		15 = "$50,000 to $54,999"
		16 = "$55,000 to $59,999"
		17 = "$60,000 to $64,999"
		18 = "$65,000 to $69,999"
		19 = "$70,000 to $74,999"
		20 = "$75,000 to $79,999"
		21 = "$80,000 to $84,999"
		22 = "$85,000 to $89,999"
		23 = "$90,000 to $94,999"
		24 = "$95,000 to $99,999"
		25 = "$100,000 to $109,999"
		26 = "$110,000 to $119,999"
		27 = "$120,000 to $129,999"
		28 = "$130,000 to $139,999"
		29 = "$140,000 to $149,999"
		30 = "$150,000 to $174,999"
		31 = "$175,000 to $199,999"
		32 = "$200,000 to $249,999"
		33 = "$250,000 and over"
		88 = "Not available "
	;
	value HHSIZE
		1 = "1 person"
		2 = "2 persons"
		3 = "3 persons"
		4 = "4 persons"
		5 = "5 persons"
		6 = "6 persons"
		7 = "7 persons or more"
		8 = "Not available"
	;
	value HHTYPE
		1 = "One-census-family household without additional persons: Couple without children"
		2 = "One-census-family household without additional persons: Couple with children"
		3 = "One-census-family household with additional persons: Couple without children"
		4 = "One-census-family household with additional persons: Couple with children"
		5 = "One-census-family household without additional persons: one-parent family"
		6 = "One-census-family household with additional persons: one-parent family"
		7 = "Multiple-census-family household"
		8 = "Non-census-family household: one-person household"
		9 = "Non-census-family household: two-or-more-person non-census-family household"
		88 = "Not available"
	;
	value HLMOSTEN
		1 = "True - Respondent reported English as the language spoken most often at home"
		0 = "False - Respondent did not report English as the language spoken most often at home"
		8 = "Not available"
	;
	value HLMOSTFR
		1 = "True - Respondent reported French as the language spoken most often at home"
		0 = "False - Respondent did not report French as the language spoken most often at home"
		8 = "Not available"
	;
	value HLMOSTNO
		1 = "No non-official language"
		2 = "Indigenous languages"
		3 = "Italian"
		4 = "Spanish"
		5 = "Portuguese"
		6 = "German"
		7 = "Russian"
		8 = "Polish"
		9 = "Slavic languages"
		10 = "Other European languages"
		11 = "Arabic"
		12 = "Other Afro-Asiatic and African languages"
		13 = "Punjabi (Panjabi)"
		14 = "Urdu"
		15 = "Persian (Farsi)"
		16 = "Other Indo-Iranian languages"
		17 = "Cantonese"
		18 = "Mandarin"
		19 = "Chinese languages"
		20 = "Austro-Asiatic languages"
		21 = "Tagalog (Pilipino, Filipino)"
		22 = "Other East and Southeast Asian languages"
		23 = "Tamil"
		24 = "All other languages"
		88 = "Not available"
	;
	value HLREGEN
		1 = "True - Respondent reported English as the other language spoken at home on a regular basis"
		0 = "False - Respondent did not report English as the other language spoken at home on a regular basis"
		8 = "Not available"
	;
	value HLREGFR
		1 = "True - Respondent reported French as the other language spoken at home on a regular basis"
		0 = "False - Respondent did not report French as the other language spoken at home on a regular basis"
		8 = "Not available"
	;
	value HLREGNO
		0 = "False - Respondent did not report a non-official language as the language spoken at home on a regular basis"
		1 = "True - Respondent reported a non-official language as the language spoken at home on a regular basis"
	;
	value IMMCAT5_
		1 = "Non-immigrants"
		2 = "Non-permanent residents"
		3 = "Immigrants who landed before 1980"
		21 = "Economic immigrants "
		22 = "Immigrants sponsored by family and other immigrants"
		23 = "Refugees"
		88 = "Not available"
	;
	value IMMSTAT
		1 = "Non-immigrants"
		2 = "Immigrants"
		3 = "Non-permanent residents"
		88 = "Not available"
	;
	value JOBPERM
		2 = "Employee - Permanent position"
		9 = "Not applicable"
		1 = "Other employment - unpaid, self employed"
		3 = "Employee - Fixed term (1 year or more) /  Casual, seasonal or short-term position (less than 1 year)"
		8 = "Not available"
	;
	value KOL
		1 = "English only"
		2 = "French only"
		3 = "English and French"
		4 = "Neither English nor French"
		8 = "Not available"
	;
	value LFACT
		1 = "Employed - Worked in reference week"
		2 = "Employed - Absent in reference week"
		3 = "Unemployed - Temporary layoff - Did not look for work"
		4 = "Unemployed - Temporary layoff - Looked for full-time work"
		5 = "Unemployed - Temporary layoff - Looked for part-time work"
		6 = "Unemployed - New job - Did not look for work"
		7 = "Unemployed - New job - Looked for full-time work"
		8 = "Unemployed - New job - Looked for part-time work"
		9 = "Unemployed - Looked for full-time work"
		10 = "Unemployed - Looked for part-time work"
		11 = "Not in the labour force - Last worked in 2021"
		12 = "Not in the labour force - Last worked in 2020"
		13 = "Not in the labour force - Last worked before 2020"
		14 = "Not in the labour force - Never worked"
		99 = "Not applicable"
		88 = "Not available"
	;
	value LI_ELIG_OML_U18_
		9 = "Not applicable (Born before 2003)"
		1 = "Eligible child"
		2 = "Child not eligible"
	;
	value LICO_AT
		9 = "Not applicable"
		1 = "Not in low income"
		2 = "In low income"
		8 = "Not available"
	;
	value LICO_BT
		9 = "Not applicable"
		1 = "Not in low income"
		2 = "In low income"
		8 = "Not available"
	;
	value LIPROGTYPE
		9 = "Not applicable"
		1 = "Residents of Canada outside Quebec who attended a regular French program in a French-language school at the primary or secondary levels in Canada"
		2 = "Residents of Canada outside Quebec who attended a French immersion program in an English-language school at the primary or secondary levels in Canada"
		3 = "Residents of Canada outside Quebec who attended both types of programs in Canada"
		4 = "Residents of Canada outside Quebec who did not attend a regular French program in a French-language school or a French immersion program in Canada"
	;
	value LOC_ST_RES
		1 = "Same as province or territory of residence"
		2 = "Different than province or territory of residence"
		3 = "Outside Canada"
		4 = "No postsecondary certificate, diploma or degree"
		9 = "Not applicable"
	;
	value LOCSTUD
		1 = "Newfoundland and Labrador"
		2 = "Prince Edward Island"
		3 = "Nova Scotia"
		4 = "New Brunswick"
		5 = "Quebec"
		6 = "Ontario"
		7 = "Manitoba"
		8 = "Saskatchewan"
		9 = "Alberta"
		10 = "British Columbia"
		11 = "Northern Canada"
		12 = "United States of America"
		13 = "Other Americas"
		14 = "Europe"
		15 = "Eastern Asia"
		16 = "Southeast and Southern Asia"
		17 = "Other countries and regions"
		99 = "Not applicable"
	;
	value LoLIMA
		1 = "Not in low income"
		2 = "In low income"
		8 = "Not available"
	;
	value LoLIMB
		1 = "Not in low income"
		2 = "In low income"
		8 = "Not available"
	;
	value LoMBM_2018_
		9 = "Not applicable"
		1 = "Not in poverty"
		2 = "In poverty"
		8 = "Not available"
	;
	value LSTWRK
		3 = "Last worked in 2021"
		2 = "Last worked in 2020"
		1 = "Last worked before 2020"
		4 = "Never worked"
		9 = "Not applicable"
		8 = "Not available"
	;
	value LWMOSTEN
		9 = "Not applicable"
		1 = "True - Respondent reported English as the language used most often at work"
		0 = "False - Respondent did not report English as the language used most often at work"
		8 = "Not available"
	;
	value LWMOSTFR
		9 = "Not applicable"
		1 = "True - Respondent reported French as the language used most often at work"
		0 = "False - Respondent did not report French as the language used most often at work"
		8 = "Not available"
	;
	value LWMOSTNO
		0 = "False - Respondent did not report a non-official language as the language used most often at work"
		1 = "True - Respondent reported a non-official language as the language used most often at work"
		9 = "Not applicable"
	;
	value LWREGEN
		9 = "Not applicable"
		1 = "True - Respondent reported English as the other language used at work on a regular basis"
		0 = "False - Respondent did not report English as the other language used at work on a regular basis"
		8 = "Not available"
	;
	value LWREGFR
		9 = "Not applicable"
		1 = "True - Respondent reported French as the other language used at work on a regular basis"
		0 = "False - Respondent did not report French as the other language used at work on a regular basis"
		8 = "Not available"
	;
	value LWREGNO
		0 = "False - Respondent did not report a non-official language as the language used on a regular basis at work"
		1 = "True - Respondent reported a non-official language as the language used on a regular basis at work"
		9 = "Not applicable"
	;
	value MarStH
		1 = "Never married (not living common law)"
		2 = "Married"
		3 = "Living common law"
		4 = "Separated (not living common law)"
		5 = "Divorced (not living common law)"
		6 = "Widowed (not living common law)"
		8 = "Not available"
	;
	value Mob1_
		1 = "Non-movers"
		2 = "Non-migrants"
		3 = "Different CSD, same census division"
		4 = "Different CD, same province"
		5 = "Interprovincial migrants"
		6 = "External migrants"
		8 = "Not available"
		9 = "Not applicable"
	;
	value Mob5_
		1 = "Non-movers"
		2 = "Non-migrants"
		3 = "Different CSD, same census division"
		4 = "Different CD, same province"
		5 = "Interprovincial migrants"
		6 = "External migrants"
		9 = "Not applicable"
		8 = "Not available"
	;
	value MODE
		9 = "Not applicable"
		2 = "Car, truck or van - as a driver"
		5 = "Car, truck or van - as a passenger"
		6 = "Public transit"
		7 = "Walked"
		1 = "Bicycle"
		3 = "Motorcycle, scooter or moped"
		4 = "Other method"
	;
	value MrkInc
	;
	value MTNEN
		1 = "True - Respondent reported English as mother tongue"
		0 = "False - Respondent did not report English as mother tongue"
		8 = "Not available"
	;
	value MTNFR
		1 = "True - Respondent reported French as mother tongue"
		0 = "False - Respondent did not report French as mother tongue"
		8 = "Not available"
	;
	value MTNNO
		1 = "No non-official language"
		2 = "Indigenous languages"
		3 = "Arabic"
		4 = "Mandarin"
		5 = "Cantonese"
		6 = "Chinese languages"
		7 = "German"
		8 = "Other Germanic languages"
		9 = "Greek"
		10 = "Urdu"
		11 = "Iranian Persian"
		12 = "Other Indo-Iranian languages"
		13 = "Italian"
		14 = "Polish"
		15 = "Portuguese"
		16 = "Punjabi (Panjabi)"
		17 = "Spanish"
		18 = "Ukrainian"
		19 = "Vietnamese"
		20 = "Austro-Asiatic languages"
		21 = "Other European languages"
		22 = "Russian"
		23 = "Other Slavic languages"
		24 = "Uralic languages"
		25 = "Other Afro-Asiatic languages"
		26 = "Tamil"
		27 = "Other Dravidian languages"
		28 = "Korean"
		29 = "Other East and Southeast Asian languages"
		30 = "Tagalog (Pilipino, Filipino)"
		31 = "Niger-Congo languages and other African languages"
		32 = "All other single languages"
		88 = "Not available"
	;
	value NAICS
		11 = "11 Agriculture, forestry, fishing and hunting"
		21 = "21 Mining, quarrying, and oil and gas extraction"
		22 = "22 Utilities"
		23 = "23 Construction"
		31 = "31-33 Manufacturing"
		41 = "41 Wholesale trade"
		44 = "44-45 Retail trade"
		48 = "48-49 Transportation and warehousing"
		51 = "51 Information and cultural industries"
		52 = "52 Finance and insurance/55 Management of companies and enterprises"
		53 = "53 Real estate and rental and leasing"
		54 = "54 Professional, scientific and technical services"
		56 = "56 Administrative and support, waste management and remediation services"
		61 = "61 Educational services"
		62 = "62 Health care and social assistance"
		71 = "71 Arts, entertainment and recreation"
		72 = "72 Accommodation and food services"
		81 = "81 Other services (except public administration)"
		91 = "91 Public administration"
		888 = "Not available"
		999 = "Not applicable"
	;
	value NOC21_
		99 = "Not applicable"
		1 = "00 Legislative and senior managers"
		2 = "Middle management occupations"
		3 = "11 Professional occupations in business and finance"
		4 = "12 Administrative and financial supervisors and specialized administrative occupations"
		5 = "13 Administrative occupations and transportation logistics occupations"
		6 = "14 Administrative and financial support and supply chain logistics occupations"
		7 = "21 Professional occupations in natural and applied sciences"
		8 = "22 Technical occupations related to natural and applied sciences"
		9 = "31 Professional occupations in health"
		10 = "32 Technical occupations in health"
		11 = "33 Assisting occupations in support of health services"
		12 = "41 Professional occupations in law, education, social, community and government services"
		13 = "42 Front-line public protection services and paraprofessional occupations in legal, social, community, education services"
		14 = "43-45 Assisting occupations, care providers, student monitors, crossing guards and related occupations in education and in legal and public protection"
		15 = "51-52 Professional and technical occupations in art, culture and sport"
		16 = "53-55 Other occupations in art, culture and sport"
		17 = "62 Retail sales and service supervisors and specialized occupations in sales and services"
		18 = "63 Occupations in sales and services"
		19 = "64 Sales and service representatives and other customer and personal services occupations"
		21 = "72 Technical trades and transportation officers and controllers"
		22 = "73 General trades"
		23 = "74 Mail and message distribution, other transport equipment operators and related maintenance workers"
		24 = "75 Helpers and labourers and other transport drivers, operators and labourers"
		25 = "82-85 Occupations in natural resources, agriculture and related production"
		26 = "92-95 Occupations in processing, manufacturing and utilities"
		88 = "Not available"
		20 = "65 Sales and service support occupations"
	;
	value NOL
		1 = "No non-official language"
		2 = "Indigenous languages"
		3 = "Arabic"
		4 = "Chinese languages"
		5 = "German"
		6 = "Other Germanic languages"
		7 = "Greek"
		8 = "Other Indo-Iranian languages"
		9 = "Italian"
		10 = "Polish"
		11 = "Portuguese"
		12 = "Punjabi (Panjabi)"
		13 = "Spanish"
		14 = "Ukrainian"
		15 = "Austro-Asiatic languages"
		16 = "Other European languages"
		17 = "Russian"
		18 = "Other Slavic languages"
		19 = "Uralic languages"
		20 = "Other Afro-Asiatic languages"
		21 = "Dravidian languages"
		22 = "Other East and Southeast Asian languages"
		23 = "Tagalog (Pilipino, Filipino)"
		24 = "Niger-Congo languages and other African languages"
		25 = "All other single languages"
		26 = "Respondents with multiples non-official languages"
		88 = "Not available"
	;
	value NOS
		1 = "Suitable"
		0 = "Not suitable"
	;
	value PKID0_1_
		0 = "None"
		1 = "One or more"
		9 = "Not applicable"
		8 = "Not available"
	;
	value PKID15_24_
		0 = "None"
		1 = "One or more"
		9 = "Not applicable"
		8 = "Not available"
	;
	value PKID2_5_
		0 = "None"
		1 = "One or more"
		9 = "Not applicable"
		8 = "Not available"
	;
	value PKID25_
		0 = "None"
		1 = "One or more"
		9 = "Not applicable"
		8 = "Not available"
	;
	value PKID6_14_
		0 = "None"
		1 = "One or more"
		9 = "Not applicable"
		8 = "Not available"
	;
	value PKIDS
		0 = "None"
		1 = "One or more"
		9 = "Not applicable"
		8 = "Not available"
	;
	value POB
		1 = "Canada"
		2 = "United States"
		3 = "Central America"
		4 = "Jamaica"
		5 = "Other Caribbean and Bermuda"
		6 = "South America"
		7 = "United Kingdom"
		8 = "Germany"
		9 = "France"
		10 = "Other Northern and Western Europe"
		11 = "Poland"
		12 = "Other Eastern Europe"
		13 = "Italy"
		14 = "Portugal"
		15 = "Other Southern Europe"
		16 = "Eastern Africa"
		17 = "Northern Africa"
		18 = "Other Africa"
		19 = "Iran"
		20 = "Other West Central Asia and the Middle East"
		21 = "China"
		22 = "Hong Kong"
		23 = "South Korea"
		24 = "Other Eastern Asia"
		25 = "Philippines"
		26 = "Viet Nam"
		27 = "Other Southeast Asia"
		28 = "India"
		29 = "Pakistan"
		30 = "Sri Lanka"
		31 = "Other Southern Asia"
		32 = "Oceania and others"
		88 = "Not available"
	;
	value POBPAR1_
		1 = "Canada"
		2 = "Americas"
		3 = "Europe"
		4 = "Eastern Asia"
		5 = "Southeast and Southern Asia"
		6 = "Other countries and regions"
		8 = "Not available"
	;
	value POBPAR2_
		1 = "Canada"
		2 = "Americas"
		3 = "Europe"
		4 = "Eastern Asia"
		5 = "Southeast and Southern Asia"
		6 = "Other countries and regions"
		8 = "Not available"
	;
	value POWST
		1 = "Worked at home"
		2 = "No fixed workplace"
		3 = "Worked outside Canada"
		4 = "Worked in census subdivision (municipality) of residence"
		5 = "Worked in a different census subdivision (municipality) within the census division (county) of residence"
		6 = "Worked in a different census division (county)"
		8 = "Not available"
		9 = "Not applicable"
		7 = "Worked in a different province or territory"
	;
	value PR
		10 = "Newfoundland and Labrador"
		11 = "Prince Edward Island"
		12 = "Nova Scotia"
		13 = "New Brunswick"
		24 = "Quebec"
		35 = "Ontario"
		46 = "Manitoba"
		47 = "Saskatchewan"
		48 = "Alberta"
		59 = "British Columbia"
		70 = "Northern Canada"
	;
	value PR1_
		10 = "Newfoundland and Labrador"
		11 = "Prince Edward Island"
		12 = "Nova Scotia"
		13 = "New Brunswick"
		24 = "Quebec"
		35 = "Ontario"
		46 = "Manitoba"
		47 = "Saskatchewan"
		48 = "Alberta"
		59 = "British Columbia"
		70 = "Northern Canada"
		88 = "Not available"
		99 = "Not applicable"
	;
	value PR5_
		10 = "Newfoundland and Labrador"
		11 = "Prince Edward Island"
		12 = "Nova Scotia"
		13 = "New Brunswick"
		24 = "Quebec"
		35 = "Ontario"
		46 = "Manitoba"
		47 = "Saskatchewan"
		48 = "Alberta"
		59 = "British Columbia"
		70 = "Northern Canada"
		99 = "Not applicable"
		88 = "Not available"
	;
	value PresMortG
		1 = "With mortgage"
		0 = "Without mortgage"
		9 = "Not applicable"
		8 = "Not available"
	;
	value PRIHM
		0 = "Person is not primary maintainer"
		1 = "Person is primary maintainer"
		9 = "Not applicable"
	;
	value PWDUR
		1 = "Less than 15 minutes"
		2 = "Between 15 and 29 minutes"
		3 = "Between 30 and 44 minutes"
		4 = "Between 45 and 59 minutes"
		5 = "60 minutes and over"
		9 = "Not applicable"
	;
	value PWLEAVE
		1 = "5:00 a.m. to 5:59 a.m."
		2 = "6:00 a.m. to 6:59 a.m."
		3 = "7:00 a.m. to 7:59 a.m."
		4 = "8:00 a.m. to 8:59 a.m."
		5 = "9:00 a.m. to 3:59 p.m."
		6 = "4:00 p.m. to 4:59 a.m."
		9 = "Not applicable"
	;
	value PWOCC
		9 = "Not applicable"
		1 = "1 worker"
		2 = "2 workers"
		3 = "3 or more workers"
	;
	value PWPR
		99 = "Not applicable"
		10 = "Newfoundland and Labrador"
		11 = "Prince Edward Island"
		12 = "Nova Scotia"
		13 = "New Brunswick"
		24 = "Quebec"
		35 = "Ontario"
		46 = "Manitoba"
		47 = "Saskatchewan"
		48 = "Alberta"
		59 = "British Columbia"
		70 = "Northern Canada"
		88 = "Not available"
	;
	value REGIND
		1 = "Registered or Treaty Indian"
		0 = "Not a Registered or Treaty Indian"
	;
	value Relig
		1 = "Buddhist"
		2 = "Christian, n.o.s."
		3 = "Anabaptist"
		4 = "Anglican"
		5 = "Baptist"
		6 = "Catholic"
		7 = "Christian Orthodox"
		8 = "Jehovah's Witness"
		9 = "Latter Day Saints"
		10 = "Lutheran"
		11 = "Methodist and Wesleyan (Holiness)"
		12 = "Pentecostal and other Charismatic"
		13 = "Presbyterian"
		14 = "Reformed"
		15 = "United Church"
		16 = "Other Christian and Christian-related traditions"
		17 = "Hindu"
		18 = "Jewish"
		19 = "Muslim"
		20 = "Sikh"
		21 = "Other religions and spiritual traditions"
		22 = "No religion and secular perspectives"
		88 = "Not available"
	;
	value REPAIR
		1 = "Regular maintenance needed"
		3 = "Major repairs needed"
		2 = "Minor repairs are needed"
	;
	value ROOM
		1 = "1 room"
		2 = "2 rooms"
		3 = "3 rooms"
		4 = "4 rooms"
		5 = "5 rooms"
		6 = "6 rooms"
		7 = "7 rooms"
		8 = "8 rooms"
		9 = "9 rooms"
		10 = "10 rooms"
		11 = "11 rooms or more"
		88 = "Not available"
	;
	value SSGRAD
		1 = "No high school diploma or equivalency certificate, no postsecondary certificate, diploma or degree"
		2 = "No high school diploma or equivalency certificate, with apprenticeship or trades certificate or diploma"
		3 = "No high school diploma or equivalency certificate, with college, CEGEP or other non-university certificate or diploma"
		4 = "With high school diploma or equivalency certificate, no postsecondary certificate, diploma or degree"
		5 = "With high school diploma or equivalency certificate, with apprenticeship or trades certificate or diploma"
		6 = "With high school diploma or equivalency certificate, with college, CEGEP or other non-university certificate or diploma"
		7 = "With high school diploma or equivalency certificate, with university certificate or diploma below bachelor level"
		8 = "With high school diploma or equivalency certificate, with bachelor's degree"
		9 = "With high school diploma or equivalency certificate, with university certificate or diploma above bachelor level"
		10 = "With high school diploma or equivalency certificate, with degree in medicine, dentistry, veterinary medicine or optometry"
		11 = "With high school diploma or equivalency certificate, with master's degree"
		12 = "With high school diploma or equivalency certificate, with earned doctorate"
		88 = "Not available"
		99 = "Not applicable"
	;
	value Subsidy
		1 = "Subsidized"
		0 = "Not subsidized"
		9 = "Not applicable"
		8 = "Not available"
	;
	value Tenur
		1 = "Owner"
		8 = "Not available"
		2 = "Renter; or Dwelling provided by the local government, First Nation or Indian band"
	;
	value VISMIN
		1 = "Not a visible minority"
		2 = "South Asian"
		3 = "Chinese"
		4 = "Black"
		5 = "Filipino"
		6 = "Arab"
		7 = "Latin American"
		8 = "Southeast Asian"
		9 = "West Asian"
		10 = "Korean"
		11 = "Japanese"
		12 = "Visible minority, n.i.e."
		13 = "Multiple visible minorities"
		88 = "Not available"
	;
	value WKSWRK
		0 = "None - worked in 2021 only"
		1 = "1 to 9 weeks in 2020"
		2 = "10 to 19 weeks in 2020"
		3 = "20 to 29 weeks in 2020"
		4 = "30 to 39 weeks in 2020"
		5 = "40 to 48 weeks in 2020"
		6 = "49 to 52 weeks in 2020"
		9 = "Not applicable"
		8 = "Not available"
	;
	value WRKACT
		1 = "Worked before 2020 or never worked"
		2 = "Worked in 2021 only"
		3 = "Worked 1 to 13 weeks full time"
		4 = "Worked 1 to 13 weeks part time"
		5 = "Worked 14 to 26 weeks full time"
		6 = "Worked 14 to 26 weeks part time"
		7 = "Worked 27 to 39 weeks full time"
		8 = "Worked 27 to 39 weeks part time"
		9 = "Worked 40 to 48 weeks full time"
		10 = "Worked 40 to 48 weeks part time"
		11 = "Worked 49 to 52 weeks full time"
		12 = "Worked 49 to 52 weeks part time"
		88 = "Not available"
		99 = "Not applicable"
	;
	value YRIM
		1 = "Before 1955"
		2 = "1955 to 1959"
		3 = "1960 to 1964"
		4 = "1965 to 1969"
		5 = "1970 to 1974"
		6 = "1975 to 1979"
		7 = "1980 to 1984"
		8 = "1985 to 1989"
		9 = "1990 to 1994"
		1995 = "1995"
		1996 = "1996"
		1997 = "1997"
		1998 = "1998"
		1999 = "1999"
		2000 = "2000"
		2001 = "2001"
		2002 = "2002"
		2003 = "2003"
		2004 = "2004"
		2005 = "2005"
		2006 = "2006"
		2007 = "2007"
		2008 = "2008"
		2009 = "2009"
		2010 = "2010"
		2011 = "2011"
		2012 = "2012"
		2013 = "2013"
		2014 = "2014"
		2015 = "2015"
		2016 = "2016"
		2017 = "2017"
		2018 = "2018"
		2019 = "2019"
		2020 = "2020 to 2021"
		8888 = "Not available"
		9999 = "Not applicable"
	;

DATA library.&dataset;
	INFILE datafile LRECL=592;
	INPUT
		PPSORT          1-6     ABOID           7   AGEGRP          8-9     
		AGEIMM          10-11    ATTSCH          12   BFNMEMB         13   
		BEDRM           14   CFInc           15-16    CFInc_AT        17-18    
		CFSTAT          19   CHDBN           20-27    CIP2021         28-29    
		CIP2021_STEM_SUM 30-31    CMA             32-34    CONDO           35   
		COVID_ERB       36-43    COW             44   CQPPB           45-52    
		CapGn           53-60    CfSize          61   ChldC           62-69    
		CitOth          70-71    Citizen         72   DIST            73   
		DPGRSUM         74-75    DTYPE           76   EFDecile        77-78    
		EFInc           79-80    EFInc_AT        81-82    EICBN           83-90    
		ETHDER          91-92    EfDIMBM_2018    93-94    EfSize          95   
		EmpIn           96-103   FOL             104   FPTWK           105   
		Gender          106   GENSTAT         107   GovtI           108-115   
		GTRfs           116-123   HCORENEED_IND   124-126   HDGREE          127-128   
		HHInc           129-130   HHInc_AT        131-132   HHMRKINC        133-134   
		HHSIZE          135   HHTYPE          136-137   HLMOSTEN        138  
		HLMOSTFR        139   HLMOSTNO        140-141   HLREGEN         142   
		HLREGFR         143   HLREGNO         144   IMMCAT5         145-146   
		IMMSTAT         147-148   IncTax          149-156   Invst           157-164   
		JOBPERM         165   KOL             166   LFACT           167-168   
		LICO_BT         169   LICO_AT         170   LIPROGTYPE      171   
		LI_ELIG_OML_U18 172   LOCSTUD         173-174   LOC_ST_RES      175   
		LSTWRK          176   LWMOSTEN        177   LWMOSTFR        178   
		LWMOSTNO        179   LWREGEN         180   LWREGFR         181  
		LWREGNO         182   LoLIMA          183   LoLIMB          184   
		LOMBM_2018      185   MODE            186   MTNEn           187   
		MTNFr           188   MTNNO           189-190   MARSTH          191  
		Mob1            192   Mob5            193   MrkInc          194-201   
		NAICS           202-204   NOC21           205-206   NOL             207-208   
		NOS             209   OASGI           210-217   OtInc           218-225   
		PKID25          226   PKID0_1         227   PKID15_24       228   
		PKID2_5         229   PKID6_14        230   PKIDS           231   
		POB             232-233   POBPAR1         234   POBPAR2         235   
		POWST           236   PR              237-238   PR1             239-240   
		PR5             241-242   PRESMORTG       243   PRIHM           244   
		PWDUR           245   PWLEAVE         246   PWOCC           247   
		PWPR            248-249   REGIND          250   RELIG    251-252   
		REPAIR          253   ROOM            254-255   Retir           256-263   
		SHELCO          264-267   SSGRAD          268-269   SUBSIDY         270   
		SempI           271-278   TENUR           279   TotInc          280-287   
		TotInc_AT       288-295   VISMIN          296-297   Value           298-305   
		WKSWRK          306   WRKACT          307-308   Wages           309-316   
		YRIM           317-320   WEIGHT          321-336   WT1             337-352  
		WT2             353-368   WT3             369-384   WT4             385-400   
		WT5             401-416   WT6             417-432   WT7             433-448   
		WT8             449-464   WT9             465-480   WT10            481-496   
		WT11            497-512   WT12            513-528   WT13            529-544   
		WT14            545-560   WT15            561-576   WT16            577-592;

		LENGTH
		PPSORT	6	HLMOSTFR	3	POB	3
		ABOID	3	HLMOSTNO	3	POBPAR1	3
		AGEGRP	3	HLREGEN	3	POBPAR2	3
		AGEIMM	3	HLREGFR	3	POWST	3
		ATTSCH	3	HLREGNO	3	PR	3
		BFNMEMB	3	IMMCAT5	3	PR1	3
		BEDRM	3	IMMSTAT	3	PR5	3
		CFInc	3	IncTax	6	PRESMORTG	3
		CFInc_AT	3	Invst	6	PRIHM	3
		CFSTAT	3	JOBPERM	3	PWDUR	3
		CHDBN	6	KOL	3	PWLEAVE	3
		CIP2021	3	LFACT	3	PWOCC	3
		CIP2021_STEM_SUM	3	LICO_BT	3	PWPR	3
		CMA	4	LICO_AT	3	REGIND	3
		CONDO	3	LIPROGTYPE	3	RELIG	3
		COVID_ERB	6	LI_ELIG_OML_U18	3	REPAIR	3
		COW	3	LOCSTUD	3	ROOM	3
		CQPPB	6	LOC_ST_RES	3	Retir	6
		CapGn	6	LSTWRK	3	SHELCO	4
		CfSize	3	LWMOSTEN	3	SSGRAD	3
		ChldC	6	LWMOSTFR	3	SUBSIDY	3
		CitOth	3	LWMOSTNO	3	SempI	6
		Citizen	3	LWREGEN	3	TENUR	3
		DIST	3	LWREGFR	3	TotInc	6
		DPGRSUM	3	LWREGNO	3	TotInc_AT	6
		DTYPE	3	LoLIMA	3	VISMIN	3
		EFDecile	3	LoLIMB	3	Value	6
		EFInc	3	LOMBM_2018	3	WKSWRK	3
		EFInc_AT	3	MODE	3	WRKACT	3
		EICBN	6	MTNEn	3	Wages	6
		ETHDER	3	MTNFr	3	YRIM	4
		EfDIMBM_2018	3	MTNNO	3		
		EfSize	3	MARSTH	3		
		EmpIn	6	Mob1	3		
		FOL	3	Mob5	3		
		FPTWK	3	MrkInc	6		
		Gender	3	NAICS	3		
		GENSTAT	3	NOC21	3		
		GovtI	6	NOL	3		
		GTRfs	6	NOS	3		
		HCORENEED_IND	3	OASGI	6		
		HDGREE	3	OtInc	6		
		HHInc	3	PKID25	3		
		HHInc_AT	3	PKID0_1	3		
		HHMRKINC	3	PKID15_24	3		
		HHSIZE	3	PKID2_5	3		
		HHTYPE	3	PKID6_14	3		
		HLMOSTEN	3	PKIDS	3		
	;
	Label ABOID = "Indigenous: Indigenous identity - Detailed";
	Format ABOID ABOID.;
	Label AGEGRP = "Age";
	Format AGEGRP AGEGRP.;
	Label AGEIMM = "Immigration: Age at Immigration";
	Format AGEIMM AGEIMM.;
	Label ATTSCH = "Education: School attendance – Detailed";
	Format ATTSCH ATTSCH.;
	Label BEDRM = "Bedrooms";
	Format BEDRM BEDRM.;
	Label BFNMEMB = "Indigenous: Membership in a First Nation or Indian band";
	Format BFNMEMB BFNMEMB.;
	Label CAPGN = "Income: Net capital gains or losses";

	/* CAPGN is not qualitative and has no format */
	Label CFINC = "Income: Total income of census family for all persons";
	Format CFINC CFINC.;
	Label CFINC_AT = "Income: After-tax income of census family for all persons";
	Format CFINC_AT CFINC_AT.;
	Label CFSIZE = "Census family size, stored at the person level";
	Format CFSIZE CFSIZE.;
	Label CFSTAT = "Household living arrangements of person, simple version";
	Format CFSTAT CFSTAT.;
	Label CHDBN = "Income: Child benefits";

	/* CHDBN is not qualitative and has no format */
	Label CHLDC = "Income: Child care expenses paid";

	/* CHLDC is not qualitative and has no format */
	Label CIP2021 = "Education: Major field of study, primary groupings (based on CIP Canada 2021) ";
	Format CIP2021 CIP2021_.;
	Label CIP2021_STEM_SUM = "Education: Major field of study, STEM and BHASE (non-STEM) groupings - Summary (based on CIP Canada 2021)";
	Format CIP2021_STEM_SUM CIP2021_STEM_SUM.;
	Label CITIZEN = "Citizenship: Citizenship status and type – Summary";
	Format CITIZEN CITIZEN.;
	Label CITOTH = "Citizenship: Other country of citizenship";
	Format CITOTH CITOTH.;
	Label CMA = "Census metropolitan area or census agglomeration of current residence (2021)";
	Format CMA CMA.;
	Label COVID_ERB = "Emergency and recovery benefits (COVID-19)";
	/* COVID_ERB is not qualitative and has no format */
	Label CONDO = "Condominium status";
	Format CONDO CONDO.;
	Label COW = "Labour: Class of worker (derived)";
	Format COW COW.;
	Label CQPPB = "Income: Canada Pension Plan (CPP) and Quebec Pension Plan (QPP) benefits";

	/* CQPPB is not qualitative and has no format */
	Label DIST = "Commuting: Distance (straight-line) from home to work";
	Format DIST DIST.;
	Label DPGRSUM = "Population group";
	Format DPGRSUM DPGRSUM.;
	Label DTYPE = "Structural type of dwelling";
	Format DTYPE DTYPE.;
	Label EFDECILE = "Income: National economic family after-tax income decile for all persons";
	Format EFDECILE EFDECILE.;
	Label EFDIMBM_2018 = "Income: Disposable income for 2018-base MBM of economic family for all persons";
	Format EFDIMBM_2018 EFDIMBM_2018_.;
	Label EFINC = "Income: Total income of economic family for all persons";
	Format EFINC EFINC.;
	Label EFINC_AT = "Income: After-tax income of economic family for all persons";
	Format EFINC_AT EFINC_AT.;
	Label EFSIZE = "Economic family size, stored at the person level";
	Format EFSIZE EFSIZE.;
	Label EICBN = "Income: Employment Insurance (EI) benefits";

	/* EICBN is not qualitative and has no format */
	Label EMPIN = "Income: Employment income";

	/* EMPIN is not qualitative and has no format */
	Label ETHDER = "Ethnic or cultural origin: Derived single and selected multiple ethnic or cultural origins";
	Format ETHDER ETHDER.;
	Label FOL = "Language: First official language spoken";
	Format FOL FOL.;
	Label FPTWK = "Labour: Full-time or part-time weeks worked in 2020";
	Format FPTWK FPTWK.;
	Label Gender ="Gender of person (binary)";
	Format Gender Gender.;
	Label GENSTAT = "Generation status: Detailed";
	Format GENSTAT GENSTAT.;
	Label GOVTI = "Income: Other income from government sources";

	/* GOVTI is not qualitative and has no format */
	Label GTRFS = "Income: Government transfers";

	/* GTRFS is not qualitative and has no format */
	Label HCORENEED_IND = "Housing core need indicator";
	Format HCORENEED_IND HCORENEED_IND.;
	Label HDGREE = "Education: Highest certificate, diploma or degree";
	Format HDGREE HDGREE.;
	Label HHINC = "Income: Total income of household for all persons";
	Format HHINC HHINC.;
	Label HHINC_AT = "Income: After-tax income of household";
	Format HHINC_AT HHINC_AT.;
	Label HHMRKINC = "Income: Market income of household";
	Format HHMRKINC HHMRKINC.;
	Label HHSIZE = "Household size";
	Format HHSIZE HHSIZE.;
	Label HHTYPE = "Household type";
	Format HHTYPE HHTYPE.;
	Label HLMOSTEN = "Language: Language spoken most often at home - English component";
	Format HLMOSTEN HLMOSTEN.;
	Label HLMOSTFR = "Language: Language spoken most often at home - French component";
	Format HLMOSTFR HLMOSTFR.;
	Label HLMOSTNO = "Language: Language spoken most often at home - First write-in component";
	Format HLMOSTNO HLMOSTNO.;
	Label HLREGEN = "Language: Other language(s) spoken regularly at home - English component";
	Format HLREGEN HLREGEN.;
	Label HLREGFR = "Language: Other language(s) spoken regularly at home - French component";
	Format HLREGFR HLREGFR.;
	Label HLREGNO = "Language: Other language(s) spoken regularly at home - First write-in component";
	Format HLREGNO HLREGNO.;
	Label IMMCAT5 = "Immigration: Admission category – Summary";
	Format IMMCAT5 IMMCAT5_.;
	Label IMMSTAT = "Immigration: Immigrant status";
	Format IMMSTAT IMMSTAT.;
	Label INCTAX = "Income: Income taxes";

	/* INCTAX is not qualitative and has no format */
	Label INVST = "Income: Investment income";
	/* INVST is not qualitative and has no format */

	Label JOBPERM = "Labour: Job permanency";
	Format JOBPERM JOBPERM.;

	Label KOL = "Language: Knowledge of official languages";
	Format KOL KOL.;
	Label LFACT = "Labour: Labour force status - Detailed";
	Format LFACT LFACT.;
	Label LICO_BT = "Income: Low-income status based on LICO-BT";
	Format LICO_BT LICO_BT.;
	Label LICO_AT = "Income: Low-income status based on LICO-AT";
	Format LICO_AT LICO_AT.;
	Label LIPROGTYPE = "Language: Type of French program attended in Canada by residents of Canada outside Quebec";
	Format LIPROGTYPE LIPROGTYPE.;
	Label LI_ELIG_OML_U18 = "Language: Eligibility for instruction in the minority official language";
	Format LI_ELIG_OML_U18 LI_ELIG_OML_U18_.;
	Label LOCSTUD = "Education: Location of study";
	Format LOCSTUD LOCSTUD.;
	Label LOC_ST_RES = "Education: Location of study compared with province or territory of residence – Summary";
	Format LOC_ST_RES LOC_ST_RES.;
	Label LOLIMA = "Income: Low-income status based on LIM-AT";
	Format LOLIMA LOLIMA.;
	Label LOLIMB = "Income: Low-income status based on LIM-BT";
	Format LOLIMB LOLIMB.;
	Label LOMBM_2018 = "Income: Poverty status based on 2018-base MBM";
	Format LOMBM_2018 LOMBM_2018_.;
	Label LSTWRK = "Labour: When last worked for pay or in self-employment";
	Format LSTWRK LSTWRK.;
	Label LWMOSTEN = "Language: Language used most often at work - English component";
	Format LWMOSTEN LWMOSTEN.;
	Label LWMOSTFR = "Language: Language used most often at work - French component";
	Format LWMOSTFR LWMOSTFR.;
	Label LWMOSTNO = "Language: Language used most often at work - First write-in component";
	Format LWMOSTNO LWMOSTNO.;
	Label LWREGEN = "Language: Other language(s) used regularly at work - English component";
	Format LWREGEN LWREGEN.;
	Label LWREGFR = "Language: Other language(s) used regularly at work - French component";
	Format LWREGFR LWREGFR.;
	Label LWREGNO = "Language: Other language(s) used regularly at work - First write-in component";
	Format LWREGNO LWREGNO.;
	Label MARSTH = "Marital status (de facto)";
	Format MARSTH MARSTH.;
	Label MOB1 = "Mobility 1: Mobility Status – Place of residence 1 year ago (2020)";
	Format MOB1 MOB1_.;
	Label MOB5 = "Mobility 5: Mobility Status – Place of residence 5 years ago (2016)";
	Format MOB5 MOB5_.;
	Label MODE = "Commuting: Main mode of commuting";
	Format MODE MODE.;
	Label MRKINC = "Income: Market income";

	/* MRKINC is not qualitative and has no format */
	Label MTNEN = "Language: Mother tongue – English component";
	Format MTNEN MTNEN.;
	Label MTNFR = "Language: Mother tongue – French component";
	Format MTNFR MTNFR.;
	Label MTNNO = "Language: Mother Tongue – First write-in component";
	Format MTNNO MTNNO.;
	Label NAICS = "Labour: Industry sectors (based on the North American Industry Classification System [NAICS] Canada 2017 version 3.0)";
	Format NAICS NAICS.;
	Label NOC21 = "Labour: Occupation Major Group (based on the National Occupational Classification [NOC] 2021 version 1.0)";
	Format NOC21 NOC21_.;
	Label NOL = "Language: Knowledge of non-official languages – First write-in component";
	Format NOL NOL.;
	Label NOS = "Housing suitability";
	Format NOS NOS.;
	Label OASGI = "Income: Old Age Security pension (OAS) and Guaranteed Income Supplement (GIS)";

	/* OASGI is not qualitative and has no format */
	Label OtInc = "Income: Market income not included elsewhere";

	/* OtInc is not qualitative and has no format */
	Label PKID0_1 = "Number of children in census family aged 0 or 1";
	Format PKID0_1 PKID0_1_.;
	Label PKID15_24 = "Number of children in census family aged 15 to 24";
	Format PKID15_24 PKID15_24_.;
	Label PKID25 = "Number of children in census family aged 25 and over";
	Format PKID25 PKID25_.;
	Label PKID2_5 = "Number of children in census family aged 2 to 5";
	Format PKID2_5 PKID2_5_.;
	Label PKID6_14 = "Number of children in census family aged 6 to 14";
	Format PKID6_14 PKID6_14_.;
	Label PKIDS = "Indicator of whether any children are present in census family";
	Format PKIDS PKIDS.;
	Label POB = "Place of birth of person";
	Format POB POB.;
	Label POBPAR1 = "Place of birth of parent 1";
	Format POBPAR1 POBPAR1_.;
	Label POBPAR2 = "Place of birth of parent 2";
	Format POBPAR2 POBPAR2_.;
	Label POWST = "Commuting: Place of work status";
	Format POWST POWST.;
	Label PPSORT = "Unique record identifier";

	/* PPSORT is not qualitative and has no format */
	Label PR = "Province or territory of current residence (2021)";
	Format PR PR.;
	Label PR1 = "Mobility 1: Province or territory of residence 1 year ago (2020)";
	Format PR1 PR1_.;
	Label PR5 = "Mobility 5: Province or territory of residence 5 years ago (2016)";
	Format PR5 PR5_.;
	Label PRESMORTG = "Mortgage, presence of";
	Format PRESMORTG PRESMORTG.;
	Label PRIHM = "Primary household maintainer";
	Format PRIHM PRIHM.;
	Label PWDUR = "Commuting: Commuting duration";
	Format PWDUR PWDUR.;
	Label PWLEAVE = "Commuting: Time leaving for work";
	Format PWLEAVE PWLEAVE.;
	Label PWOCC = "Commuting: Commuting vehicle occupancy";
	Format PWOCC PWOCC.;
	Label PWPR = "POW: Place of work province";
	Format PWPR PWPR.;
	Label RELIG = "Religion: Aggregated responses";
	Format RELIG RELIG.;
	Label REGIND = "Indigenous: Registered or Treaty Indian status";
	Format REGIND REGIND.;
	Label REPAIR = "Dwelling condition";
	Format REPAIR REPAIR.;
	Label RETIR = "Income: Private retirement income";

	/* RETIR is not qualitative and has no format */
	Label ROOM = "Rooms";
	Format ROOM ROOM.;
	Label SEMPI = "Income: Net self-employment income";

	/* SEMPI is not qualitative and has no format */
	Label SHELCO = "Shelter cost";

	/* SHELCO is not qualitative and has no format */
	Label SSGRAD = "Education: Secondary (high) school diploma or equivalency certificate";
	Format SSGRAD SSGRAD.;
	Label SUBSIDY = "Subsidized housing";
	Format SUBSIDY SUBSIDY.;
	Label TENUR = "Tenure";
	Format TENUR TENUR.;
	Label TOTINC = "Income: Total income";

	/* TOTINC is not qualitative and has no format */
	Label TOTINC_AT = "Income: After-tax income";

	/* TOTINC_AT is not qualitative and has no format */
	Label VALUE = "Value (owner estimated)";

	/* VALUE is not qualitative and has no format */
	Label VISMIN = "Visible minority";
	Format VISMIN VISMIN.;
	Label WAGES = "Income: Wages, salaries and commissions";

	/* WAGES is not qualitative and has no format */
	Label WEIGHT = "Individuals weighting factor";

	/* WEIGHT is not qualitative and has no format */
	Label WKSWRK = "Labour: Weeks worked during the reference year";
	Format WKSWRK WKSWRK.;
	Label WRKACT = "Labour: Work activity during the reference year";
	Format WRKACT WRKACT.;
	Label WT1 = "Replicate PUMF weight";

	/* WT1 is not qualitative and has no format */
	Label WT2 = "Replicate PUMF weight";

	/* WT2 is not qualitative and has no format */
	Label WT3 = "Replicate PUMF weight";

	/* WT3 is not qualitative and has no format */
	Label WT4 = "Replicate PUMF weight";

	/* WT4 is not qualitative and has no format */
	Label WT5 = "Replicate PUMF weight";

	/* WT5 is not qualitative and has no format */
	Label WT6 = "Replicate PUMF weight";

	/* WT6 is not qualitative and has no format */
	Label WT7 = "Replicate PUMF weight";

	/* WT7 is not qualitative and has no format */
	Label WT8 = "Replicate PUMF weight";

	/* WT8 is not qualitative and has no format */
	Label WT9 = "Replicate PUMF weight";

	/* WT9 is not qualitative and has no format */
	Label WT10 = "Replicate PUMF weight";

	/* WT10 is not qualitative and has no format */
	Label WT11 = "Replicate PUMF weight";

	/* WT11 is not qualitative and has no format */
	Label WT12 = "Replicate PUMF weight";

	/* WT12 is not qualitative and has no format */
	Label WT13 = "Replicate PUMF weight";

	/* WT13 is not qualitative and has no format */
	Label WT14 = "Replicate PUMF weight";

	/* WT14 is not qualitative and has no format */
	Label WT15 = "Replicate PUMF weight";

	/* WT15 is not qualitative and has no format */
	Label WT16 = "Replicate PUMF weight";

	/* WT16 is not qualitative and has no format */
	Label YRIM = "Immigration: Year of immigration";
	Format YRIM YRIM.;
RUN;