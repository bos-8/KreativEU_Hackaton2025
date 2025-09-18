-- =========================
-- ITALY: 20 POIs (base)
-- =========================
INSERT INTO poi (id, country_code, lat, lng, nice_score, visit_time) VALUES
  (1,  'IT', 41.8902, 12.4922, 5, 120), -- Colosseum (Rome)
  (2,  'IT', 41.9009, 12.4833, 5,  45), -- Trevi Fountain (Rome)
  (3,  'IT', 41.8986, 12.4769, 5,  60), -- Pantheon (Rome)
  (4,  'IT', 41.8992, 12.4731, 4,  45), -- Piazza Navona (Rome)
  (5,  'IT', 45.4642,  9.1900, 5,  60), -- Duomo di Milano (Milan Cathedral)
  (6,  'IT', 45.4659,  9.1906, 4,  45), -- Galleria Vittorio Emanuele II (Milan)
  (7,  'IT', 45.4705,  9.1799, 4,  60), -- Sforza Castle (Milan)
  (8,  'IT', 43.7731, 11.2552, 5,  60), -- Florence Cathedral (Duomo)
  (9,  'IT', 43.7687, 11.2550, 5, 120), -- Uffizi Gallery (Florence)
  (10, 'IT', 43.7679, 11.2531, 5,  45), -- Ponte Vecchio (Florence)
  (11, 'IT', 43.7629, 11.2659, 4,  45), -- Piazzale Michelangelo (Florence)
  (12, 'IT', 43.7230, 10.3966, 5,  45), -- Leaning Tower of Pisa
  (13, 'IT', 43.3188, 11.3316, 4,  60), -- Piazza del Campo (Siena)
  (14, 'IT', 45.4341, 12.3397, 5,  60), -- St Mark's Basilica (Venice)
  (15, 'IT', 45.4380, 12.3358, 5,  45), -- Rialto Bridge (Venice)
  (16, 'IT', 45.4370, 12.3346, 5,  60), -- Grand Canal (Venice)
  (17, 'IT', 40.7497, 14.4869, 5, 120), -- Pompeii Archaeological Park
  (18, 'IT', 40.8224, 14.4289, 4,  75), -- Mount Vesuvius Crater Viewpoint
  (19, 'IT', 40.6340, 14.6020, 5,  60), -- Amalfi Town Center
  (20, 'IT', 44.1350,  9.6830, 5,  60); -- Vernazza Viewpoint (Cinque Terre)

-- =======================================
-- Translations (en, it, pt, pl) — 80 rows
-- =======================================

-- (1) Colosseum
INSERT INTO poi_i18n (id_poi_i18n, poi_id, lang, name, description) VALUES
  (10001, 1, 'en', 'Colosseum', 'Ancient Roman amphitheatre in Rome.'),
  (10002, 1, 'it', 'Colosseo', 'Antico anfiteatro romano a Roma.'),
  (10003, 1, 'pt', 'Coliseu', 'Antigo anfiteatro romano em Roma.'),
  (10004, 1, 'pl', 'Koloseum', 'Starożytny amfiteatr w Rzymie.');

-- (2) Trevi Fountain
INSERT INTO poi_i18n VALUES
  (10005, 2, 'en', 'Trevi Fountain', 'Baroque fountain famed for coin tossing.'),
  (10006, 2, 'it', 'Fontana di Trevi', 'Fontana barocca celebre per il lancio di monete.'),
  (10007, 2, 'pt', 'Fonte de Trevi', 'Fonte barroca famosa pelas moedas.'),
  (10008, 2, 'pl', 'Fontanna di Trevi', 'Barokowa fontanna słynna z wrzucania monet.');

-- (3) Pantheon
INSERT INTO poi_i18n VALUES
  (10009, 3, 'en', 'Pantheon', 'Roman temple with a vast oculus.'),
  (10010, 3, 'it', 'Pantheon', 'Tempio romano con grande oculo.'),
  (10011, 3, 'pt', 'Panteão', 'Templo romano com grande óculo.'),
  (10012, 3, 'pl', 'Panteon', 'Rzymska świątynia z oculusem.');

-- (4) Piazza Navona
INSERT INTO poi_i18n VALUES
  (10013, 4, 'en', 'Piazza Navona', 'Elegant square with Bernini fountains.'),
  (10014, 4, 'it', 'Piazza Navona', 'Elegante piazza con le fontane del Bernini.'),
  (10015, 4, 'pt', 'Praça Navona', 'Praça elegante com fontes de Bernini.'),
  (10016, 4, 'pl', 'Plac Navona', 'Elegancki plac z fontannami Berniniego.');

-- (5) Duomo di Milano
INSERT INTO poi_i18n VALUES
  (10017, 5, 'en', 'Milan Cathedral', 'Gothic cathedral with marble spires.'),
  (10018, 5, 'it', 'Duomo di Milano', 'Cattedrale gotica dalle guglie di marmo.'),
  (10019, 5, 'pt', 'Catedral de Milão', 'Catedral gótica com pináculos de mármore.'),
  (10020, 5, 'pl', 'Katedra w Mediolanie', 'Gotycka katedra z marmurowymi iglicami.');

-- (6) Galleria Vittorio Emanuele II
INSERT INTO poi_i18n VALUES
  (10021, 6, 'en', 'Galleria Vittorio Emanuele II', '19th-century arcade with glass dome.'),
  (10022, 6, 'it', 'Galleria Vittorio Emanuele II', 'Galleria ottocentesca con cupola in vetro.'),
  (10023, 6, 'pt', 'Galeria Vittorio Emanuele II', 'Galeria do século XIX com cúpula de vidro.'),
  (10024, 6, 'pl', 'Galeria Vittorio Emanuela II', 'XIX-wieczna galeria ze szklaną kopułą.');

-- (7) Sforza Castle
INSERT INTO poi_i18n VALUES
  (10025, 7, 'en', 'Sforza Castle', 'Renaissance fortress and museums.'),
  (10026, 7, 'it', 'Castello Sforzesco', 'Fortezza rinascimentale con musei.'),
  (10027, 7, 'pt', 'Castelo Sforzesco', 'Fortaleza renascentista com museus.'),
  (10028, 7, 'pl', 'Zamek Sforzów', 'Renesansowa twierdza i muzea.');

-- (8) Florence Cathedral
INSERT INTO poi_i18n VALUES
  (10029, 8, 'en', 'Florence Cathedral (Duomo)', 'Brunelleschi’s dome crowns the skyline.'),
  (10030, 8, 'it', 'Cattedrale di Santa Maria del Fiore', 'La cupola del Brunelleschi domina la città.'),
  (10031, 8, 'pt', 'Catedral de Florença (Duomo)', 'A cúpula de Brunelleschi domina o horizonte.'),
  (10032, 8, 'pl', 'Katedra Santa Maria del Fiore', 'Kopuła Brunelleschiego góruje nad miastem.');

-- (9) Uffizi Gallery
INSERT INTO poi_i18n VALUES
  (10033, 9, 'en', 'Uffizi Gallery', 'Masterpieces of Renaissance art.'),
  (10034, 9, 'it', 'Galleria degli Uffizi', 'Capolavori dell’arte rinascimentale.'),
  (10035, 9, 'pt', 'Galeria Uffizi', 'Obras-primas do Renascimento.'),
  (10036, 9, 'pl', 'Galeria Uffizi', 'Arcydzieła sztuki renesansu.');

-- (10) Ponte Vecchio
INSERT INTO poi_i18n VALUES
  (10037,10, 'en', 'Ponte Vecchio', 'Medieval bridge lined with shops.'),
  (10038,10, 'it', 'Ponte Vecchio', 'Ponte medievale fiancheggiato da botteghe.'),
  (10039,10, 'pt', 'Ponte Vecchio', 'Ponte medieval com lojas.'),
  (10040,10, 'pl', 'Ponte Vecchio', 'Średniowieczny most z zabudową.');

-- (11) Piazzale Michelangelo
INSERT INTO poi_i18n VALUES
  (10041,11, 'en', 'Piazzale Michelangelo', 'Panoramic terrace over Florence.'),
  (10042,11, 'it', 'Piazzale Michelangelo', 'Terrazza panoramica su Firenze.'),
  (10043,11, 'pt', 'Praça Michelangelo', 'Terraço panorâmico sobre Florença.'),
  (10044,11, 'pl', 'Piazzale Michelangelo', 'Taras widokowy na Florencję.');

-- (12) Leaning Tower of Pisa
INSERT INTO poi_i18n VALUES
  (10045,12, 'en', 'Leaning Tower of Pisa', 'Famous tilted bell tower.'),
  (10046,12, 'it', 'Torre Pendente di Pisa', 'Celebre campanile inclinato.'),
  (10047,12, 'pt', 'Torre Inclinada de Pisa', 'Famoso campanário inclinado.'),
  (10048,12, 'pl', 'Krzywa Wieża w Pizie', 'Słynna pochylona dzwonnica.');

-- (13) Piazza del Campo
INSERT INTO poi_i18n VALUES
  (10049,13, 'en', 'Piazza del Campo', 'Shell-shaped medieval square.'),
  (10050,13, 'it', 'Piazza del Campo', 'Piazza medievale a forma di conchiglia.'),
  (10051,13, 'pt', 'Praça del Campo', 'Praça medieval em forma de concha.'),
  (10052,13, 'pl', 'Plac del Campo', 'Średniowieczny plac w kształcie muszli.');

-- (14) St Mark's Basilica
INSERT INTO poi_i18n VALUES
  (10053,14, 'en', 'St Mark''s Basilica', 'Byzantine-influenced cathedral of Venice.'),
  (10054,14, 'it', 'Basilica di San Marco', 'Cattedrale di Venezia d’ispirazione bizantina.'),
  (10055,14, 'pt', 'Basílica de São Marcos', 'Catedral de Veneza com influência bizantina.'),
  (10056,14, 'pl', 'Bazylika św. Marka', 'Katedra Wenecji o wpływach bizantyjskich.');

-- (15) Rialto Bridge
INSERT INTO poi_i18n VALUES
  (10057,15, 'en', 'Rialto Bridge', 'Historic stone arch over the Grand Canal.'),
  (10058,15, 'it', 'Ponte di Rialto', 'Storico arco in pietra sul Canal Grande.'),
  (10059,15, 'pt', 'Ponte de Rialto', 'Arco de pedra histórico sobre o Grande Canal.'),
  (10060,15, 'pl', 'Most Rialto', 'Zabytkowy kamienny most nad Canale Grande.');

-- (16) Grand Canal
INSERT INTO poi_i18n VALUES
  (10061,16, 'en', 'Grand Canal', 'Venice’s main waterway.'),
  (10062,16, 'it', 'Canal Grande', 'La principale via d’acqua di Venezia.'),
  (10063,16, 'pt', 'Grande Canal', 'Principal via aquática de Veneza.'),
  (10064,16, 'pl', 'Wielki Kanał', 'Główna droga wodna Wenecji.');

-- (17) Pompeii Archaeological Park
INSERT INTO poi_i18n VALUES
  (10065,17, 'en', 'Pompeii Archaeological Park', 'Ancient city buried by Vesuvius.'),
  (10066,17, 'it', 'Parco Archeologico di Pompei', 'Antica città sepolta dal Vesuvio.'),
  (10067,17, 'pt', 'Parque Arqueológico de Pompeia', 'Antiga cidade soterrada pelo Vesúvio.'),
  (10068,17, 'pl', 'Park Archeologiczny w Pompejach', 'Antyczne miasto zasypane przez Wezuwiusz.');

-- (18) Mount Vesuvius Viewpoint
INSERT INTO poi_i18n VALUES
  (10069,18, 'en', 'Mount Vesuvius Crater Viewpoint', 'Lookout over the volcanic crater.'),
  (10070,18, 'it', 'Vesuvio – Belvedere del Cratere', 'Punto panoramico sul cratere vulcanico.'),
  (10071,18, 'pt', 'Vesúvio – Miradouro da Cratera', 'Miradouro sobre a cratera vulcânica.'),
  (10072,18, 'pl', 'Wezuwiusz – punkt widokowy', 'Punkt widokowy na krater wulkanu.');

-- (19) Amalfi Town Center
INSERT INTO poi_i18n VALUES
  (10073,19, 'en', 'Amalfi Town Center', 'Scenic lanes and seaside piazza.'),
  (10074,19, 'it', 'Centro Storico di Amalfi', 'Vicoli pittoreschi e piazza sul mare.'),
  (10075,19, 'pt', 'Centro de Amalfi', 'Ruas pitorescas e praça à beira-mar.'),
  (10076,19, 'pl', 'Centrum Amalfi', 'Malownicze uliczki i nadmorski plac.');

-- (20) Vernazza Viewpoint (Cinque Terre)
INSERT INTO poi_i18n VALUES
  (10077,20, 'en', 'Vernazza Viewpoint (Cinque Terre)', 'Clifftop views of colorful harbor.'),
  (10078,20, 'it', 'Belvedere di Vernazza (Cinque Terre)', 'Vedute a picco sul porto colorato.'),
  (10079,20, 'pt', 'Miradouro de Vernazza (Cinque Terre)', 'Vistas de penhasco do porto colorido.'),
  (10080,20, 'pl', 'Punkt widokowy Vernazza (Cinque Terre)', 'Klifowy widok na kolorowy port.');


-- =========================
-- PORTUGAL: 20 POIs (base)
-- =========================
INSERT INTO poi (id, country_code, lat, lng, nice_score, visit_time) VALUES
  (21, 'PT', 38.6979,  -9.2065, 5,  60),  -- Jerónimos Monastery (Lisbon)
  (22, 'PT', 38.6916,  -9.2159, 5,  45),  -- Belém Tower (Lisbon)
  (23, 'PT', 38.7139,  -9.1335, 4,  60),  -- São Jorge Castle (Lisbon)
  (24, 'PT', 38.7226,  -9.1310, 4,  45),  -- Senhora do Monte Viewpoint (Lisbon)
  (25, 'PT', 38.7078,  -9.1366, 4,  45),  -- Praça do Comércio (Lisbon)
  (26, 'PT', 38.7036,  -9.1780, 4,  60),  -- LX Factory (Lisbon)
  (27, 'PT', 38.7636,  -9.0950, 5, 120),  -- Lisbon Oceanarium
  (28, 'PT', 38.7875,  -9.3907, 5,  90),  -- Pena Palace (Sintra)
  (29, 'PT', 38.7974,  -9.3977, 5,  90),  -- Quinta da Regaleira (Sintra)
  (30, 'PT', 38.7925,  -9.3903, 4,  60),  -- Moorish Castle (Sintra)
  (31, 'PT', 38.7804,  -9.4989, 5,  45),  -- Cabo da Roca
  (32, 'PT', 38.6969,  -9.4210, 4,  60),  -- Cascais Old Town
  (33, 'PT', 41.1409,  -8.6091, 5,  45),  -- Dom Luís I Bridge (Porto)
  (34, 'PT', 41.1403,  -8.6110, 5,  60),  -- Ribeira District (Porto)
  (35, 'PT', 41.1471,  -8.6147, 4,  45),  -- Livraria Lello (Porto)
  (36, 'PT', 41.1455,  -8.6140, 4,  45),  -- Clérigos Tower (Porto)
  (37, 'PT', 41.1631,  -7.7896, 5,  90),  -- Douro Valley Viewpoint (Peso da Régua)
  (38, 'PT', 40.2081,  -8.4265, 4,  60),  -- University of Coimbra
  (39, 'PT', 38.5716,  -7.9079, 4,  45),  -- Roman Temple of Évora
  (40, 'PT', 37.0805,  -8.6697, 5,  60);  -- Ponta da Piedade (Lagos)

-- =======================================
-- Translations (en, it, pt, pl) — IDs 10081..10160
-- =======================================

-- (21) Jerónimos Monastery
INSERT INTO poi_i18n (id_poi_i18n, poi_id, lang, name, description) VALUES
  (10081, 21, 'en', 'Jerónimos Monastery', 'Manueline monastery in Belém, Lisbon.'),
  (10082, 21, 'it', 'Mosteiro dos Jerónimos', 'Monastero manuelino a Belém, Lisbona.'),
  (10083, 21, 'pt', 'Mosteiro dos Jerónimos', 'Mosteiro manuelino em Belém, Lisboa.'),
  (10084, 21, 'pl', 'Klasztor Hieronimitów', 'Klasztor w stylu manuelińskim w dzielnicy Belém w Lizbonie.');

-- (22) Belém Tower
INSERT INTO poi_i18n VALUES
  (10085, 22, 'en', 'Belém Tower', '16th-century riverside fortress in Lisbon.'),
  (10086, 22, 'it', 'Torre de Belém', 'Fortezza sul fiume del XVI secolo a Lisbona.'),
  (10087, 22, 'pt', 'Torre de Belém', 'Fortaleza ribeirinha do século XVI em Lisboa.'),
  (10088, 22, 'pl', 'Wieża Belém', 'Nadbrzeżna fortyfikacja z XVI wieku w Lizbonie.');

-- (23) São Jorge Castle
INSERT INTO poi_i18n VALUES
  (10089, 23, 'en', 'São Jorge Castle', 'Hilltop castle overlooking Lisbon.'),
  (10090, 23, 'it', 'Castello di São Jorge', 'Castello sulla collina con vista su Lisbona.'),
  (10091, 23, 'pt', 'Castelo de São Jorge', 'Castelo no topo da colina com vista para Lisboa.'),
  (10092, 23, 'pl', 'Zamek św. Jerzego', 'Zamek na wzgórzu z widokiem na Lizbonę.');

-- (24) Senhora do Monte Viewpoint
INSERT INTO poi_i18n VALUES
  (10093, 24, 'en', 'Senhora do Monte Viewpoint', 'Panoramic lookout over Lisbon.'),
  (10094, 24, 'it', 'Belvedere da Senhora do Monte', 'Punto panoramico su Lisbona.'),
  (10095, 24, 'pt', 'Miradouro da Senhora do Monte', 'Miradouro com vista panorâmica sobre Lisboa.'),
  (10096, 24, 'pl', 'Punkt widokowy Senhora do Monte', 'Panoramiczny punkt widokowy na Lizbonę.');

-- (25) Praça do Comércio
INSERT INTO poi_i18n VALUES
  (10097, 25, 'en', 'Commerce Square (Praça do Comércio)', 'Historic riverside square in Lisbon.'),
  (10098, 25, 'it', 'Piazza del Commercio (Praça do Comércio)', 'Storica piazza sul fiume a Lisbona.'),
  (10099, 25, 'pt', 'Praça do Comércio', 'Histórica praça ribeirinha de Lisboa.'),
  (10100, 25, 'pl', 'Plac Handlowy (Praça do Comércio)', 'Zabytkowy plac nad rzeką w Lizbonie.');

-- (26) LX Factory
INSERT INTO poi_i18n VALUES
  (10101, 26, 'en', 'LX Factory', 'Trendy creative hub in former industrial site.'),
  (10102, 26, 'it', 'LX Factory', 'Polo creativo alla moda in area industriale riconvertita.'),
  (10103, 26, 'pt', 'LX Factory', 'Polo criativo na antiga zona industrial.'),
  (10104, 26, 'pl', 'LX Factory', 'Modne centrum kreatywne w dawnej strefie przemysłowej.');

-- (27) Lisbon Oceanarium
INSERT INTO poi_i18n VALUES
  (10105, 27, 'en', 'Lisbon Oceanarium', 'Large, family-friendly aquarium at Parque das Nações.'),
  (10106, 27, 'it', 'Oceanario di Lisbona', 'Grande acquario per famiglie al Parque das Nações.'),
  (10107, 27, 'pt', 'Oceanário de Lisboa', 'Grande aquário familiar no Parque das Nações.'),
  (10108, 27, 'pl', 'Oceanarium w Lizbonie', 'Duże oceanarium przy Parque das Nações.');

-- (28) Pena Palace
INSERT INTO poi_i18n VALUES
  (10109, 28, 'en', 'Pena Palace', 'Colorful Romanticist palace above Sintra.'),
  (10110, 28, 'it', 'Palácio da Pena', 'Colorato palazzo romanticista sopra Sintra.'),
  (10111, 28, 'pt', 'Palácio da Pena', 'Colorido palácio romântico sobre Sintra.'),
  (10112, 28, 'pl', 'Pałac Pena', 'Kolorowy pałac w stylu romantycznym nad Sintrą.');

-- (29) Quinta da Regaleira
INSERT INTO poi_i18n VALUES
  (10113, 29, 'en', 'Quinta da Regaleira', 'Mystical gardens, tunnels and Initiation Well.'),
  (10114, 29, 'it', 'Quinta da Regaleira', 'Giardini mistici, tunnel e Pozzo Iniziatico.'),
  (10115, 29, 'pt', 'Quinta da Regaleira', 'Jardins místicos, túneis e Poço Iniciático.'),
  (10116, 29, 'pl', 'Quinta da Regaleira', 'Mistyczne ogrody, tunele i Studnia Inicjacji.');

-- (30) Moorish Castle
INSERT INTO poi_i18n VALUES
  (10117, 30, 'en', 'Moorish Castle', 'Medieval hilltop fortress above Sintra.'),
  (10118, 30, 'it', 'Castello dei Mori', 'Fortezza medievale sulla collina sopra Sintra.'),
  (10119, 30, 'pt', 'Castelo dos Mouros', 'Fortaleza medieval no alto de Sintra.'),
  (10120, 30, 'pl', 'Zamek Maurów', 'Średniowieczna twierdza nad Sintrą.');

-- (31) Cabo da Roca
INSERT INTO poi_i18n VALUES
  (10121, 31, 'en', 'Cabo da Roca', 'Westernmost point of mainland Europe.'),
  (10122, 31, 'it', 'Cabo da Roca', 'Il punto più occidentale dell’Europa continentale.'),
  (10123, 31, 'pt', 'Cabo da Roca', 'Ponto mais ocidental da Europa continental.'),
  (10124, 31, 'pl', 'Przylądek Roca', 'Najbardziej na zachód wysunięty punkt Europy kontynentalnej.');

-- (32) Cascais Old Town
INSERT INTO poi_i18n VALUES
  (10125, 32, 'en', 'Cascais Old Town', 'Seaside lanes, squares and cafés.'),
  (10126, 32, 'it', 'Centro storico di Cascais', 'Vicoli sul mare, piazze e caffè.'),
  (10127, 32, 'pt', 'Centro histórico de Cascais', 'Ruas à beira-mar, praças e cafés.'),
  (10128, 32, 'pl', 'Stare miasto Cascais', 'Nadmorskie uliczki, place i kawiarnie.');

-- (33) Dom Luís I Bridge
INSERT INTO poi_i18n VALUES
  (10129, 33, 'en', 'Dom Luís I Bridge', 'Double-deck iron bridge over the Douro.'),
  (10130, 33, 'it', 'Ponte Dom Luís I', 'Ponte in ferro a due livelli sul Douro.'),
  (10131, 33, 'pt', 'Ponte Dom Luís I', 'Ponte metálico de dois tabuleiros sobre o Douro.'),
  (10132, 33, 'pl', 'Most Dom Luís I', 'Dwupoziomowy żelazny most nad Douro.');

-- (34) Ribeira District
INSERT INTO poi_i18n VALUES
  (10133, 34, 'en', 'Ribeira District', 'Historic waterfront quarter of Porto.'),
  (10134, 34, 'it', 'Quartiere Ribeira', 'Storico quartiere sul lungofiume di Porto.'),
  (10135, 34, 'pt', 'Bairro da Ribeira', 'Histórico bairro ribeirinho do Porto.'),
  (10136, 34, 'pl', 'Dzielnica Ribeira', 'Zabytkowa nadbrzeżna dzielnica Porto.');

-- (35) Livraria Lello
INSERT INTO poi_i18n VALUES
  (10137, 35, 'en', 'Livraria Lello', 'Ornate historic bookshop with grand staircase.'),
  (10138, 35, 'it', 'Livraria Lello', 'Storica libreria decorata con grande scalinata.'),
  (10139, 35, 'pt', 'Livraria Lello', 'Histórica livraria ornamentada com grande escadaria.'),
  (10140, 35, 'pl', 'Livraria Lello', 'Zabytkowa księgarnia z imponującymi schodami.');

-- (36) Clérigos Tower
INSERT INTO poi_i18n VALUES
  (10141, 36, 'en', 'Clérigos Tower', 'Baroque bell tower with city views.'),
  (10142, 36, 'it', 'Torre dos Clérigos', 'Campanile barocco con viste sulla città.'),
  (10143, 36, 'pt', 'Torre dos Clérigos', 'Torre sineira barroca com vistas da cidade.'),
  (10144, 36, 'pl', 'Wieża Clérigos', 'Barokowa dzwonnica z widokiem na miasto.');

-- (37) Douro Valley Viewpoint
INSERT INTO poi_i18n VALUES
  (10145, 37, 'en', 'Douro Valley Viewpoint', 'Vineyard landscapes and river bends.'),
  (10146, 37, 'it', 'Belvedere della Valle del Douro', 'Paesaggi di vigneti e anse del fiume.'),
  (10147, 37, 'pt', 'Miradouro do Vale do Douro', 'Paisagens de vinhas e meandros do rio.'),
  (10148, 37, 'pl', 'Punkt widokowy Doliny Douro', 'Winnice i zakola rzeki.');

-- (38) University of Coimbra
INSERT INTO poi_i18n VALUES
  (10149, 38, 'en', 'University of Coimbra', 'Historic university hill with libraries.'),
  (10150, 38, 'it', 'Università di Coimbra', 'Storica università sulla collina con biblioteche.'),
  (10151, 38, 'pt', 'Universidade de Coimbra', 'Histórica universidade na colina com bibliotecas.'),
  (10152, 38, 'pl', 'Uniwersytet w Coimbrze', 'Zabytkowy kampus na wzgórzu z bibliotekami.');

-- (39) Roman Temple of Évora
INSERT INTO poi_i18n VALUES
  (10153, 39, 'en', 'Roman Temple of Évora', 'Classical columns in the historic center.'),
  (10154, 39, 'it', 'Tempio Romano di Évora', 'Colonne classiche nel centro storico.'),
  (10155, 39, 'pt', 'Templo Romano de Évora', 'Colunas clássicas no centro histórico.'),
  (10156, 39, 'pl', 'Świątynia rzymska w Évorze', 'Klasyczne kolumny w historycznym centrum.');

-- (40) Ponta da Piedade
INSERT INTO poi_i18n VALUES
  (10157, 40, 'en', 'Ponta da Piedade Cliffs', 'Dramatic sea cliffs and arches near Lagos.'),
  (10158, 40, 'it', 'Falesie di Ponta da Piedade', 'Falesie e archi marini spettacolari vicino a Lagos.'),
  (10159, 40, 'pt', 'Ponta da Piedade', 'Imponentes falésias e arcos marinhos junto a Lagos.'),
  (10160, 40, 'pl', 'Klify Ponta da Piedade', 'Malownicze klify i łuki skalne koło Lagos.');


-- =========================
-- POLAND: 20 POIs (base)
-- =========================
INSERT INTO poi (id, country_code, lat, lng, nice_score, visit_time) VALUES
  (41, 'PL', 52.2497, 21.0122, 5,  60),  -- Warsaw Old Town (Stare Miasto)
  (42, 'PL', 52.2470, 21.0145, 4,  60),  -- Royal Castle in Warsaw
  (43, 'PL', 52.2140, 21.0328, 5,  90),  -- Łazienki Park
  (44, 'PL', 52.2319, 21.0067, 4,  45),  -- Palace of Culture and Science
  (45, 'PL', 52.1646, 21.0904, 5,  75),  -- Wilanów Palace
  (46, 'PL', 52.2490, 20.9930, 5,  90),  -- POLIN Museum
  (47, 'PL', 50.0544, 19.9366, 5,  90),  -- Wawel Castle (Kraków)
  (48, 'PL', 50.0614, 19.9386, 5,  60),  -- Kraków Main Market Square
  (49, 'PL', 50.0617, 19.9396, 4,  45),  -- St. Mary's Basilica (Kraków)
  (50, 'PL', 50.0491, 19.9440, 4,  60),  -- Kazimierz Jewish Quarter (Kraków)
  (51, 'PL', 49.9832, 20.0534, 5, 180),  -- Wieliczka Salt Mine
  (52, 'PL', 49.1989, 20.0701, 5, 180),  -- Morskie Oko (Tatra Mountains)
  (53, 'PL', 54.3487, 18.6536, 5,  60),  -- Gdańsk Long Market (Długi Targ)
  (54, 'PL', 54.3511, 18.6583, 4,  45),  -- Gdańsk Crane (Żuraw)
  (55, 'PL', 54.0403, 19.0260, 5, 120),  -- Malbork Castle
  (56, 'PL', 52.7020, 23.8710, 5, 120),  -- Białowieża Forest
  (57, 'PL', 53.0100, 18.6040, 5,  60),  -- Toruń Old Town
  (58, 'PL', 51.1097, 17.0319, 5,  60),  -- Wrocław Market Square
  (59, 'PL', 51.1069, 17.0778, 4,  60),  -- Centennial Hall (Wrocław)
  (60, 'PL', 54.4445, 18.5686, 5,  60);  -- Sopot Pier

-- =======================================
-- Translations (en, it, pt, pl) — 10161..10240
-- =======================================

-- (41) Warsaw Old Town
INSERT INTO poi_i18n (id_poi_i18n, poi_id, lang, name, description) VALUES
  (10161, 41, 'en', 'Warsaw Old Town', 'Rebuilt historic core with colorful townhouses.'),
  (10162, 41, 'it', 'Città Vecchia di Varsavia', 'Centro storico ricostruito con case colorate.'),
  (10163, 41, 'pt', 'Cidade Antiga de Varsóvia', 'Centro histórico reconstruído com casas coloridas.'),
  (10164, 41, 'pl', 'Stare Miasto w Warszawie', 'Odbudowane historyczne serce miasta z kolorowymi kamienicami.');

-- (42) Royal Castle in Warsaw
INSERT INTO poi_i18n VALUES
  (10165, 42, 'en', 'Royal Castle in Warsaw', 'Former royal residence at Castle Square.'),
  (10166, 42, 'it', 'Castello Reale di Varsavia', 'Antica residenza reale in Piazza del Castello.'),
  (10167, 42, 'pt', 'Castelo Real de Varsóvia', 'Antiga residência real na Praça do Castelo.'),
  (10168, 42, 'pl', 'Zamek Królewski w Warszawie', 'Dawna rezydencja królewska na Placu Zamkowym.');

-- (43) Łazienki Park
INSERT INTO poi_i18n VALUES
  (10169, 43, 'en', 'Łazienki Park', 'Palace-on-the-Isle, gardens and peacocks.'),
  (10170, 43, 'it', 'Parco Łazienki', 'Palazzo sull’Isola, giardini e pavoni.'),
  (10171, 43, 'pt', 'Parque Łazienki', 'Palácio na Ilha, jardins e pavões.'),
  (10172, 43, 'pl', 'Park Łazienkowski', 'Pałac na Wyspie, ogrody i pawie.');

-- (44) Palace of Culture and Science
INSERT INTO poi_i18n VALUES
  (10173, 44, 'en', 'Palace of Culture and Science', 'Landmark high-rise with viewing terrace.'),
  (10174, 44, 'it', 'Palazzo della Cultura e della Scienza', 'Grattacielo simbolo con terrazza panoramica.'),
  (10175, 44, 'pt', 'Palácio da Cultura e da Ciência', 'Arranha-céu emblemático com terraço panorâmico.'),
  (10176, 44, 'pl', 'Pałac Kultury i Nauki', 'Symboliczny wieżowiec z tarasem widokowym.');

-- (45) Wilanów Palace
INSERT INTO poi_i18n VALUES
  (10177, 45, 'en', 'Wilanów Palace', 'Baroque royal palace with gardens.'),
  (10178, 45, 'it', 'Palazzo di Wilanów', 'Palazzo reale barocco con giardini.'),
  (10179, 45, 'pt', 'Palácio de Wilanów', 'Palácio real barroco com jardins.'),
  (10180, 45, 'pl', 'Pałac w Wilanowie', 'Barokowa rezydencja królów z ogrodami.');

-- (46) POLIN Museum
INSERT INTO poi_i18n VALUES
  (10181, 46, 'en', 'POLIN Museum', 'Museum of the History of Polish Jews.'),
  (10182, 46, 'it', 'Museo POLIN', 'Museo della storia degli ebrei polacchi.'),
  (10183, 46, 'pt', 'Museu POLIN', 'Museu da história dos judeus poloneses.'),
  (10184, 46, 'pl', 'Muzeum POLIN', 'Muzeum Historii Żydów Polskich.');

-- (47) Wawel Castle (Kraków)
INSERT INTO poi_i18n VALUES
  (10185, 47, 'en', 'Wawel Castle', 'Hilltop royal complex overlooking the Vistula.'),
  (10186, 47, 'it', 'Castello del Wawel', 'Complesso reale sulla collina affacciato sulla Vistola.'),
  (10187, 47, 'pt', 'Castelo de Wawel', 'Complexo real na colina com vista para o Vístula.'),
  (10188, 47, 'pl', 'Zamek Królewski na Wawelu', 'Królewski zespół zamkowy na wzgórzu nad Wisłą.');

-- (48) Kraków Main Market Square
INSERT INTO poi_i18n VALUES
  (10189, 48, 'en', 'Kraków Main Market Square', 'Vast medieval square with Cloth Hall.'),
  (10190, 48, 'it', 'Piazza del Mercato di Cracovia', 'Grande piazza medievale con la Sukiennice.'),
  (10191, 48, 'pt', 'Praça do Mercado de Cracóvia', 'Ampla praça medieval com a Sukiennice.'),
  (10192, 48, 'pl', 'Rynek Główny w Krakowie', 'Rozległy średniowieczny rynek z Sukiennicami.');

-- (49) St. Mary’s Basilica (Kraków)
INSERT INTO poi_i18n VALUES
  (10193, 49, 'en', 'St. Mary''s Basilica (Kraków)', 'Gothic church famous for the Hejnał.'),
  (10194, 49, 'it', 'Basilica di Santa Maria (Cracovia)', 'Chiesa gotica famosa per il Hejnał.'),
  (10195, 49, 'pt', 'Basílica de Santa Maria (Cracóvia)', 'Igreja gótica famosa pelo Hejnał.'),
  (10196, 49, 'pl', 'Bazylika Mariacka (Kraków)', 'Gotycka świątynia słynąca z hejnału.');

-- (50) Kazimierz Jewish Quarter
INSERT INTO poi_i18n VALUES
  (10197, 50, 'en', 'Kazimierz Jewish Quarter', 'Historic synagogues, cafés and street art.'),
  (10198, 50, 'it', 'Quartiere ebraico di Kazimierz', 'Sinagoghe storiche, caffè e street art.'),
  (10199, 50, 'pt', 'Bairro Judeu de Kazimierz', 'Sinagogas históricas, cafés e arte de rua.'),
  (10200, 50, 'pl', 'Kazimierz – dzielnica żydowska', 'Historyczne synagogi, kawiarnie i street art.');

-- (51) Wieliczka Salt Mine
INSERT INTO poi_i18n VALUES
  (10201, 51, 'en', 'Wieliczka Salt Mine', 'UNESCO-listed underground chambers and chapels.'),
  (10202, 51, 'it', 'Miniera di Sale di Wieliczka', 'Camere e cappelle sotterranee UNESCO.'),
  (10203, 51, 'pt', 'Mina de Sal de Wieliczka', 'Câmaras e capelas subterrâneas, Património UNESCO.'),
  (10204, 51, 'pl', 'Kopalnia Soli Wieliczka', 'Podziemne komory i kaplice wpisane na listę UNESCO.');

-- (52) Morskie Oko (Tatra Mountains)
INSERT INTO poi_i18n VALUES
  (10205, 52, 'en', 'Morskie Oko (Tatra Mountains)', 'Glacial lake in High Tatras.'),
  (10206, 52, 'it', 'Morskie Oko (Tatra)', 'Lago glaciale nei Tatra Alti.'),
  (10207, 52, 'pt', 'Morskie Oko (Montes Tatra)', 'Lago glacial nos Altos Tatras.'),
  (10208, 52, 'pl', 'Morskie Oko (Tatry)', 'Lodowcowe jezioro w Tatrach Wysokich.');

-- (53) Gdańsk Long Market (Długi Targ)
INSERT INTO poi_i18n VALUES
  (10209, 53, 'en', 'Gdańsk Long Market (Długi Targ)', 'Elegant promenade with historical facades.'),
  (10210, 53, 'it', 'Długi Targ (Danzica)', 'Elegante passeggiata con facciate storiche.'),
  (10211, 53, 'pt', 'Długi Targ (Gdańsk)', 'Passeio elegante com fachadas históricas.'),
  (10212, 53, 'pl', 'Długi Targ w Gdańsku', 'Elegancka promenada z historycznymi kamienicami.');

-- (54) Gdańsk Crane (Żuraw)
INSERT INTO poi_i18n VALUES
  (10213, 54, 'en', 'Gdańsk Crane (Żuraw)', 'Medieval port crane on the Motława River.'),
  (10214, 54, 'it', 'Gru di Danzica (Żuraw)', 'Antica gru portuale sul fiume Motława.'),
  (10215, 54, 'pt', 'Guindaste de Gdańsk (Żuraw)', 'Antiga grua portuária no rio Motława.'),
  (10216, 54, 'pl', 'Żuraw w Gdańsku', 'Średniowieczny dźwig portowy nad Motławą.');

-- (55) Malbork Castle
INSERT INTO poi_i18n VALUES
  (10217, 55, 'en', 'Malbork Castle', 'Vast brick fortress of the Teutonic Order.'),
  (10218, 55, 'it', 'Castello di Malbork', 'Imponente fortezza in mattoni dell’Ordine Teutonico.'),
  (10219, 55, 'pt', 'Castelo de Malbork', 'Imensa fortaleza de tijolos da Ordem Teutónica.'),
  (10220, 55, 'pl', 'Zamek w Malborku', 'Rozległa ceglana twierdza Zakonu Krzyżackiego.');

-- (56) Białowieża Forest
INSERT INTO poi_i18n VALUES
  (10221, 56, 'en', 'Białowieża Forest', 'Primeval forest home to European bison.'),
  (10222, 56, 'it', 'Foresta di Białowieża', 'Foresta primaria, casa del bisonte europeo.'),
  (10223, 56, 'pt', 'Floresta de Białowieża', 'Floresta primitiva com bisão-europeu.'),
  (10224, 56, 'pl', 'Puszcza Białowieska', 'Puszcza pierwotna – ostoja żubra europejskiego.');

-- (57) Toruń Old Town
INSERT INTO poi_i18n VALUES
  (10225, 57, 'en', 'Toruń Old Town', 'Gothic streets and gingerbread heritage.'),
  (10226, 57, 'it', 'Città Vecchia di Toruń', 'Vie gotiche e tradizione del pan di zenzero.'),
  (10227, 57, 'pt', 'Cidade Antiga de Toruń', 'Ruas góticas e tradição do pão de mel.'),
  (10228, 57, 'pl', 'Stare Miasto w Toruniu', 'Gotyckie uliczki i piernikowa tradycja.');

-- (58) Wrocław Market Square
INSERT INTO poi_i18n VALUES
  (10229, 58, 'en', 'Wrocław Market Square', 'Colorful townhouses and Gothic Town Hall.'),
  (10230, 58, 'it', 'Piazza del Mercato di Breslavia', 'Case colorate e Municipio gotico.'),
  (10231, 58, 'pt', 'Praça do Mercado de Wrocław', 'Casas coloridas e prefeitura gótica.'),
  (10232, 58, 'pl', 'Rynek we Wrocławiu', 'Kolorowe kamienice i gotycki Ratusz.');

-- (59) Centennial Hall (Wrocław)
INSERT INTO poi_i18n VALUES
  (10233, 59, 'en', 'Centennial Hall (Wrocław)', 'Early modernist landmark and UNESCO site.'),
  (10234, 59, 'it', 'Hala Stulecia (Breslavia)', 'Opera modernista e sito UNESCO.'),
  (10235, 59, 'pt', 'Sala do Centenário (Wrocław)', 'Obra modernista e Património UNESCO.'),
  (10236, 59, 'pl', 'Hala Stulecia (Wrocław)', 'Wczesnomodernistyczny zabytek, obiekt UNESCO.');

-- (60) Sopot Pier
INSERT INTO poi_i18n VALUES
  (10237, 60, 'en', 'Sopot Pier', 'One of Europe''s longest wooden piers.'),
  (10238, 60, 'it', 'Molo di Sopot', 'Uno dei moli in legno più lunghi d’Europa.'),
  (10239, 60, 'pt', 'Cais de Sopot', 'Um dos cais de madeira mais longos da Europa.'),
  (10240, 60, 'pl', 'Molo w Sopocie', 'Jeden z najdłuższych drewnianych moli w Europie.');


-- =========================
-- GERMANY: 20 POIs (base)
-- =========================
INSERT INTO poi (id, country_code, lat, lng, nice_score, visit_time) VALUES
  (61, 'DE', 50.9413,  6.9583, 5,  60),  -- Cologne Cathedral
  (62, 'DE', 47.5576, 10.7498, 5, 120),  -- Neuschwanstein Castle
  (63, 'DE', 52.5194, 13.4010, 5,  90),  -- Berlin Cathedral / Museum Island
  (64, 'DE', 52.5186, 13.3762, 4,  60),  -- Reichstag Dome
  (65, 'DE', 52.5050, 13.4390, 4,  60),  -- East Side Gallery
  (66, 'DE', 52.5208, 13.2950, 4,  75),  -- Charlottenburg Palace
  (67, 'DE', 52.5138, 13.3926, 4,  45),  -- Gendarmenmarkt
  (68, 'DE', 48.1372, 11.5756, 5,  60),  -- Marienplatz (Munich)
  (69, 'DE', 48.1583, 11.5036, 4,  75),  -- Nymphenburg Palace
  (70, 'DE', 48.1590, 11.6038, 5,  90),  -- English Garden (Munich)
  (71, 'DE', 48.1767, 11.5565, 4,  60),  -- BMW Welt & Museum
  (72, 'DE', 53.5413,  9.9841, 5,  60),  -- Elbphilharmonie (Hamburg)
  (73, 'DE', 53.5436,  9.9980, 4,  60),  -- Speicherstadt (Hamburg)
  (74, 'DE', 53.5430,  9.9887, 5,  90),  -- Miniatur Wunderland (Hamburg)
  (75, 'DE', 51.0512, 13.7417, 5,  60),  -- Frauenkirche (Dresden)
  (76, 'DE', 51.0530, 13.7337, 5,  60),  -- Zwinger (Dresden)
  (77, 'DE', 49.4106,  8.7153, 5,  75),  -- Heidelberg Castle
  (78, 'DE', 52.4030, 13.0380, 5,  75),  -- Sanssouci Palace (Potsdam)
  (79, 'DE', 49.3785, 10.1774, 5,  60),  -- Rothenburg ob der Tauber Old Town
  (80, 'DE', 50.1531,  7.7161, 4,  45);  -- Lorelei Rock (Rhine Gorge)

-- =======================================
-- Translations (en, it, pt, pl) — 10241..10320
-- =======================================

-- (61) Cologne Cathedral
INSERT INTO poi_i18n (id_poi_i18n, poi_id, lang, name, description) VALUES
  (10241, 61, 'en', 'Cologne Cathedral', 'Gothic cathedral and UNESCO landmark.'),
  (10242, 61, 'it', 'Cattedrale di Colonia', 'Cattedrale gotica, sito UNESCO.'),
  (10243, 61, 'pt', 'Catedral de Colónia', 'Catedral gótica e património UNESCO.'),
  (10244, 61, 'pl', 'Katedra Kolońska', 'Gotycka katedra, obiekt UNESCO.');

-- (62) Neuschwanstein Castle
INSERT INTO poi_i18n VALUES
  (10245, 62, 'en', 'Neuschwanstein Castle', 'Fairy-tale castle above Hohenschwangau.'),
  (10246, 62, 'it', 'Castello di Neuschwanstein', 'Castello da fiaba sopra Hohenschwangau.'),
  (10247, 62, 'pt', 'Castelo de Neuschwanstein', 'Castelo de conto de fadas em Hohenschwangau.'),
  (10248, 62, 'pl', 'Zamek Neuschwanstein', 'Bajkowy zamek nad Hohenschwangau.');

-- (63) Berlin Cathedral / Museum Island
INSERT INTO poi_i18n VALUES
  (10249, 63, 'en', 'Berlin Cathedral (Museum Island)', 'Grand Protestant cathedral on Museum Island.'),
  (10250, 63, 'it', 'Cattedrale di Berlino (Isola dei Musei)', 'Grande cattedrale protestante sull’Isola dei Musei.'),
  (10251, 63, 'pt', 'Catedral de Berlim (Ilha dos Museus)', 'Grande catedral protestante na Ilha dos Museus.'),
  (10252, 63, 'pl', 'Katedra Berlińska (Wyspa Muzeów)', 'Okazała katedra protestancka na Wyspie Muzeów.');

-- (64) Reichstag Dome
INSERT INTO poi_i18n VALUES
  (10253, 64, 'en', 'Reichstag Dome', 'Glass dome with views over Berlin.'),
  (10254, 64, 'it', 'Cupola del Reichstag', 'Cupola di vetro con vista su Berlino.'),
  (10255, 64, 'pt', 'Cúpula do Reichstag', 'Cúpula de vidro com vistas de Berlim.'),
  (10256, 64, 'pl', 'Kopuła Reichstagu', 'Szklana kopuła z widokiem na Berlin.');

-- (65) East Side Gallery
INSERT INTO poi_i18n VALUES
  (10257, 65, 'en', 'East Side Gallery', 'Open-air murals on the Berlin Wall.'),
  (10258, 65, 'it', 'East Side Gallery', 'Murales all’aperto sul Muro di Berlino.'),
  (10259, 65, 'pt', 'East Side Gallery', 'Murais ao ar livre no Muro de Berlim.'),
  (10260, 65, 'pl', 'East Side Gallery', 'Plenerowe murale na Murze Berlińskim.');

-- (66) Charlottenburg Palace
INSERT INTO poi_i18n VALUES
  (10261, 66, 'en', 'Charlottenburg Palace', 'Baroque palace with ornate gardens.'),
  (10262, 66, 'it', 'Palazzo di Charlottenburg', 'Palazzo barocco con giardini ornati.'),
  (10263, 66, 'pt', 'Palácio de Charlottenburg', 'Palácio barroco com jardins elaborados.'),
  (10264, 66, 'pl', 'Zamek Charlottenburg', 'Barokowy pałac z ozdobnymi ogrodami.');

-- (67) Gendarmenmarkt
INSERT INTO poi_i18n VALUES
  (10265, 67, 'en', 'Gendarmenmarkt', 'Elegant square with twin domes and concert hall.'),
  (10266, 67, 'it', 'Gendarmenmarkt', 'Elegante piazza con cupole gemelle e sala da concerto.'),
  (10267, 67, 'pt', 'Gendarmenmarkt', 'Praça elegante com cúpulas gémeas e sala de concertos.'),
  (10268, 67, 'pl', 'Gendarmenmarkt', 'Elegancki plac z bliźniaczymi kopułami i salą koncertową.');

-- (68) Marienplatz (Munich)
INSERT INTO poi_i18n VALUES
  (10269, 68, 'en', 'Marienplatz (Munich)', 'Central square with the Glockenspiel.'),
  (10270, 68, 'it', 'Marienplatz (Monaco)', 'Piazza centrale con il Carillon.'),
  (10271, 68, 'pt', 'Marienplatz (Munique)', 'Praça central com o Glockenspiel.'),
  (10272, 68, 'pl', 'Marienplatz (Monachium)', 'Centralny plac z kurantem Glockenspiel.');

-- (69) Nymphenburg Palace
INSERT INTO poi_i18n VALUES
  (10273, 69, 'en', 'Nymphenburg Palace', 'Baroque palace with park and canal.'),
  (10274, 69, 'it', 'Palazzo di Nymphenburg', 'Palazzo barocco con parco e canale.'),
  (10275, 69, 'pt', 'Palácio de Nymphenburg', 'Palácio barroco com parque e canal.'),
  (10276, 69, 'pl', 'Pałac Nymphenburg', 'Barokowy pałac z parkiem i kanałem.');

-- (70) English Garden (Munich)
INSERT INTO poi_i18n VALUES
  (10277, 70, 'en', 'English Garden (Munich)', 'Vast city park with surfers on the Eisbach.'),
  (10278, 70, 'it', 'Giardino Inglese (Monaco)', 'Grande parco urbano con surfisti sull’Eisbach.'),
  (10279, 70, 'pt', 'Jardim Inglês (Munique)', 'Grande parque urbano com surfistas no Eisbach.'),
  (10280, 70, 'pl', 'Ogród Angielski (Monachium)', 'Rozległy park miejski z surferami na Eisbachu.');

-- (71) BMW Welt & Museum
INSERT INTO poi_i18n VALUES
  (10281, 71, 'en', 'BMW Welt & Museum', 'Automotive showcase and brand museum.'),
  (10282, 71, 'it', 'BMW Welt & Museum', 'Vetrina automobilistica e museo del marchio.'),
  (10283, 71, 'pt', 'BMW Welt & Museum', 'Mostra automóvel e museu da marca.'),
  (10284, 71, 'pl', 'BMW Welt i Muzeum', 'Wystawa motoryzacyjna i muzeum marki.');

-- (72) Elbphilharmonie (Hamburg)
INSERT INTO poi_i18n VALUES
  (10285, 72, 'en', 'Elbphilharmonie', 'Harborfront concert hall with striking architecture.'),
  (10286, 72, 'it', 'Elbphilharmonie', 'Sala da concerti sul porto con architettura iconica.'),
  (10287, 72, 'pt', 'Elbphilharmonie', 'Sala de concertos à beira do porto com arquitetura marcante.'),
  (10288, 72, 'pl', 'Elbphilharmonie', 'Nadbrzeżna sala koncertowa o wyjątkowej architekturze.');

-- (73) Speicherstadt (Hamburg)
INSERT INTO poi_i18n VALUES
  (10289, 73, 'en', 'Speicherstadt', 'Historic warehouse district crisscrossed by canals.'),
  (10290, 73, 'it', 'Speicherstadt', 'Quartiere storico dei magazzini tra canali.'),
  (10291, 73, 'pt', 'Speicherstadt', 'Histórico bairro de armazéns entre canais.'),
  (10292, 73, 'pl', 'Speicherstadt', 'Zabytkowa dzielnica spichlerzy poprzecinana kanałami.');

-- (74) Miniatur Wunderland (Hamburg)
INSERT INTO poi_i18n VALUES
  (10293, 74, 'en', 'Miniatur Wunderland', 'World’s largest model railway exhibition.'),
  (10294, 74, 'it', 'Miniatur Wunderland', 'La più grande mostra di ferrovie in miniatura.'),
  (10295, 74, 'pt', 'Miniatur Wunderland', 'A maior exposição de ferromodelismo do mundo.'),
  (10296, 74, 'pl', 'Miniatur Wunderland', 'Największa na świecie wystawa kolei w miniaturze.');

-- (75) Frauenkirche (Dresden)
INSERT INTO poi_i18n VALUES
  (10297, 75, 'en', 'Frauenkirche (Dresden)', 'Rebuilt Baroque church with dome views.'),
  (10298, 75, 'it', 'Frauenkirche (Dresda)', 'Chiesa barocca ricostruita con vista dalla cupola.'),
  (10299, 75, 'pt', 'Frauenkirche (Dresden)', 'Igreja barroca reconstruída com vista da cúpula.'),
  (10300, 75, 'pl', 'Frauenkirche (Drezno)', 'Odbudowany barokowy kościół z widokiem z kopuły.');

-- (76) Zwinger (Dresden)
INSERT INTO poi_i18n VALUES
  (10301, 76, 'en', 'Zwinger', 'Palatial complex with museums and gardens.'),
  (10302, 76, 'it', 'Zwinger', 'Complesso palaziale con musei e giardini.'),
  (10303, 76, 'pt', 'Zwinger', 'Complexo palaciano com museus e jardins.'),
  (10304, 76, 'pl', 'Zwinger', 'Zespół pałacowy z muzeami i ogrodami.');

-- (77) Heidelberg Castle
INSERT INTO poi_i18n VALUES
  (10305, 77, 'en', 'Heidelberg Castle', 'Romantic hilltop ruins above the Neckar.'),
  (10306, 77, 'it', 'Castello di Heidelberg', 'Rovine romantiche sulla collina sopra il Neckar.'),
  (10307, 77, 'pt', 'Castelo de Heidelberg', 'Ruínas românticas na colina sobre o Neckar.'),
  (10308, 77, 'pl', 'Zamek w Heidelbergu', 'Romantyczne ruiny na wzgórzu nad Neckarem.');

-- (78) Sanssouci Palace (Potsdam)
INSERT INTO poi_i18n VALUES
  (10309, 78, 'en', 'Sanssouci Palace (Potsdam)', 'Rococo palace with terraced vineyards.'),
  (10310, 78, 'it', 'Palazzo di Sanssouci (Potsdam)', 'Palazzo rococò con vigneti terrazzati.'),
  (10311, 78, 'pt', 'Palácio Sanssouci (Potsdam)', 'Palácio rococó com vinhas em terraços.'),
  (10312, 78, 'pl', 'Pałac Sanssouci (Poczdam)', 'Pałac rokoko z tarasowymi winnicami.');

-- (79) Rothenburg ob der Tauber Old Town
INSERT INTO poi_i18n VALUES
  (10313, 79, 'en', 'Rothenburg ob der Tauber Old Town', 'Well-preserved medieval streets and walls.'),
  (10314, 79, 'it', 'Città vecchia di Rothenburg ob der Tauber', 'Strade e mura medievali ben conservate.'),
  (10315, 79, 'pt', 'Cidade antiga de Rothenburg ob der Tauber', 'Ruas e muralhas medievais bem preservadas.'),
  (10316, 79, 'pl', 'Stare miasto Rothenburg ob der Tauber', 'Dobrze zachowane średniowieczne ulice i mury.');

-- (80) Lorelei Rock (Rhine Gorge)
INSERT INTO poi_i18n VALUES
  (10317, 80, 'en', 'Lorelei Rock (Rhine Gorge)', 'Steep slate rock above a Rhine bend.'),
  (10318, 80, 'it', 'Roccia Loreley (Gola del Reno)', 'Ripida roccia in ardesia sopra un’ansa del Reno.'),
  (10319, 80, 'pt', 'Rochedo Loreley (Garganta do Reno)', 'Escarpa de xisto sobre uma curva do Reno.'),
  (10320, 80, 'pl', 'Skała Lorelei (Przełom Renu)', 'Strome łupkowe wzgórze nad zakolem Renu.');



-- =========================
-- NETHERLANDS: 20 POIs (base)
-- =========================
INSERT INTO poi (id, country_code, lat, lng, nice_score, visit_time) VALUES
  (81,  'NL', 52.3600,  4.8852, 5,  90),  -- Rijksmuseum (Amsterdam)
  (82,  'NL', 52.3584,  4.8811, 5,  90),  -- Van Gogh Museum (Amsterdam)
  (83,  'NL', 52.3752,  4.8836, 5,  60),  -- Anne Frank House (Amsterdam)
  (84,  'NL', 52.3732,  4.8926, 4,  45),  -- Royal Palace & Dam Square (Amsterdam)
  (85,  'NL', 52.3720,  4.8824, 4,  60),  -- Jordaan District (Amsterdam)
  (86,  'NL', 52.3583,  4.8684, 5,  60),  -- Vondelpark (Amsterdam)
  (87,  'NL', 52.3728,  4.8936, 5,  90),  -- Amsterdam Canal Belt (Grachtengordel)
  (88,  'NL', 52.2719,  4.5464, 5, 120),  -- Keukenhof Gardens (Lisse)
  (89,  'NL', 52.4730,  4.8254, 5,  90),  -- Zaanse Schans (Zaandam)
  (90,  'NL', 51.8850,  4.6425, 5,  90),  -- Kinderdijk Windmills
  (91,  'NL', 51.9208,  4.4860, 4,  45),  -- Markthal (Rotterdam)
  (92,  'NL', 51.9090,  4.4860, 4,  45),  -- Erasmus Bridge (Rotterdam)
  (93,  'NL', 51.9209,  4.4881, 4,  45),  -- Cube Houses (Rotterdam)
  (94,  'NL', 52.0809,  4.3146, 4,  60),  -- Binnenhof (The Hague)
  (95,  'NL', 52.0809,  4.3170, 5,  60),  -- Mauritshuis (The Hague)
  (96,  'NL', 52.0866,  4.2956, 4,  45),  -- Peace Palace (The Hague)
  (97,  'NL', 52.1155,  4.2742, 4,  90),  -- Scheveningen Pier & Beach (The Hague)
  (98,  'NL', 52.0908,  5.1214, 4,  60),  -- Dom Tower (Utrecht)
  (99,  'NL', 52.1203,  4.9887, 5,  75),  -- De Haar Castle (near Utrecht)
  (100, 'NL', 52.7405,  6.0794, 5,  90);  -- Giethoorn Village

-- =======================================
-- Translations (en, it, pt, pl) — 10321..10400
-- =======================================

-- (81) Rijksmuseum
INSERT INTO poi_i18n (id_poi_i18n, poi_id, lang, name, description) VALUES
  (10321, 81, 'en', 'Rijksmuseum', 'National museum of Dutch masterpieces in Amsterdam.'),
  (10322, 81, 'it', 'Rijksmuseum', 'Museo nazionale di Amsterdam con capolavori olandesi.'),
  (10323, 81, 'pt', 'Rijksmuseum', 'Museu nacional de Amesterdão com obras-primas holandesas.'),
  (10324, 81, 'pl', 'Rijksmuseum', 'Muzeum narodowe w Amsterdamie z holenderskimi arcydziełami.');

-- (82) Van Gogh Museum
INSERT INTO poi_i18n VALUES
  (10325, 82, 'en', 'Van Gogh Museum', 'Museum dedicated to Vincent van Gogh and contemporaries.'),
  (10326, 82, 'it', 'Museo Van Gogh', 'Museo dedicato a Vincent van Gogh e ai suoi contemporanei.'),
  (10327, 82, 'pt', 'Museu Van Gogh', 'Museu dedicado a Vincent van Gogh e contemporâneos.'),
  (10328, 82, 'pl', 'Muzeum Van Gogha', 'Muzeum poświęcone Vincentowi van Goghowi i jego współczesnym.');

-- (83) Anne Frank House
INSERT INTO poi_i18n VALUES
  (10329, 83, 'en', 'Anne Frank House', 'House-museum of the Diary of Anne Frank.'),
  (10330, 83, 'it', 'Casa di Anne Frank', 'Casa-museo del diario di Anne Frank.'),
  (10331, 83, 'pt', 'Casa de Anne Frank', 'Casa-museu do diário de Anne Frank.'),
  (10332, 83, 'pl', 'Dom Anny Frank', 'Dom–muzeum Dziennika Anne Frank.');

-- (84) Royal Palace & Dam Square
INSERT INTO poi_i18n VALUES
  (10333, 84, 'en', 'Royal Palace & Dam Square', 'Historic square and the Royal Palace of Amsterdam.'),
  (10334, 84, 'it', 'Palazzo Reale e Piazza Dam', 'Piazza storica e Palazzo Reale di Amsterdam.'),
  (10335, 84, 'pt', 'Palácio Real e Praça Dam', 'Praça histórica e o Palácio Real de Amesterdão.'),
  (10336, 84, 'pl', 'Pałac Królewski i plac Dam', 'Historyczny plac oraz Pałac Królewski w Amsterdamie.');

-- (85) Jordaan District
INSERT INTO poi_i18n VALUES
  (10337, 85, 'en', 'Jordaan District', 'Picturesque canals, cafés and boutiques.'),
  (10338, 85, 'it', 'Quartiere Jordaan', 'Pittoreschi canali, caffè e boutique.'),
  (10339, 85, 'pt', 'Bairro Jordaan', 'Canais pitorescos, cafés e boutiques.'),
  (10340, 85, 'pl', 'Dzielnica Jordaan', 'Malownicze kanały, kawiarnie i butiki.');

-- (86) Vondelpark
INSERT INTO poi_i18n VALUES
  (10341, 86, 'en', 'Vondelpark', 'Amsterdam’s large urban park.'),
  (10342, 86, 'it', 'Vondelpark', 'Grande parco urbano di Amsterdam.'),
  (10343, 86, 'pt', 'Vondelpark', 'Grande parque urbano de Amesterdão.'),
  (10344, 86, 'pl', 'Vondelpark', 'Duży park miejski w Amsterdamie.');

-- (87) Amsterdam Canal Belt
INSERT INTO poi_i18n VALUES
  (10345, 87, 'en', 'Amsterdam Canal Belt (Grachtengordel)', 'UNESCO-listed historic canal ring.'),
  (10346, 87, 'it', 'Cintura dei Canali di Amsterdam', 'Cintura dei canali storici, patrimonio UNESCO.'),
  (10347, 87, 'pt', 'Cintura de Canais de Amesterdão', 'Anel de canais históricos, Património UNESCO.'),
  (10348, 87, 'pl', 'Pas kanałów Amsterdamu', 'Historyczny pierścień kanałów, obiekt UNESCO.');

-- (88) Keukenhof Gardens
INSERT INTO poi_i18n VALUES
  (10349, 88, 'en', 'Keukenhof Gardens', 'Seasonal tulip gardens in Lisse.'),
  (10350, 88, 'it', 'Giardini di Keukenhof', 'Giardini stagionali di tulipani a Lisse.'),
  (10351, 88, 'pt', 'Jardins de Keukenhof', 'Jardins sazonais de tulipas em Lisse.'),
  (10352, 88, 'pl', 'Ogrody Keukenhof', 'Sezonowe ogrody tulipanów w Lisse.');

-- (89) Zaanse Schans
INSERT INTO poi_i18n VALUES
  (10353, 89, 'en', 'Zaanse Schans', 'Historic windmills and wooden houses.'),
  (10354, 89, 'it', 'Zaanse Schans', 'Storici mulini a vento e case in legno.'),
  (10355, 89, 'pt', 'Zaanse Schans', 'Moinhos históricos e casas de madeira.'),
  (10356, 89, 'pl', 'Zaanse Schans', 'Historyczne wiatraki i drewniane domy.');

-- (90) Kinderdijk Windmills
INSERT INTO poi_i18n VALUES
  (10357, 90, 'en', 'Kinderdijk Windmills', '19 windmills along the waterways (UNESCO).'),
  (10358, 90, 'it', 'Mulini di Kinderdijk', '19 mulini lungo i canali (UNESCO).'),
  (10359, 90, 'pt', 'Moinhos de Kinderdijk', '19 moinhos ao longo dos canais (UNESCO).'),
  (10360, 90, 'pl', 'Wiatraki w Kinderdijk', '19 wiatraków wzdłuż kanałów (UNESCO).');

-- (91) Markthal (Rotterdam)
INSERT INTO poi_i18n VALUES
  (10361, 91, 'en', 'Markthal (Rotterdam)', 'Iconic covered market with arched residences.'),
  (10362, 91, 'it', 'Markthal (Rotterdam)', 'Iconico mercato coperto con arco abitato.'),
  (10363, 91, 'pt', 'Markthal (Roterdão)', 'Mercado coberto icónico com arco habitado.'),
  (10364, 91, 'pl', 'Markthal (Rotterdam)', 'Ikoniczna hala targowa z łukiem mieszkalnym.');

-- (92) Erasmus Bridge
INSERT INTO poi_i18n VALUES
  (10365, 92, 'en', 'Erasmus Bridge', 'Signature cable-stayed bridge of Rotterdam.'),
  (10366, 92, 'it', 'Ponte di Erasmo', 'Ponte strallato simbolo di Rotterdam.'),
  (10367, 92, 'pt', 'Ponte Erasmus', 'Ponte estaiada emblemática de Roterdão.'),
  (10368, 92, 'pl', 'Most Erazma', 'Symboliczny most wantowy Rotterdamu.');

-- (93) Cube Houses
INSERT INTO poi_i18n VALUES
  (10369, 93, 'en', 'Cube Houses', 'Experimental cubic housing by Piet Blom.'),
  (10370, 93, 'it', 'Case Cubiche', 'Alloggi cubici sperimentali di Piet Blom.'),
  (10371, 93, 'pt', 'Casas-Cubo', 'Habitação cúbica experimental de Piet Blom.'),
  (10372, 93, 'pl', 'Domy Sześcienne', 'Eksperymentalne domy sześcienne projektu Pieta Bloma.');

-- (94) Binnenhof (The Hague)
INSERT INTO poi_i18n VALUES
  (10373, 94, 'en', 'Binnenhof (The Hague)', 'Historic government complex by the Hofvijver.'),
  (10374, 94, 'it', 'Binnenhof (L’Aia)', 'Storico complesso governativo presso l’Hofvijver.'),
  (10375, 94, 'pt', 'Binnenhof (Haia)', 'Histórico complexo governamental junto ao Hofvijver.'),
  (10376, 94, 'pl', 'Binnenhof (Haga)', 'Historyczny kompleks rządowy nad Hofvijver.');

-- (95) Mauritshuis
INSERT INTO poi_i18n VALUES
  (10377, 95, 'en', 'Mauritshuis', 'Museum with Vermeer’s Girl with a Pearl Earring.'),
  (10378, 95, 'it', 'Mauritshuis', 'Museo con La ragazza con l’orecchino di perla di Vermeer.'),
  (10379, 95, 'pt', 'Mauritshuis', 'Museu com A Rapariga com o Brinco de Pérola, de Vermeer.'),
  (10380, 95, 'pl', 'Mauritshuis', 'Muzeum z obrazem Vermeera Dziewczyna z perłą.');

-- (96) Peace Palace
INSERT INTO poi_i18n VALUES
  (10381, 96, 'en', 'Peace Palace', 'Seat of the International Court of Justice.'),
  (10382, 96, 'it', 'Palazzo della Pace', 'Sede della Corte internazionale di giustizia.'),
  (10383, 96, 'pt', 'Palácio da Paz', 'Sede do Tribunal Internacional de Justiça.'),
  (10384, 96, 'pl', 'Pałac Pokoju', 'Siedziba Międzynarodowego Trybunału Sprawiedliwości.');

-- (97) Scheveningen Pier & Beach
INSERT INTO poi_i18n VALUES
  (10385, 97, 'en', 'Scheveningen Pier & Beach', 'Popular seaside pier and sandy beach.'),
  (10386, 97, 'it', 'Molo e Spiaggia di Scheveningen', 'Popolare molo sul mare e spiaggia sabbiosa.'),
  (10387, 97, 'pt', 'Cais e Praia de Scheveningen', 'Cais à beira-mar e praia de areia muito procurada.'),
  (10388, 97, 'pl', 'Molo i plaża Scheveningen', 'Popularne molo nadmorskie i piaszczysta plaża.');

-- (98) Dom Tower (Utrecht)
INSERT INTO poi_i18n VALUES
  (10389, 98, 'en', 'Dom Tower (Utrecht)', 'Gothic bell tower and city symbol.'),
  (10390, 98, 'it', 'Torre del Duomo (Utrecht)', 'Campanile gotico, simbolo della città.'),
  (10391, 98, 'pt', 'Torre da Catedral (Utrecht)', 'Torre sineira gótica, símbolo da cidade.'),
  (10392, 98, 'pl', 'Wieża Katedry (Utrecht)', 'Gotycka dzwonnica – symbol miasta.');

-- (99) De Haar Castle
INSERT INTO poi_i18n VALUES
  (10393, 99, 'en', 'De Haar Castle', 'Neo-Gothic castle near Utrecht with gardens.'),
  (10394, 99, 'it', 'Castello de Haar', 'Castello neogotico vicino a Utrecht con giardini.'),
  (10395, 99, 'pt', 'Castelo de Haar', 'Castelo neogótico perto de Utrecht com jardins.'),
  (10396, 99, 'pl', 'Zamek De Haar', 'Neogotycki zamek koło Utrechtu z ogrodami.');

-- (100) Giethoorn Village
INSERT INTO poi_i18n VALUES
  (10397,100, 'en', 'Giethoorn Village', 'Car-free village of canals and boats.'),
  (10398,100, 'it', 'Villaggio di Giethoorn', 'Villaggio senza auto con canali e barche.'),
  (10399,100, 'pt', 'Aldeia de Giethoorn', 'Aldeia sem carros com canais e barcos.'),
  (10400,100, 'pl', 'Wioska Giethoorn', 'Wioska bez samochodów z kanałami i łodziami.');


-- =========================
-- CZECH REPUBLIC: 20 POIs (base)
-- =========================
INSERT INTO poi (id, country_code, lat, lng, nice_score, visit_time) VALUES
  (101, 'CZ', 50.0910, 14.4010, 5, 120),  -- Prague Castle
  (102, 'CZ', 50.0865, 14.4114, 5,  60),  -- Charles Bridge
  (103, 'CZ', 50.0875, 14.4200, 5,  45),  -- Old Town Square (Prague)
  (104, 'CZ', 50.0903, 14.4009, 5,  60),  -- St. Vitus Cathedral
  (105, 'CZ', 50.0870, 14.4208, 4,  30),  -- Astronomical Clock (Orloj)
  (106, 'CZ', 50.0755, 14.4146, 4,  45),  -- Dancing House
  (107, 'CZ', 50.0647, 14.4180, 4,  60),  -- Vyšehrad
  (108, 'CZ', 50.0836, 14.3959, 4,  60),  -- Petřín Lookout Tower
  (109, 'CZ', 50.0810, 14.4133, 4,  60),  -- National Theatre (Prague)
  (110, 'CZ', 50.0815, 14.4510, 4,  45),  -- Žižkov Television Tower
  (111, 'CZ', 48.8113, 14.3153, 5,  90),  -- Český Krumlov Castle
  (112, 'CZ', 50.2234, 12.8821, 4,  60),  -- Karlovy Vary Mill Colonnade
  (113, 'CZ', 49.9481, 15.2686, 5,  60),  -- St. Barbara's Church (Kutná Hora)
  (114, 'CZ', 49.9616, 15.2853, 5,  45),  -- Sedlec Ossuary (Kutná Hora)
  (115, 'CZ', 49.1952, 16.5949, 4,  60),  -- Špilberk Castle (Brno)
  (116, 'CZ', 49.1910, 16.6075, 4,  45),  -- Cathedral of St. Peter and Paul (Brno)
  (117, 'CZ', 48.8006, 16.8030, 5,  90),  -- Lednice Chateau (Lednice–Valtice)
  (118, 'CZ', 49.3723, 16.7276, 5, 120),  -- Punkva Caves & Macocha Abyss
  (119, 'CZ', 49.5938, 17.2516, 4,  30),  -- Holy Trinity Column (Olomouc)
  (120, 'CZ', 49.1846, 15.4528, 5,  60);  -- Telč Historic Center

-- =======================================
-- Translations (en, it, pt, pl) — 10401..10480
-- =======================================

-- (101) Prague Castle
INSERT INTO poi_i18n (id_poi_i18n, poi_id, lang, name, description) VALUES
  (10401, 101, 'en', 'Prague Castle', 'Historic castle complex overlooking Prague.'),
  (10402, 101, 'it', 'Castello di Praga', 'Storico complesso del castello con vista su Praga.'),
  (10403, 101, 'pt', 'Castelo de Praga', 'Complexo histórico do castelo com vista para Praga.'),
  (10404, 101, 'pl', 'Zamek Praski', 'Historyczny kompleks zamkowy z widokiem na Pragę.');

-- (102) Charles Bridge
INSERT INTO poi_i18n VALUES
  (10405, 102, 'en', 'Charles Bridge', 'Stone bridge with Baroque statues over the Vltava.'),
  (10406, 102, 'it', 'Ponte Carlo', 'Ponte in pietra con statue barocche sulla Moldava.'),
  (10407, 102, 'pt', 'Ponte Carlos', 'Ponte de pedra com estátuas barrocas sobre o rio Moldava.'),
  (10408, 102, 'pl', 'Most Karola', 'Kamienny most ze statuami barokowymi nad Wełtawą.');

-- (103) Old Town Square (Prague)
INSERT INTO poi_i18n VALUES
  (10409, 103, 'en', 'Old Town Square (Prague)', 'Historic square with colorful facades and churches.'),
  (10410, 103, 'it', 'Piazza della Città Vecchia (Praga)', 'Storica piazza con facciate colorate e chiese.'),
  (10411, 103, 'pt', 'Praça da Cidade Velha (Praga)', 'Praça histórica com fachadas coloridas e igrejas.'),
  (10412, 103, 'pl', 'Rynek Staromiejski (Praga)', 'Historyczny plac z kolorowymi kamienicami i kościołami.');

-- (104) St. Vitus Cathedral
INSERT INTO poi_i18n VALUES
  (10413, 104, 'en', 'St. Vitus Cathedral', 'Gothic cathedral inside Prague Castle.'),
  (10414, 104, 'it', 'Cattedrale di San Vito', 'Cattedrale gotica all’interno del Castello di Praga.'),
  (10415, 104, 'pt', 'Catedral de São Vito', 'Catedral gótica dentro do Castelo de Praga.'),
  (10416, 104, 'pl', 'Katedra św. Wita', 'Gotycka katedra na terenie Zamku Praskiego.');

-- (105) Astronomical Clock (Orloj)
INSERT INTO poi_i18n VALUES
  (10417, 105, 'en', 'Astronomical Clock (Orloj)', 'Medieval clock famous for its hourly show.'),
  (10418, 105, 'it', 'Orologio Astronomico (Orloj)', 'Orologio medievale famoso per lo spettacolo a ogni ora.'),
  (10419, 105, 'pt', 'Relógio Astronómico (Orloj)', 'Relógio medieval famoso pelo espetáculo de hora em hora.'),
  (10420, 105, 'pl', 'Zegar astronomiczny (Orloj)', 'Średniowieczny zegar znany z godzinnego pokazu.');

-- (106) Dancing House
INSERT INTO poi_i18n VALUES
  (10421, 106, 'en', 'Dancing House', 'Deconstructivist riverside landmark by Gehry & Milunić.'),
  (10422, 106, 'it', 'Casa Danzante', 'Iconico edificio decostruttivista sul fiume.'),
  (10423, 106, 'pt', 'Casa Dançante', 'Ícone deconstrutivista à beira do rio.'),
  (10424, 106, 'pl', 'Tańczący Dom', 'Dekonstruktywistyczna ikona nad Wełtawą.');

-- (107) Vyšehrad
INSERT INTO poi_i18n VALUES
  (10425, 107, 'en', 'Vyšehrad', 'Historic fort and park with city views.'),
  (10426, 107, 'it', 'Vyšehrad', 'Antica fortezza e parco con viste sulla città.'),
  (10427, 107, 'pt', 'Vyšehrad', 'Antiga fortaleza e parque com vistas da cidade.'),
  (10428, 107, 'pl', 'Wyszehrad', 'Historyczna twierdza i park z widokami na miasto.');

-- (108) Petřín Lookout Tower
INSERT INTO poi_i18n VALUES
  (10429, 108, 'en', 'Petřín Lookout Tower', 'Observation tower with panoramic views of Prague.'),
  (10430, 108, 'it', 'Torre panoramica di Petřín', 'Torre di osservazione con viste panoramiche su Praga.'),
  (10431, 108, 'pt', 'Torre Panorâmica de Petřín', 'Torre de observação com vistas de Praga.'),
  (10432, 108, 'pl', 'Wieża widokowa Petřín', 'Wieża obserwacyjna z panoramą Pragi.');

-- (109) National Theatre (Prague)
INSERT INTO poi_i18n VALUES
  (10433, 109, 'en', 'National Theatre (Prague)', 'Neo-Renaissance theatre by the Vltava River.'),
  (10434, 109, 'it', 'Teatro Nazionale (Praga)', 'Teatro neorinascimentale sulle rive della Moldava.'),
  (10435, 109, 'pt', 'Teatro Nacional (Praga)', 'Teatro neorrenascentista junto ao rio Moldava.'),
  (10436, 109, 'pl', 'Teatr Narodowy (Praga)', 'Neorenesansowy teatr nad Wełtawą.');

-- (110) Žižkov Television Tower
INSERT INTO poi_i18n VALUES
  (10437, 110, 'en', 'Žižkov Television Tower', 'High-rise tower with observatory and art.'),
  (10438, 110, 'it', 'Torre TV di Žižkov', 'Torre panoramica con osservatorio e installazioni artistiche.'),
  (10439, 110, 'pt', 'Torre de Televisão de Žižkov', 'Torre alta com observatório e arte.'),
  (10440, 110, 'pl', 'Wieża telewizyjna Žižkov', 'Wysoka wieża z tarasem widokowym i sztuką.');

-- (111) Český Krumlov Castle
INSERT INTO poi_i18n VALUES
  (10441, 111, 'en', 'Český Krumlov Castle', 'Hilltop castle above a meander of the Vltava.'),
  (10442, 111, 'it', 'Castello di Český Krumlov', 'Castello sulla collina sopra un’ansa della Moldava.'),
  (10443, 111, 'pt', 'Castelo de Český Krumlov', 'Castelo no alto sobre uma curva do Moldava.'),
  (10444, 111, 'pl', 'Zamek w Czeskim Krumlovie', 'Zamek na wzgórzu nad zakolem Wełtawy.');

-- (112) Karlovy Vary Mill Colonnade
INSERT INTO poi_i18n VALUES
  (10445, 112, 'en', 'Mill Colonnade (Karlovy Vary)', 'Neo-Renaissance spa colonnade with hot springs.'),
  (10446, 112, 'it', 'Colonnato delle Terme (Karlovy Vary)', 'Colonnato termale neorinascimentale con sorgenti calde.'),
  (10447, 112, 'pt', 'Colunata das Termas (Karlovy Vary)', 'Colunata termal neorrenascentista com fontes termais.'),
  (10448, 112, 'pl', 'Kolumnada Młyńska (Karlowe Wary)', 'Neorenesansowa kolumnada uzdrowiskowa z gorącymi źródłami.');

-- (113) St. Barbara's Church (Kutná Hora)
INSERT INTO poi_i18n VALUES
  (10449, 113, 'en', 'St. Barbara''s Church (Kutná Hora)', 'Gothic masterpiece with flying buttresses.'),
  (10450, 113, 'it', 'Chiesa di Santa Barbara (Kutná Hora)', 'Capolavoro gotico con archi rampanti.'),
  (10451, 113, 'pt', 'Igreja de Santa Bárbara (Kutná Hora)', 'Obra-prima gótica com arcobotantes.'),
  (10452, 113, 'pl', 'Kościół św. Barbary (Kutná Hora)', 'Gotyckie arcydzieło z przyporami.');

-- (114) Sedlec Ossuary
INSERT INTO poi_i18n VALUES
  (10453, 114, 'en', 'Sedlec Ossuary (Kutná Hora)', 'Chapel decorated with human bones.'),
  (10454, 114, 'it', 'Ossario di Sedlec (Kutná Hora)', 'Cappella decorata con ossa umane.'),
  (10455, 114, 'pt', 'Ossário de Sedlec (Kutná Hora)', 'Capela decorada com ossos humanos.'),
  (10456, 114, 'pl', 'Kostnica w Sedlcu (Kutná Hora)', 'Kaplica ozdobiona ludzkimi kośćmi.');

-- (115) Špilberk Castle (Brno)
INSERT INTO poi_i18n VALUES
  (10457, 115, 'en', 'Špilberk Castle (Brno)', 'Fortress and museum on a hill above Brno.'),
  (10458, 115, 'it', 'Castello di Špilberk (Brno)', 'Fortezza e museo su una collina sopra Brno.'),
  (10459, 115, 'pt', 'Castelo de Špilberk (Brno)', 'Fortaleza e museu numa colina sobre Brno.'),
  (10460, 115, 'pl', 'Zamek Špilberk (Brno)', 'Twierdza i muzeum na wzgórzu nad Brnem.');

-- (116) Cathedral of St. Peter and Paul (Brno)
INSERT INTO poi_i18n VALUES
  (10461, 116, 'en', 'Cathedral of St. Peter and Paul (Brno)', 'Neo-Gothic cathedral on Petrov hill.'),
  (10462, 116, 'it', 'Cattedrale dei Santi Pietro e Paolo (Brno)', 'Cattedrale neogotica sulla collina Petrov.'),
  (10463, 116, 'pt', 'Catedral de São Pedro e São Paulo (Brno)', 'Catedral neogótica na colina Petrov.'),
  (10464, 116, 'pl', 'Katedra śś. Piotra i Pawła (Brno)', 'Neogotycka katedra na wzgórzu Petrov.');

-- (117) Lednice Chateau
INSERT INTO poi_i18n VALUES
  (10465, 117, 'en', 'Lednice Chateau', 'Romantic chateau within the Lednice–Valtice landscape.'),
  (10466, 117, 'it', 'Castello di Lednice', 'Castello romantico nel paesaggio Lednice–Valtice.'),
  (10467, 117, 'pt', 'Palácio de Lednice', 'Palácio romântico no paisagem Lednice–Valtice.'),
  (10468, 117, 'pl', 'Zamek w Lednicach', 'Romantyczny pałac w krajobrazie Lednice–Valtice.');

-- (118) Punkva Caves & Macocha Abyss
INSERT INTO poi_i18n VALUES
  (10469, 118, 'en', 'Punkva Caves & Macocha Abyss', 'Boat ride and gorge in the Moravian Karst.'),
  (10470, 118, 'it', 'Grotte Punkva e Abisso Macocha', 'Gita in barca e gola nel Carso Moravo.'),
  (10471, 118, 'pt', 'Grutas Punkva e Abismo Macocha', 'Passeio de barco e garganta no Carso da Morávia.'),
  (10472, 118, 'pl', 'Jaskinie Punkvy i przepaść Macocha', 'Rejs łodzią i wąwóz w Krasie Morawskim.');

-- (119) Holy Trinity Column (Olomouc)
INSERT INTO poi_i18n VALUES
  (10473, 119, 'en', 'Holy Trinity Column (Olomouc)', 'Baroque plague column and UNESCO site.'),
  (10474, 119, 'it', 'Colonna della Santissima Trinità (Olomouc)', 'Colonna della peste barocca, sito UNESCO.'),
  (10475, 119, 'pt', 'Coluna da Santíssima Trindade (Olomouc)', 'Coluna barroca da peste, Património UNESCO.'),
  (10476, 119, 'pl', 'Kolumna Trójcy Świętej (Ołomuniec)', 'Barokowa kolumna morowa, obiekt UNESCO.');

-- (120) Telč Historic Center
INSERT INTO poi_i18n VALUES
  (10477, 120, 'en', 'Telč Historic Center', 'Pastel Renaissance square and arcades (UNESCO).'),
  (10478, 120, 'it', 'Centro storico di Telč', 'Piazza rinascimentale pastello con portici (UNESCO).'),
  (10479, 120, 'pt', 'Centro histórico de Telč', 'Praça renascentista em tons pastel com arcadas (UNESCO).'),
  (10480, 120, 'pl', 'Historyczne centrum Telcza', 'Pastelowy renesansowy rynek z podcieniami (UNESCO).');


-- =========================
-- SLOVAKIA: 20 POIs (base)
-- =========================
INSERT INTO poi (id, country_code, lat, lng, nice_score, visit_time) VALUES
  (121, 'SK', 48.1426, 17.1000, 5,  60),  -- Bratislava Castle
  (122, 'SK', 48.1426, 17.1043, 4,  45),  -- St. Martin's Cathedral (Bratislava)
  (123, 'SK', 48.1450, 17.1077, 5,  60),  -- Old Town Square (Bratislava)
  (124, 'SK', 48.1388, 17.1044, 4,  45),  -- UFO Observation Deck (Most SNP)
  (125, 'SK', 48.1732, 16.9784, 5,  90),  -- Devín Castle
  (126, 'SK', 48.1469, 17.1167, 4,  45),  -- Blue Church (St. Elizabeth)
  (127, 'SK', 48.0282, 17.2071, 4,  75),  -- Danubiana Meulensteen Art Museum
  (128, 'SK', 49.0008, 20.7675, 5, 120),  -- Spiš Castle
  (129, 'SK', 49.1180, 20.0637, 5,  90),  -- Štrbské Pleso (High Tatras)
  (130, 'SK', 49.1649, 20.2819, 4,  75),  -- Tatranská Lomnica (resort & cable car)
  (131, 'SK', 49.1665, 20.2186, 4,  60),  -- Hrebienok (funicular & viewpoints)
  (132, 'SK', 49.1881, 20.2320, 4,  60),  -- Skalnaté Pleso (lake & cable car)
  (133, 'SK', 48.9744, 20.4905, 5, 120),  -- Slovak Paradise – Suchá Belá Gorge
  (134, 'SK', 48.4586, 18.8939, 5,  90),  -- Banská Štiavnica Historic Town
  (135, 'SK', 49.0785, 19.2787, 5,  60),  -- Vlkolínec (UNESCO)
  (136, 'SK', 48.7802, 18.5772, 5,  90),  -- Bojnice Castle
  (137, 'SK', 49.2619, 19.3580, 5,  75),  -- Orava Castle
  (138, 'SK', 48.9997, 19.5834, 4,  60),  -- Demänovská Ice Cave
  (139, 'SK', 48.7210, 21.2581, 5,  60),  -- St. Elisabeth Cathedral (Košice)
  (140, 'SK', 48.9553, 18.6380, 4,  45);  -- Čičmany Painted Village

-- =======================================
-- Translations (en, it, pt, pl) — 10481..10560
-- =======================================

-- (121) Bratislava Castle
INSERT INTO poi_i18n (id_poi_i18n, poi_id, lang, name, description) VALUES
  (10481, 121, 'en', 'Bratislava Castle', 'Hilltop castle overlooking the Danube and Old Town.'),
  (10482, 121, 'it', 'Castello di Bratislava', 'Castello sulla collina con vista sul Danubio e sulla Città Vecchia.'),
  (10483, 121, 'pt', 'Castelo de Bratislava', 'Castelo no alto com vista para o Danúbio e a Cidade Velha.'),
  (10484, 121, 'pl', 'Zamek Bratysławski', 'Zamek na wzgórzu z widokiem na Dunaj i Stare Miasto.');

-- (122) St. Martin's Cathedral
INSERT INTO poi_i18n VALUES
  (10485, 122, 'en', 'St. Martin''s Cathedral (Bratislava)', 'Gothic cathedral and former coronation church.'),
  (10486, 122, 'it', 'Cattedrale di San Martino (Bratislava)', 'Cattedrale gotica e antica chiesa d’incoronazione.'),
  (10487, 122, 'pt', 'Catedral de São Martinho (Bratislava)', 'Catedral gótica e antiga igreja de coroação.'),
  (10488, 122, 'pl', 'Katedra św. Marcina (Bratysława)', 'Gotycka katedra i dawna świątynia koronacyjna.');

-- (123) Old Town Square (Bratislava)
INSERT INTO poi_i18n VALUES
  (10489, 123, 'en', 'Old Town Square (Bratislava)', 'Historic square with pastel facades and cafés.'),
  (10490, 123, 'it', 'Piazza della Città Vecchia (Bratislava)', 'Piazza storica con facciate pastello e caffè.'),
  (10491, 123, 'pt', 'Praça da Cidade Velha (Bratislava)', 'Praça histórica com fachadas em tons pastel e cafés.'),
  (10492, 123, 'pl', 'Rynek Starego Miasta (Bratysława)', 'Historyczny rynek z pastelowymi kamienicami i kawiarniami.');

-- (124) UFO Observation Deck (Most SNP)
INSERT INTO poi_i18n VALUES
  (10493, 124, 'en', 'UFO Observation Deck (Most SNP)', 'Panoramic viewing platform above the Danube.'),
  (10494, 124, 'it', 'UFO – Piattaforma panoramica (Ponte SNP)', 'Piattaforma panoramica sopra il Danubio.'),
  (10495, 124, 'pt', 'UFO – Miradouro (Ponte SNP)', 'Plataforma panorâmica sobre o Danúbio.'),
  (10496, 124, 'pl', 'UFO – taras widokowy (Most SNP)', 'Panoramiczny taras widokowy nad Dunajem.');

-- (125) Devín Castle
INSERT INTO poi_i18n VALUES
  (10497, 125, 'en', 'Devín Castle', 'Ruined fortress at the confluence of the Danube and Morava.'),
  (10498, 125, 'it', 'Castello di Devín', 'Fortezza in rovina alla confluenza del Danubio e della Morava.'),
  (10499, 125, 'pt', 'Castelo de Devín', 'Fortaleza em ruínas na confluência do Danúbio e Morava.'),
  (10500, 125, 'pl', 'Zamek Devín', 'Ruiny twierdzy u zbiegu Dunaju i Morawy.');

-- (126) Blue Church (St. Elizabeth)
INSERT INTO poi_i18n VALUES
  (10501, 126, 'en', 'Blue Church (St. Elizabeth)', 'Art Nouveau church famed for its blue facade.'),
  (10502, 126, 'it', 'Chiesa Blu (Sant’Elisabetta)', 'Chiesa in stile Liberty famosa per la facciata azzurra.'),
  (10503, 126, 'pt', 'Igreja Azul (Santa Isabel)', 'Igreja Arte Nova famosa pela fachada azul.'),
  (10504, 126, 'pl', 'Niebieski Kościół (św. Elżbiety)', 'Secesyjny kościół znany z błękitnej fasady.');

-- (127) Danubiana Meulensteen Art Museum
INSERT INTO poi_i18n VALUES
  (10505, 127, 'en', 'Danubiana Meulensteen Art Museum', 'Contemporary art museum on a Danube peninsula.'),
  (10506, 127, 'it', 'Museo d’Arte Danubiana Meulensteen', 'Museo di arte contemporanea su una penisola del Danubio.'),
  (10507, 127, 'pt', 'Museu de Arte Danubiana Meulensteen', 'Museu de arte contemporânea numa península do Danúbio.'),
  (10508, 127, 'pl', 'Muzeum Sztuki Danubiana Meulensteen', 'Muzeum sztuki współczesnej na półwyspie nad Dunajem.');

-- (128) Spiš Castle
INSERT INTO poi_i18n VALUES
  (10509, 128, 'en', 'Spiš Castle', 'One of Europe’s largest castle ruins (UNESCO).'),
  (10510, 128, 'it', 'Castello di Spiš', 'Una delle più grandi rovine di castelli d’Europa (UNESCO).'),
  (10511, 128, 'pt', 'Castelo de Spiš', 'Uma das maiores ruínas de castelo da Europa (UNESCO).'),
  (10512, 128, 'pl', 'Zamek Spiski', 'Jedne z największych ruin zamku w Europie (UNESCO).');

-- (129) Štrbské Pleso
INSERT INTO poi_i18n VALUES
  (10513, 129, 'en', 'Štrbské Pleso', 'Glacial lake and resort in the High Tatras.'),
  (10514, 129, 'it', 'Štrbské Pleso', 'Lago glaciale e località nei Tatra Alti.'),
  (10515, 129, 'pt', 'Štrbské Pleso', 'Lago glacial e estância nos Altos Tatras.'),
  (10516, 129, 'pl', 'Štrbské Pleso', 'Jezioro polodowcowe i ośrodek w Tatrach Wysokich.');

-- (130) Tatranská Lomnica
INSERT INTO poi_i18n VALUES
  (10517, 130, 'en', 'Tatranská Lomnica', 'Resort and cable car to Lomnický štít.'),
  (10518, 130, 'it', 'Tatranská Lomnica', 'Località e funivia per il Lomnický štít.'),
  (10519, 130, 'pt', 'Tatranská Lomnica', 'Estância e teleférico para o Lomnický štít.'),
  (10520, 130, 'pl', 'Tatranská Lomnica', 'Ośrodek i kolejka linowa na Lomnicki Szczyt.');

-- (131) Hrebienok
INSERT INTO poi_i18n VALUES
  (10521, 131, 'en', 'Hrebienok', 'Funicular from Starý Smokovec to viewpoints and trails.'),
  (10522, 131, 'it', 'Hrebienok', 'Funicolare da Starý Smokovec a belvederi e sentieri.'),
  (10523, 131, 'pt', 'Hrebienok', 'Funicular de Starý Smokovec para miradouros e trilhos.'),
  (10524, 131, 'pl', 'Hrebienok', 'Kolejka linowo-terenowa ze Starego Smokowca na punkty widokowe i szlaki.');

-- (132) Skalnaté Pleso
INSERT INTO poi_i18n VALUES
  (10525, 132, 'en', 'Skalnaté Pleso', 'Mountain lake and cable car station below Lomnický štít.'),
  (10526, 132, 'it', 'Skalnaté Pleso', 'Lago di montagna e stazione della funivia sotto il Lomnický štít.'),
  (10527, 132, 'pt', 'Skalnaté Pleso', 'Lago de montanha e estação do teleférico abaixo do Lomnický štít.'),
  (10528, 132, 'pl', 'Skalnaté Pleso', 'Górskie jezioro i stacja kolejki pod Lomnickim Szczytem.');

-- (133) Slovak Paradise – Suchá Belá Gorge
INSERT INTO poi_i18n VALUES
  (10529, 133, 'en', 'Slovak Paradise – Suchá Belá Gorge', 'Ladders and waterfalls through a narrow gorge.'),
  (10530, 133, 'it', 'Slovac Paradise – Gola Suchá Belá', 'Scale e cascate lungo una gola stretta.'),
  (10531, 133, 'pt', 'Paraíso Eslovaco – Garganta Suchá Belá', 'Escadas e cascatas por uma garganta estreita.'),
  (10532, 133, 'pl', 'Słowacki Raj – wąwóz Suchá Belá', 'Drabinki i wodospady w wąskiej dolinie.');

-- (134) Banská Štiavnica Historic Town
INSERT INTO poi_i18n VALUES
  (10533, 134, 'en', 'Banská Štiavnica Historic Town', 'Mining heritage town in volcanic hills (UNESCO).'),
  (10534, 134, 'it', 'Città storica di Banská Štiavnica', 'Città mineraria tra colline vulcaniche (UNESCO).'),
  (10535, 134, 'pt', 'Cidade histórica de Banská Štiavnica', 'Cidade mineira nas colinas vulcânicas (UNESCO).'),
  (10536, 134, 'pl', 'Historyczne miasto Banská Štiavnica', 'Górnicze dziedzictwo w wulkanicznych wzgórzach (UNESCO).');

-- (135) Vlkolínec
INSERT INTO poi_i18n VALUES
  (10537, 135, 'en', 'Vlkolínec', 'Well-preserved wooden village (UNESCO).'),
  (10538, 135, 'it', 'Vlkolínec', 'Villaggio in legno ben conservato (UNESCO).'),
  (10539, 135, 'pt', 'Vlkolínec', 'Aldeia de madeira bem preservada (UNESCO).'),
  (10540, 135, 'pl', 'Vlkolínec', 'Dobrze zachowana drewniana wieś (UNESCO).');

-- (136) Bojnice Castle
INSERT INTO poi_i18n VALUES
  (10541, 136, 'en', 'Bojnice Castle', 'Fairy-tale castle with park and museum.'),
  (10542, 136, 'it', 'Castello di Bojnice', 'Castello da fiaba con parco e museo.'),
  (10543, 136, 'pt', 'Castelo de Bojnice', 'Castelo de conto de fadas com parque e museu.'),
  (10544, 136, 'pl', 'Zamek w Bojnicach', 'Bajkowy zamek z parkiem i muzeum.');

-- (137) Orava Castle
INSERT INTO poi_i18n VALUES
  (10545, 137, 'en', 'Orava Castle', 'Clifftop medieval castle above the Orava River.'),
  (10546, 137, 'it', 'Castello di Orava', 'Castello medievale sulla rupe sopra il fiume Orava.'),
  (10547, 137, 'pt', 'Castelo de Orava', 'Castelo medieval no alto acima do rio Orava.'),
  (10548, 137, 'pl', 'Zamek Orawski', 'Średniowieczny zamek na skale nad rzeką Orawą.');

-- (138) Demänovská Ice Cave
INSERT INTO poi_i18n VALUES
  (10549, 138, 'en', 'Demänovská Ice Cave', 'Ice formations in the Demänovská Valley.'),
  (10550, 138, 'it', 'Grotta di ghiaccio Demänovská', 'Formazioni di ghiaccio nella valle di Demänovská.'),
  (10551, 138, 'pt', 'Gruta de Gelo de Demänovská', 'Formações de gelo no vale de Demänovská.'),
  (10552, 138, 'pl', 'Jaskinia Lodowa Demianowska', 'Lodowe formacje w Dolinie Demianowskiej.');

-- (139) St. Elisabeth Cathedral (Košice)
INSERT INTO poi_i18n VALUES
  (10553, 139, 'en', 'St. Elisabeth Cathedral (Košice)', 'Largest Gothic cathedral in Slovakia.'),
  (10554, 139, 'it', 'Cattedrale di Santa Elisabetta (Košice)', 'La più grande cattedrale gotica della Slovacchia.'),
  (10555, 139, 'pt', 'Catedral de Santa Isabel (Košice)', 'A maior catedral gótica da Eslováquia.'),
  (10556, 139, 'pl', 'Katedra św. Elżbiety (Koszyce)', 'Największa gotycka katedra na Słowacji.');

-- (140) Čičmany Painted Village
INSERT INTO poi_i18n VALUES
  (10557, 140, 'en', 'Čičmany Painted Village', 'Traditional wooden houses with white geometric patterns.'),
  (10558, 140, 'it', 'Villaggio dipinto di Čičmany', 'Case in legno tradizionali con motivi geometrici bianchi.'),
  (10559, 140, 'pt', 'Aldeia pintada de Čičmany', 'Casas de madeira tradicionais com padrões geométricos brancos.'),
  (10560, 140, 'pl', 'Malowana wieś Čičmany', 'Tradycyjne drewniane domy z białymi wzorami geometrycznymi.');


-- =========================
-- ROMANIA: 20 POIs (base)
-- =========================
INSERT INTO poi (id, country_code, lat, lng, nice_score, visit_time) VALUES
  (141, 'RO', 44.4319, 26.0979, 5,  60),  -- Bucharest Old Town (Centrul Vechi)
  (142, 'RO', 44.4275, 26.0875, 5,  90),  -- Palace of Parliament (Bucharest)
  (143, 'RO', 44.4412, 26.0979, 5,  45),  -- Romanian Athenaeum (Bucharest)
  (144, 'RO', 44.4711, 26.0770, 4,  60),  -- Village Museum (Muzeul Satului), Bucharest
  (145, 'RO', 44.4321, 26.0979, 4,  30),  -- Stavropoleos Monastery (Bucharest)
  (146, 'RO', 44.4781, 26.0809, 4,  75),  -- King Michael I Park (Herăstrău), Bucharest
  (147, 'RO', 45.3609, 25.5429, 5,  90),  -- Peleș Castle (Sinaia)
  (148, 'RO', 45.5152, 25.3670, 5,  75),  -- Bran Castle
  (149, 'RO', 45.6427, 25.5887, 4,  60),  -- Brașov Council Square (Piața Sfatului)
  (150, 'RO', 45.6410, 25.5884, 4,  45),  -- Black Church (Brașov)
  (151, 'RO', 46.2196, 24.7920, 5,  60),  -- Sighișoara Citadel
  (152, 'RO', 45.7960, 24.1510, 5,  60),  -- Sibiu Large Square (Piața Mare)
  (153, 'RO', 45.7493, 22.8886, 5,  75),  -- Corvin Castle (Hunedoara)
  (154, 'RO', 46.0710, 23.5733, 4,  60),  -- Alba Carolina Citadel (Alba Iulia)
  (155, 'RO', 45.6094, 24.6177, 5, 120),  -- Bâlea Lake (Transfăgărășan)
  (156, 'RO', 46.5747, 23.7874, 5,  90),  -- Turda Salt Mine
  (157, 'RO', 47.7947, 24.0231, 4,  60),  -- Bârsana Monastery (Maramureș)
  (158, 'RO', 47.9671, 23.7000, 4,  45),  -- Merry Cemetery (Săpânța)
  (159, 'RO', 47.5186, 25.8690, 5,  60),  -- Voroneț Monastery (Bucovina)
  (160, 'RO', 45.1796, 28.8050, 5, 120);  -- Danube Delta (Tulcea Promenade)

-- =======================================
-- Translations (en, it, pt, pl) — 10561..10640
-- =======================================

-- (141) Bucharest Old Town
INSERT INTO poi_i18n (id_poi_i18n, poi_id, lang, name, description) VALUES
  (10561, 141, 'en', 'Bucharest Old Town', 'Cobbled lanes, cafés and historic facades in the city center.'),
  (10562, 141, 'it', 'Città Vecchia di Bucarest', 'Vicoli acciottolati, caffè e facciate storiche nel centro.'),
  (10563, 141, 'pt', 'Cidade Velha de Bucareste', 'Ruelas de pedra, cafés e fachadas históricas no centro.'),
  (10564, 141, 'pl', 'Stare Miasto w Bukareszcie', 'Brukowane uliczki, kawiarnie i zabytkowe fasady w centrum.');

-- (142) Palace of Parliament
INSERT INTO poi_i18n VALUES
  (10565, 142, 'en', 'Palace of Parliament', 'Colossal administrative palace with guided tours.'),
  (10566, 142, 'it', 'Palazzo del Parlamento', 'Colossale palazzo amministrativo con visite guidate.'),
  (10567, 142, 'pt', 'Palácio do Parlamento', 'Palácio administrativo colossal com visitas guiadas.'),
  (10568, 142, 'pl', 'Pałac Parlamentu', 'Kolosalny gmach administracyjny z wycieczkami.');

-- (143) Romanian Athenaeum
INSERT INTO poi_i18n VALUES
  (10569, 143, 'en', 'Romanian Athenaeum', 'Ornate concert hall and symbol of Romanian culture.'),
  (10570, 143, 'it', 'Ateneo Romeno', 'Sontuosa sala da concerto, simbolo della cultura rumena.'),
  (10571, 143, 'pt', 'Ateneu Romeno', 'Suntuosa sala de concertos, símbolo da cultura romena.'),
  (10572, 143, 'pl', 'Ateneum Rumuńskie', 'Bogato zdobiona sala koncertowa – symbol kultury rumuńskiej.');

-- (144) Village Museum
INSERT INTO poi_i18n VALUES
  (10573, 144, 'en', 'Village Museum (Dimitrie Gusti)', 'Open-air museum of traditional Romanian houses.'),
  (10574, 144, 'it', 'Museo del Villaggio (Dimitrie Gusti)', 'Museo all’aperto di case tradizionali rumene.'),
  (10575, 144, 'pt', 'Museu da Aldeia (Dimitrie Gusti)', 'Museu ao ar livre de casas tradicionais romenas.'),
  (10576, 144, 'pl', 'Muzeum Wsi (Dimitrie Gusti)', 'Skansen tradycyjnych rumuńskich domów.');

-- (145) Stavropoleos Monastery
INSERT INTO poi_i18n VALUES
  (10577, 145, 'en', 'Stavropoleos Monastery', 'Small 18th-century church with exquisite carvings.'),
  (10578, 145, 'it', 'Monastero di Stavropoleos', 'Piccola chiesa del XVIII secolo con raffinati intagli.'),
  (10579, 145, 'pt', 'Mosteiro de Stavropoleos', 'Pequena igreja do século XVIII com entalhes requintados.'),
  (10580, 145, 'pl', 'Monastyr Stavropoleos', 'Niewielki XVIII-wieczny kościół z misterną snycerką.');

-- (146) King Michael I Park (Herăstrău)
INSERT INTO poi_i18n VALUES
  (10581, 146, 'en', 'King Michael I Park (Herăstrău)', 'Lakeside city park with paths and gardens.'),
  (10582, 146, 'it', 'Parco Re Michele I (Herăstrău)', 'Parco cittadino sul lago con sentieri e giardini.'),
  (10583, 146, 'pt', 'Parque Rei Miguel I (Herăstrău)', 'Parque urbano à beira-lago com trilhos e jardins.'),
  (10584, 146, 'pl', 'Park Króla Michała I (Herăstrău)', 'Miejski park nad jeziorem ze ścieżkami i ogrodami.');

-- (147) Peleș Castle
INSERT INTO poi_i18n VALUES
  (10585, 147, 'en', 'Peleș Castle', 'Neo-Renaissance royal residence in Sinaia.'),
  (10586, 147, 'it', 'Castello di Peleș', 'Residenza reale neorinascimentale a Sinaia.'),
  (10587, 147, 'pt', 'Castelo de Peleș', 'Residência real neorrenascentista em Sinaia.'),
  (10588, 147, 'pl', 'Zamek Peleș', 'Neorenesansowa rezydencja królewska w Sinai.');

-- (148) Bran Castle
INSERT INTO poi_i18n VALUES
  (10589, 148, 'en', 'Bran Castle', 'Hilltop fortress linked to the Dracula legend.'),
  (10590, 148, 'it', 'Castello di Bran', 'Fortezza sulla collina legata alla leggenda di Dracula.'),
  (10591, 148, 'pt', 'Castelo de Bran', 'Fortaleza no alto ligada à lenda de Drácula.'),
  (10592, 148, 'pl', 'Zamek Bran', 'Warownia na wzgórzu, kojarzona z legendą o Drakuli.');

-- (149) Brașov Council Square
INSERT INTO poi_i18n VALUES
  (10593, 149, 'en', 'Brașov Council Square (Piața Sfatului)', 'Central square with colorful townhouses and cafés.'),
  (10594, 149, 'it', 'Piața Sfatului (Brașov)', 'Piazza centrale con case colorate e caffè.'),
  (10595, 149, 'pt', 'Praça do Conselho (Brașov)', 'Praça central com casas coloridas e cafés.'),
  (10596, 149, 'pl', 'Rynek Rady Miejskiej (Brașov)', 'Centralny plac z kolorowymi kamienicami i kawiarniami.');

-- (150) Black Church (Brașov)
INSERT INTO poi_i18n VALUES
  (10597, 150, 'en', 'Black Church (Brașov)', 'Gothic landmark church with a vast nave.'),
  (10598, 150, 'it', 'Chiesa Nera (Brașov)', 'Chiesa gotica simbolo della città, con ampia navata.'),
  (10599, 150, 'pt', 'Igreja Negra (Brașov)', 'Igreja gótica emblemática com grande nave.'),
  (10600, 150, 'pl', 'Czarny Kościół (Brașov)', 'Gotycka świątynia – symbol miasta, z rozległą nawą.');

-- (151) Sighișoara Citadel
INSERT INTO poi_i18n VALUES
  (10601, 151, 'en', 'Sighișoara Citadel', 'UNESCO medieval citadel with a clock tower.'),
  (10602, 151, 'it', 'Cittadella di Sighișoara', 'Cittadella medievale UNESCO con torre dell’orologio.'),
  (10603, 151, 'pt', 'Cidadela de Sighișoara', 'Cidadela medieval UNESCO com torre do relógio.'),
  (10604, 151, 'pl', 'Cytadela Sighișoary', 'Średniowieczna cytadela UNESCO z wieżą zegarową.');

-- (152) Sibiu Large Square
INSERT INTO poi_i18n VALUES
  (10605, 152, 'en', 'Sibiu Large Square (Piața Mare)', 'Grand square framed by Baroque facades.'),
  (10606, 152, 'it', 'Sibiu – Piața Mare', 'Ampia piazza incorniciata da facciate barocche.'),
  (10607, 152, 'pt', 'Sibiu – Piața Mare', 'Grande praça moldurada por fachadas barrocas.'),
  (10608, 152, 'pl', 'Sybina – Piata Mare', 'Rozległy plac otoczony barokowymi fasadami.');

-- (153) Corvin Castle (Hunedoara)
INSERT INTO poi_i18n VALUES
  (10609, 153, 'en', 'Corvin Castle (Hunedoara)', 'Impressive Gothic-Renaissance fortress with a long bridge.'),
  (10610, 153, 'it', 'Castello dei Corvino (Hunedoara)', 'Imponente fortezza gotico-rinascimentale con lungo ponte.'),
  (10611, 153, 'pt', 'Castelo Corvino (Hunedoara)', 'Imponente fortaleza gótico-renascentista com ponte longo.'),
  (10612, 153, 'pl', 'Zamek Korwinów (Hunedoara)', 'Okazała twierdza gotycko-renesansowa z długim mostem.');

-- (154) Alba Carolina Citadel
INSERT INTO poi_i18n VALUES
  (10613, 154, 'en', 'Alba Carolina Citadel', 'Star-shaped Vauban fortress in Alba Iulia.'),
  (10614, 154, 'it', 'Cittadella Alba Carolina', 'Fortezza stellata alla Vauban ad Alba Iulia.'),
  (10615, 154, 'pt', 'Cidadela Alba Carolina', 'Fortaleza em estrela ao estilo Vauban em Alba Iulia.'),
  (10616, 154, 'pl', 'Twierdza Alba Carolina', 'Gwiazda typu Vauban w Alba Iulia.');

-- (155) Bâlea Lake (Transfăgărășan)
INSERT INTO poi_i18n VALUES
  (10617, 155, 'en', 'Bâlea Lake (Transfăgărășan)', 'High-mountain glacial lake on a famed alpine road.'),
  (10618, 155, 'it', 'Lago Bâlea (Transfăgărășan)', 'Lago glaciale d’alta quota lungo la celebre strada alpina.'),
  (10619, 155, 'pt', 'Lago Bâlea (Transfăgărășan)', 'Lago glacial em alta montanha numa estrada alpina célebre.'),
  (10620, 155, 'pl', 'Jezioro Bâlea (Transfăgărășan)', 'Wysokogórskie jezioro polodowcowe przy słynnej drodze alpejskiej.');

-- (156) Turda Salt Mine
INSERT INTO poi_i18n VALUES
  (10621, 156, 'en', 'Turda Salt Mine', 'Spectacular underground galleries and attractions.'),
  (10622, 156, 'it', 'Miniera di Sale di Turda', 'Spettacolari gallerie sotterranee e attrazioni.'),
  (10623, 156, 'pt', 'Mina de Sal de Turda', 'Galerias subterrâneas espetaculares e atrações.'),
  (10624, 156, 'pl', 'Kopalnia soli w Turdzie', 'Spektakularne podziemne komory i atrakcje.');

-- (157) Bârsana Monastery
INSERT INTO poi_i18n VALUES
  (10625, 157, 'en', 'Bârsana Monastery (Maramureș)', 'Wooden church ensemble with tall spires.'),
  (10626, 157, 'it', 'Monastero di Bârsana (Maramureș)', 'Complesso di chiese in legno con alte guglie.'),
  (10627, 157, 'pt', 'Mosteiro de Bârsana (Maramureș)', 'Conjunto de igreja de madeira com torres altas.'),
  (10628, 157, 'pl', 'Monastyr Bârsana (Marmarosz)', 'Zespół drewnianych cerkwi z wysokimi wieżami.');

-- (158) Merry Cemetery (Săpânța)
INSERT INTO poi_i18n VALUES
  (10629, 158, 'en', 'Merry Cemetery (Săpânța)', 'Colorful painted crosses with witty epitaphs.'),
  (10630, 158, 'it', 'Cimitero Allegro (Săpânța)', 'Croci dipinte e colorate con epitaffi arguti.'),
  (10631, 158, 'pt', 'Cemitério Alegre (Săpânța)', 'Cruzes coloridas pintadas com epitáfios espirituosos.'),
  (10632, 158, 'pl', 'Wesoły Cmentarz (Săpânța)', 'Kolorowe, malowane krzyże z dowcipnymi epitafiami.');

-- (159) Voroneț Monastery
INSERT INTO poi_i18n VALUES
  (10633, 159, 'en', 'Voroneț Monastery', 'Frescoed monastery famed for its deep blue.'),
  (10634, 159, 'it', 'Monastero di Voroneț', 'Monastero affrescato celebre per il suo blu intenso.'),
  (10635, 159, 'pt', 'Mosteiro de Voroneț', 'Mosteiro com frescos famoso pelo azul profundo.'),
  (10636, 159, 'pl', 'Monastyr Voroneț', 'Klasztor z freskami, słynny z głębokiego błękitu.');

-- (160) Danube Delta (Tulcea)
INSERT INTO poi_i18n VALUES
  (10637, 160, 'en', 'Danube Delta (Tulcea Promenade)', 'Gateway to wetlands, birds and winding channels.'),
  (10638, 160, 'it', 'Delta del Danubio (Lungofiume di Tulcea)', 'Porta alle zone umide, agli uccelli e ai canali serpeggianti.'),
  (10639, 160, 'pt', 'Delta do Danúbio (Marginal de Tulcea)', 'Porta para zonas húmidas, aves e canais sinuosos.'),
  (10640, 160, 'pl', 'Delta Dunaju (promenada w Tulczy)', 'Brama do mokradeł, ptactwa i krętych kanałów.');


-- =========================
-- BULGARIA: 20 POIs (base)
-- =========================
INSERT INTO poi (id, country_code, lat, lng, nice_score, visit_time) VALUES
  (161, 'BG', 42.6956, 23.3325, 5,  60),  -- Alexander Nevsky Cathedral (Sofia)
  (162, 'BG', 42.6439, 23.2647, 5,  60),  -- Boyana Church (Sofia)
  (163, 'BG', 42.5627, 23.2988, 4,  90),  -- Vitosha Mountain (Aleko area)
  (164, 'BG', 42.6859, 23.3199, 4,  45),  -- National Palace of Culture (NDK)
  (165, 'BG', 42.1332, 23.3400, 5, 120),  -- Rila Monastery
  (166, 'BG', 42.1906, 23.3849, 5, 120),  -- Seven Rila Lakes
  (167, 'BG', 42.1463, 24.7516, 5,  60),  -- Roman Theatre of Plovdiv
  (168, 'BG', 42.1485, 24.7498, 4,  60),  -- Plovdiv Old Town
  (169, 'BG', 41.9415, 24.8496, 5,  60),  -- Bachkovo Monastery
  (170, 'BG', 43.0848, 25.6615, 5,  75),  -- Tsarevets Fortress (Veliko Tarnovo)
  (171, 'BG', 43.1030, 25.6620, 4,  45),  -- Arbanasi Village
  (172, 'BG', 43.6289, 22.6839, 5,  90),  -- Belogradchik Rocks
  (173, 'BG', 43.7333, 22.5733, 4,  60),  -- Magura Cave
  (174, 'BG', 43.2445, 24.8829, 4,  60),  -- Devetashka Cave
  (175, 'BG', 43.2469, 25.0333, 4,  60),  -- Krushuna Waterfalls
  (176, 'BG', 43.2069, 27.9205, 4,  60),  -- Varna Sea Garden
  (177, 'BG', 43.2049, 27.9147, 4,  45),  -- Varna Cathedral (Dormition)
  (178, 'BG', 42.6598, 27.7351, 5,  75),  -- Nessebar Old Town
  (179, 'BG', 43.3784, 28.4679, 5,  60),  -- Cape Kaliakra
  (180, 'BG', 42.4177, 27.6953, 4,  60);  -- Sozopol Old Town

-- =======================================
-- Translations (en, it, pt, pl) — 10641..10720
-- =======================================

-- (161) Alexander Nevsky Cathedral
INSERT INTO poi_i18n (id_poi_i18n, poi_id, lang, name, description) VALUES
  (10641, 161, 'en', 'Alexander Nevsky Cathedral', 'Grand Neo-Byzantine cathedral, symbol of Sofia.'),
  (10642, 161, 'it', 'Cattedrale di Aleksandr Nevskij', 'Grande cattedrale neobizantina, simbolo di Sofia.'),
  (10643, 161, 'pt', 'Catedral de Alexandre Nevsky', 'Imponente catedral neobizantina, símbolo de Sófia.'),
  (10644, 161, 'pl', 'Katedra Aleksandra Newskiego', 'Okazała katedra neobizantyjska – symbol Sofii.');

-- (162) Boyana Church
INSERT INTO poi_i18n VALUES
  (10645, 162, 'en', 'Boyana Church', 'UNESCO medieval church with remarkable frescoes.'),
  (10646, 162, 'it', 'Chiesa di Boyana', 'Chiesa medievale UNESCO con affreschi notevoli.'),
  (10647, 162, 'pt', 'Igreja de Boyana', 'Igreja medieval UNESCO com frescos notáveis.'),
  (10648, 162, 'pl', 'Cerkiew Bojańska', 'Średniowieczna świątynia UNESCO ze znakomitymi freskami.');

-- (163) Vitosha Mountain (Aleko)
INSERT INTO poi_i18n VALUES
  (10649, 163, 'en', 'Vitosha Mountain (Aleko)', 'Easy access to trails and views above Sofia.'),
  (10650, 163, 'it', 'Monte Vitosha (Aleko)', 'Facile accesso a sentieri e viste su Sofia.'),
  (10651, 163, 'pt', 'Montanha Vitosha (Aleko)', 'Acesso fácil a trilhos e miradouros sobre Sófia.'),
  (10652, 163, 'pl', 'Góra Witosza (Aleko)', 'Łatwy dostęp do szlaków i panoram nad Sofią.');

-- (164) National Palace of Culture (NDK)
INSERT INTO poi_i18n VALUES
  (10653, 164, 'en', 'National Palace of Culture (NDK)', 'Modernist venue and city square in central Sofia.'),
  (10654, 164, 'it', 'Palazzo Nazionale della Cultura (NDK)', 'Spazio modernista e piazza nel centro di Sofia.'),
  (10655, 164, 'pt', 'Palácio Nacional da Cultura (NDK)', 'Complexo modernista e praça no centro de Sófia.'),
  (10656, 164, 'pl', 'Pałac Kultury Narodowej (NDK)', 'Modernistyczny gmach i plac w centrum Sofii.');

-- (165) Rila Monastery
INSERT INTO poi_i18n VALUES
  (10657, 165, 'en', 'Rila Monastery', 'Bulgaria’s most famous monastery in forested mountains.'),
  (10658, 165, 'it', 'Monastero di Rila', 'Il monastero più famoso della Bulgaria, tra montagne boscose.'),
  (10659, 165, 'pt', 'Mosteiro de Rila', 'O mosteiro mais famoso da Bulgária, nas montanhas.'),
  (10660, 165, 'pl', 'Monastyr Rilski', 'Najsłynniejszy bułgarski klasztor wśród górskich lasów.');

-- (166) Seven Rila Lakes
INSERT INTO poi_i18n VALUES
  (10661, 166, 'en', 'Seven Rila Lakes', 'Glacial lakes linked by scenic alpine trails.'),
  (10662, 166, 'it', 'Sette Laghi di Rila', 'Laghi glaciali collegati da scenici sentieri alpini.'),
  (10663, 166, 'pt', 'Sete Lagos de Rila', 'Lagos glaciais ligados por trilhos alpinos cênicos.'),
  (10664, 166, 'pl', 'Siedem Rilskich Jezior', 'Jeziora polodowcowe połączone malowniczymi szlakami.');

-- (167) Roman Theatre of Plovdiv
INSERT INTO poi_i18n VALUES
  (10665, 167, 'en', 'Roman Theatre of Plovdiv', 'Well-preserved ancient theatre with city views.'),
  (10666, 167, 'it', 'Teatro Romano di Plovdiv', 'Antico teatro ben conservato con viste sulla città.'),
  (10667, 167, 'pt', 'Teatro Romano de Plovdiv', 'Antigo teatro bem preservado com vistas da cidade.'),
  (10668, 167, 'pl', 'Rzymski teatr w Płowdiwie', 'Dobrze zachowany antyczny teatr z widokiem na miasto.');

-- (168) Plovdiv Old Town
INSERT INTO poi_i18n VALUES
  (10669, 168, 'en', 'Plovdiv Old Town', 'Revival-era mansions and cobbled lanes.'),
  (10670, 168, 'it', 'Città Vecchia di Plovdiv', 'Dimore dell’epoca della rinascita bulgara e vicoli lastricati.'),
  (10671, 168, 'pt', 'Cidade Antiga de Plovdiv', 'Solares do renascimento búlgaro e ruas de pedra.'),
  (10672, 168, 'pl', 'Stare Miasto w Płowdiwie', 'Kamienice z epoki odrodzenia bułgarskiego i brukowane uliczki.');

-- (169) Bachkovo Monastery
INSERT INTO poi_i18n VALUES
  (10673, 169, 'en', 'Bachkovo Monastery', 'Historic monastery in the Rhodope Mountains.'),
  (10674, 169, 'it', 'Monastero di Bachkovo', 'Antico monastero nei Monti Rodopi.'),
  (10675, 169, 'pt', 'Mosteiro de Bachkovo', 'Mosteiro histórico nas Montanhas Ródope.'),
  (10676, 169, 'pl', 'Monastyr Baczkowski', 'Zabytkowy klasztor w górach Rodopach.');

-- (170) Tsarevets Fortress (Veliko Tarnovo)
INSERT INTO poi_i18n VALUES
  (10677, 170, 'en', 'Tsarevets Fortress (Veliko Tarnovo)', 'Medieval stronghold on a dramatic hill.'),
  (10678, 170, 'it', 'Fortezza di Tsarevets (Veliko Tarnovo)', 'Rocca medievale su una collina scenografica.'),
  (10679, 170, 'pt', 'Fortaleza de Tsarevets (Veliko Tarnovo)', 'Fortaleza medieval sobre uma colina dramática.'),
  (10680, 170, 'pl', 'Twierdza Carewec (Wielkie Tyrnowo)', 'Średniowieczna warownia na efektownym wzgórzu.');

-- (171) Arbanasi Village
INSERT INTO poi_i18n VALUES
  (10681, 171, 'en', 'Arbanasi Village', 'Historic village with stone houses and churches.'),
  (10682, 171, 'it', 'Arbanasi (villaggio storico)', 'Villaggio storico con case in pietra e chiese.'),
  (10683, 171, 'pt', 'Arbanasi (aldeia histórica)', 'Aldeia histórica com casas de pedra e igrejas.'),
  (10684, 171, 'pl', 'Arbanasi – wieś', 'Historyczna wieś z kamiennymi domami i cerkwiami.');

-- (172) Belogradchik Rocks
INSERT INTO poi_i18n VALUES
  (10685, 172, 'en', 'Belogradchik Rocks', 'Striking sandstone formations and fortress.'),
  (10686, 172, 'it', 'Rocce di Belogradchik', 'Suggestive formazioni di arenaria e fortezza.'),
  (10687, 172, 'pt', 'Rochas de Belogradchik', 'Formações de arenito impressionantes e fortaleza.'),
  (10688, 172, 'pl', 'Skały Biełogradcziku', 'Efektowne formacje z piaskowca i twierdza.');

-- (173) Magura Cave
INSERT INTO poi_i18n VALUES
  (10689, 173, 'en', 'Magura Cave', 'Large cave with prehistoric paintings.'),
  (10690, 173, 'it', 'Grotta Magura', 'Ampia grotta con pitture preistoriche.'),
  (10691, 173, 'pt', 'Gruta Magura', 'Grande gruta com pinturas pré-históricas.'),
  (10692, 173, 'pl', 'Jaskinia Magura', 'Obszerna jaskinia z malowidłami prehistorycznymi.');

-- (174) Devetashka Cave
INSERT INTO poi_i18n VALUES
  (10693, 174, 'en', 'Devetashka Cave', 'Cavernous archways and natural skylights.'),
  (10694, 174, 'it', 'Grotta Devetashka', 'Grandi arcate e lucernari naturali.'),
  (10695, 174, 'pt', 'Gruta Devetashka', 'Arcos cavernosos e claraboias naturais.'),
  (10696, 174, 'pl', 'Jaskinia Dewetaszka', 'Olbrzymie sklepienia i naturalne świetliki.');

-- (175) Krushuna Waterfalls
INSERT INTO poi_i18n VALUES
  (10697, 175, 'en', 'Krushuna Waterfalls', 'Turquoise cascades over limestone terraces.'),
  (10698, 175, 'it', 'Cascate di Krushuna', 'Cascate turchesi su terrazze calcaree.'),
  (10699, 175, 'pt', 'Cascatas de Krushuna', 'Quedas turquesa sobre terraços calcários.'),
  (10700, 175, 'pl', 'Wodospady Kruszuny', 'Turkusowe kaskady na wapiennych tarasach.');

-- (176) Varna Sea Garden
INSERT INTO poi_i18n VALUES
  (10701, 176, 'en', 'Varna Sea Garden', 'Seaside park with promenades and museums.'),
  (10702, 176, 'it', 'Giardino del Mare (Varna)', 'Parco sul mare con passeggiate e musei.'),
  (10703, 176, 'pt', 'Jardim do Mar (Varna)', 'Parque à beira-mar com passeios e museus.'),
  (10704, 176, 'pl', 'Morski Ogród w Warnie', 'Nadmorski park ze ścieżkami i muzeami.');

-- (177) Varna Cathedral (Dormition)
INSERT INTO poi_i18n VALUES
  (10705, 177, 'en', 'Cathedral of the Dormition (Varna)', 'Orthodox cathedral with gilded domes.'),
  (10706, 177, 'it', 'Cattedrale della Dormizione (Varna)', 'Cattedrale ortodossa con cupole dorate.'),
  (10707, 177, 'pt', 'Catedral da Dormição (Varna)', 'Catedral ortodoxa com cúpulas douradas.'),
  (10708, 177, 'pl', 'Sobór Zaśnięcia Bogurodzicy (Warna)', 'Cerkiew prawosławna ze złoconymi kopułami.');

-- (178) Nessebar Old Town
INSERT INTO poi_i18n VALUES
  (10709, 178, 'en', 'Nessebar Old Town', 'Peninsula old town of churches and wooden houses (UNESCO).'),
  (10710, 178, 'it', 'Città Vecchia di Nessebar', 'Città antica su penisola con chiese e case in legno (UNESCO).'),
  (10711, 178, 'pt', 'Cidade Antiga de Nessebar', 'Centro antigo peninsular com igrejas e casas de madeira (UNESCO).'),
  (10712, 178, 'pl', 'Stare Miasto w Nesebyrze', 'Półwyspowe stare miasto z cerkwiami i drewnianą zabudową (UNESCO).');

-- (179) Cape Kaliakra
INSERT INTO poi_i18n VALUES
  (10713, 179, 'en', 'Cape Kaliakra', 'Dramatic cliffs and fortress ruins above the Black Sea.'),
  (10714, 179, 'it', 'Capo Kaliakra', 'Falesie spettacolari e rovine della fortezza sul Mar Nero.'),
  (10715, 179, 'pt', 'Cabo Kaliakra', 'Falésias dramáticas e ruínas de fortaleza sobre o Mar Negro.'),
  (10716, 179, 'pl', 'Przylądek Kaliakra', 'Dramatyczne klify i ruiny twierdzy nad Morzem Czarnym.');

-- (180) Sozopol Old Town
INSERT INTO poi_i18n VALUES
  (10717, 180, 'en', 'Sozopol Old Town', 'Wood-and-stone houses on a rocky Black Sea peninsula.'),
  (10718, 180, 'it', 'Città Vecchia di Sozopol', 'Case in legno e pietra su una penisola del Mar Nero.'),
  (10719, 180, 'pt', 'Cidade Antiga de Sozopol', 'Casas de madeira e pedra numa península do Mar Negro.'),
  (10720, 180, 'pl', 'Stare Miasto w Sozopolu', 'Drewniano-kamienna zabudowa na skalistej półwyspie nad Morzem Czarnym.');


-- =========================
-- TURKEY: 20 POIs (base)
-- =========================
INSERT INTO poi (id, country_code, lat, lng, nice_score, visit_time) VALUES
  (181, 'TR', 41.0086, 28.9802, 5,  90),  -- Hagia Sophia (Istanbul)
  (182, 'TR', 41.0054, 28.9768, 5,  45),  -- Blue Mosque (Sultan Ahmed)
  (183, 'TR', 41.0115, 28.9834, 5, 120),  -- Topkapi Palace
  (184, 'TR', 41.0109, 28.9683, 4,  60),  -- Grand Bazaar
  (185, 'TR', 41.0083, 28.9779, 5,  45),  -- Basilica Cistern
  (186, 'TR', 41.0257, 28.9744, 4,  45),  -- Galata Tower
  (187, 'TR', 41.0340, 28.9770, 4,  60),  -- Istiklal Avenue & Taksim
  (188, 'TR', 41.0166, 28.9639, 5,  60),  -- Süleymaniye Mosque
  (189, 'TR', 41.0165, 28.9714, 4,  45),  -- Spice Bazaar (Egyptian Bazaar)
  (190, 'TR', 38.6431, 34.8328, 5, 120),  -- Göreme Open-Air Museum (Cappadocia)
  (191, 'TR', 38.6295, 34.8052, 4,  60),  -- Uçhisar Castle (Cappadocia)
  (192, 'TR', 38.6451, 34.8265, 5,  60),  -- Cappadocia Sunrise Viewpoint (Göreme)
  (193, 'TR', 37.9161, 29.1173, 5, 120),  -- Pamukkale Travertines
  (194, 'TR', 37.9197, 29.1210, 4,  60),  -- Cleopatra’s Pool (Pamukkale)
  (195, 'TR', 37.9390, 27.3410, 5, 120),  -- Ephesus (Library of Celsus)
  (196, 'TR', 36.8841, 30.7056, 4,  90),  -- Antalya Old Town (Kaleiçi & Hadrian’s Gate)
  (197, 'TR', 36.9391, 31.1711, 5,  60),  -- Aspendos Theatre
  (198, 'TR', 37.0311, 27.4294, 4,  60),  -- Bodrum Castle
  (199, 'TR', 36.5496, 29.1155, 5,  90),  -- Ölüdeniz Blue Lagoon
  (200, 'TR', 37.9805, 38.7402, 5, 120);  -- Mount Nemrut

-- =======================================
-- Translations (en, it, pt, pl) — 10721..10800
-- =======================================

-- (181) Hagia Sophia
INSERT INTO poi_i18n (id_poi_i18n, poi_id, lang, name, description) VALUES
  (10721, 181, 'en', 'Hagia Sophia', 'Byzantine basilica-turned-mosque with vast dome.'),
  (10722, 181, 'it', 'Santa Sofia (Ayasofya)', 'Basilica bizantina trasformata in moschea con grande cupola.'),
  (10723, 181, 'pt', 'Santa Sofia (Ayasofya)', 'Basílica bizantina transformada em mesquita com grande cúpula.'),
  (10724, 181, 'pl', 'Hagia Sofia (Ayasofya)', 'Bizantyjska świątynia przekształcona w meczet z ogromną kopułą.');

-- (182) Blue Mosque
INSERT INTO poi_i18n VALUES
  (10725, 182, 'en', 'Blue Mosque (Sultan Ahmed)', 'Ottoman mosque famed for blue İznik tiles.'),
  (10726, 182, 'it', 'Moschea Blu (Sultanahmet)', 'Moschea ottomana famosa per le piastrelle di İznik.'),
  (10727, 182, 'pt', 'Mesquita Azul (Sultanahmet)', 'Mesquita otomana famosa pelos azulejos de İznik.'),
  (10728, 182, 'pl', 'Błękitny Meczet (Sultanahmet)', 'Osmański meczet słynący z niebieskich płytek z İzniku.');

-- (183) Topkapi Palace
INSERT INTO poi_i18n VALUES
  (10729, 183, 'en', 'Topkapi Palace', 'Ottoman sultans’ palace with courtyards and treasures.'),
  (10730, 183, 'it', 'Palazzo Topkapi', 'Palazzo dei sultani ottomani con corti e tesori.'),
  (10731, 183, 'pt', 'Palácio Topkapi', 'Palácio dos sultões otomanos com pátios e tesouros.'),
  (10732, 183, 'pl', 'Pałac Topkapi', 'Pałac sułtanów osmańskich z dziedzińcami i skarbcem.');

-- (184) Grand Bazaar
INSERT INTO poi_i18n VALUES
  (10733, 184, 'en', 'Grand Bazaar', 'Historic covered market with thousands of shops.'),
  (10734, 184, 'it', 'Gran Bazar', 'Storico mercato coperto con migliaia di botteghe.'),
  (10735, 184, 'pt', 'Grande Bazar', 'Histórico mercado coberto com milhares de lojas.'),
  (10736, 184, 'pl', 'Wielki Bazar', 'Historyczny kryty bazar z tysiącami sklepów.');

-- (185) Basilica Cistern
INSERT INTO poi_i18n VALUES
  (10737, 185, 'en', 'Basilica Cistern', 'Underground forest of columns and Medusa heads.'),
  (10738, 185, 'it', 'Cisterna Basilica', 'Suggestiva cisterna sotterranea con colonne e teste di Medusa.'),
  (10739, 185, 'pt', 'Cisterna da Basílica', 'Cisterna subterrânea com colunas e cabeças de Medusa.'),
  (10740, 185, 'pl', 'Cysterna Bazyliki', 'Podziemna hala kolumn z głowami Meduzy.');

-- (186) Galata Tower
INSERT INTO poi_i18n VALUES
  (10741, 186, 'en', 'Galata Tower', 'Medieval stone tower with city panorama.'),
  (10742, 186, 'it', 'Torre di Galata', 'Torre medievale in pietra con panorama sulla città.'),
  (10743, 186, 'pt', 'Torre de Gálata', 'Torre medieval em pedra com vista panorâmica.'),
  (10744, 186, 'pl', 'Wieża Galata', 'Średniowieczna kamienna wieża z panoramą miasta.');

-- (187) Istiklal Avenue & Taksim
INSERT INTO poi_i18n VALUES
  (10745, 187, 'en', 'Istiklal Avenue & Taksim', 'Lively pedestrian street, cafés and shops.'),
  (10746, 187, 'it', 'Viale Istiklal e Piazza Taksim', 'Vivace via pedonale con caffè e negozi.'),
  (10747, 187, 'pt', 'Avenida Istiklal e Praça Taksim', 'Rua pedonal animada com cafés e lojas.'),
  (10748, 187, 'pl', 'Aleja Istiklal i plac Taksim', 'Tętniąca życiem ulica piesza z kawiarniami i sklepami.');

-- (188) Süleymaniye Mosque
INSERT INTO poi_i18n VALUES
  (10749, 188, 'en', 'Süleymaniye Mosque', 'Sinan’s grand mosque overlooking the Golden Horn.'),
  (10750, 188, 'it', 'Moschea di Süleymaniye', 'Grande moschea di Sinan affacciata sul Corno d’Oro.'),
  (10751, 188, 'pt', 'Mesquita de Süleymaniye', 'Grande mesquita de Sinan com vista para o Corno de Ouro.'),
  (10752, 188, 'pl', 'Meczet Sulejmana', 'Wielki meczet Sinana z widokiem na Złoty Róg.');

-- (189) Spice Bazaar
INSERT INTO poi_i18n VALUES
  (10753, 189, 'en', 'Spice Bazaar (Egyptian Bazaar)', 'Aromatic market of spices, sweets and teas.'),
  (10754, 189, 'it', 'Bazar delle Spezie (Egiziano)', 'Mercato di spezie, dolci e tè profumati.'),
  (10755, 189, 'pt', 'Bazar das Especiarias (Egípcio)', 'Mercado aromático de especiarias, doces e chás.'),
  (10756, 189, 'pl', 'Bazar Egipski (Targ Przypraw)', 'Aromatyczny targ przypraw, słodyczy i herbat.');

-- (190) Göreme Open-Air Museum
INSERT INTO poi_i18n VALUES
  (10757, 190, 'en', 'Göreme Open-Air Museum', 'Rock-cut churches with vivid frescoes (UNESCO).'),
  (10758, 190, 'it', 'Museo all’aperto di Göreme', 'Chiese rupestri con vividi affreschi (UNESCO).'),
  (10759, 190, 'pt', 'Museu a Céu Aberto de Göreme', 'Igrejas escavadas na rocha com frescos (UNESCO).'),
  (10760, 190, 'pl', 'Skansen Göreme', 'Wykute w skale kościoły z freskami (UNESCO).');

-- (191) Uçhisar Castle
INSERT INTO poi_i18n VALUES
  (10761, 191, 'en', 'Uçhisar Castle', 'Natural rock citadel with panoramic Cappadocia views.'),
  (10762, 191, 'it', 'Castello di Uçhisar', 'Cittadella nella roccia con viste panoramiche sulla Cappadocia.'),
  (10763, 191, 'pt', 'Castelo de Uçhisar', 'Cidadela escavada na rocha com vistas da Capadócia.'),
  (10764, 191, 'pl', 'Zamek Uçhisar', 'Skały–twierdza z panoramicznym widokiem na Kapadocję.');

-- (192) Cappadocia Sunrise Viewpoint
INSERT INTO poi_i18n VALUES
  (10765, 192, 'en', 'Cappadocia Sunrise Viewpoint', 'Balloon-filled sunrise over fairy chimneys.'),
  (10766, 192, 'it', 'Belvedere alba in Cappadocia', 'Alba tra mongolfiere e camini delle fate.'),
  (10767, 192, 'pt', 'Miradouro do nascer do sol na Capadócia', 'Nascer do sol com balões sobre chaminés de fadas.'),
  (10768, 192, 'pl', 'Punkt wschodu słońca – Kapadocja', 'Wschód słońca z balonami nad kominami wróżek.');

-- (193) Pamukkale Travertines
INSERT INTO poi_i18n VALUES
  (10769, 193, 'en', 'Pamukkale Travertines', 'White terraces and thermal pools.'),
  (10770, 193, 'it', 'Travertini di Pamukkale', 'Bianche terrazze con piscine termali.'),
  (10771, 193, 'pt', 'Travertinos de Pamukkale', 'Terraços brancos e piscinas termais.'),
  (10772, 193, 'pl', 'Tarasy Pamukkale', 'Białe tarasy i baseny termalne.');

-- (194) Cleopatra’s Pool
INSERT INTO poi_i18n VALUES
  (10773, 194, 'en', 'Cleopatra’s Pool (Pamukkale)', 'Warm mineral pool among ancient columns.'),
  (10774, 194, 'it', 'Piscina di Cleopatra (Pamukkale)', 'Calda piscina minerale tra antiche colonne.'),
  (10775, 194, 'pt', 'Piscina de Cleópatra (Pamukkale)', 'Piscina mineral quente entre colunas antigas.'),
  (10776, 194, 'pl', 'Basen Kleopatry (Pamukkale)', 'Ciepły, mineralny basen wśród antycznych kolumn.');

-- (195) Ephesus
INSERT INTO poi_i18n VALUES
  (10777, 195, 'en', 'Ephesus – Library of Celsus', 'Ruins of a great Roman city and famed library.'),
  (10778, 195, 'it', 'Efeso – Biblioteca di Celso', 'Rovine di una grande città romana e della celebre biblioteca.'),
  (10779, 195, 'pt', 'Éfeso – Biblioteca de Celso', 'Ruínas de uma grande cidade romana e sua famosa biblioteca.'),
  (10780, 195, 'pl', 'Efez – Biblioteka Celsusa', 'Ruiny wielkiego rzymskiego miasta i słynnej biblioteki.');

-- (196) Antalya Old Town (Kaleiçi)
INSERT INTO poi_i18n VALUES
  (10781, 196, 'en', 'Antalya Old Town (Kaleiçi)', 'Harbor, lanes and Hadrian’s Gate.'),
  (10782, 196, 'it', 'Antalya – Città Vecchia (Kaleiçi)', 'Porto, vicoli e Porta di Adriano.'),
  (10783, 196, 'pt', 'Antália – Cidade Antiga (Kaleiçi)', 'Marina, ruelas e Porta de Adriano.'),
  (10784, 196, 'pl', 'Antalya – Stare Miasto (Kaleiçi)', 'Port, uliczki i Brama Hadriana.');

-- (197) Aspendos Theatre
INSERT INTO poi_i18n VALUES
  (10785, 197, 'en', 'Aspendos Theatre', 'Exceptionally preserved Roman theatre.'),
  (10786, 197, 'it', 'Teatro di Aspendos', 'Teatro romano eccezionalmente conservato.'),
  (10787, 197, 'pt', 'Teatro de Aspendos', 'Teatro romano excecionalmente preservado.'),
  (10788, 197, 'pl', 'Teatr w Aspendos', 'Wyjątkowo dobrze zachowany teatr rzymski.');

-- (198) Bodrum Castle
INSERT INTO poi_i18n VALUES
  (10789, 198, 'en', 'Bodrum Castle', 'Crusader castle and Museum of Underwater Archaeology.'),
  (10790, 198, 'it', 'Castello di Bodrum', 'Castello crociato e Museo di Archeologia Sottomarina.'),
  (10791, 198, 'pt', 'Castelo de Bodrum', 'Castelo cruzado e Museu de Arqueologia Subaquática.'),
  (10792, 198, 'pl', 'Zamek w Bodrum', 'Zamek krzyżowców i Muzeum Archeologii Podwodnej.');

-- (199) Ölüdeniz Blue Lagoon
INSERT INTO poi_i18n VALUES
  (10793, 199, 'en', 'Ölüdeniz Blue Lagoon', 'Sheltered turquoise bay and beach.'),
  (10794, 199, 'it', 'Laguna Blu di Ölüdeniz', 'Baia turchese riparata con spiaggia.'),
  (10795, 199, 'pt', 'Lagoa Azul de Ölüdeniz', 'Baía abrigada de águas turquesa e praia.'),
  (10796, 199, 'pl', 'Błękitna Laguna Ölüdeniz', 'Osłonięta turkusowa zatoka i plaża.');

-- (200) Mount Nemrut
INSERT INTO poi_i18n VALUES
  (10797, 200, 'en', 'Mount Nemrut', 'Summit statues and royal tumulus at sunrise.'),
  (10798, 200, 'it', 'Monte Nemrut', 'Statue sulla vetta e tumulo reale all’alba.'),
  (10799, 200, 'pt', 'Monte Nemrut', 'Estátuas no cume e túmulo real ao amanhecer.'),
  (10800, 200, 'pl', 'Góra Nemrut', 'Posągi na szczycie i królewski kurhan o świcie.');


-- =========================
-- SWEDEN: 20 POIs (base)
-- =========================
INSERT INTO poi (id, country_code, lat, lng, nice_score, visit_time) VALUES
  (201, 'SE', 59.3250, 18.0700, 5,  60),  -- Gamla Stan (Stockholm Old Town)
  (202, 'SE', 59.3269, 18.0716, 5,  60),  -- Royal Palace (Stockholm)
  (203, 'SE', 59.3275, 18.0915, 5,  90),  -- Vasa Museum (Stockholm)
  (204, 'SE', 59.3250, 18.1033, 4,  90),  -- Skansen (Stockholm)
  (205, 'SE', 59.3275, 18.0557, 4,  60),  -- Stockholm City Hall (Stadshuset)
  (206, 'SE', 59.3217, 17.8869, 5,  75),  -- Drottningholm Palace
  (207, 'SE', 59.3256, 18.0966, 4,  60),  -- ABBA The Museum
  (208, 'SE', 59.3170, 18.0863, 4,  60),  -- Fotografiska
  (209, 'SE', 59.3266, 18.0843, 4,  60),  -- Moderna Museet
  (210, 'SE', 59.3202, 18.0602, 5,  45),  -- Monteliusvagen Viewpoint
  (211, 'SE', 57.6960, 11.9936, 5,  90),  -- Liseberg (Gothenburg)
  (212, 'SE', 57.6968, 11.9575, 4,  60),  -- Haga District (Gothenburg)
  (213, 'SE', 57.6953, 11.9876, 4,  75),  -- Universeum (Gothenburg)
  (214, 'SE', 57.6850, 11.9380, 4,  60),  -- Slottsskogen Park (Gothenburg)
  (215, 'SE', 55.6136, 12.9762, 5,  45),  -- Turning Torso (Malmo)
  (216, 'SE', 55.5603, 12.9215, 4,  45),  -- Oresund Bridge Viewpoint (Malmo)
  (217, 'SE', 55.7047, 13.1910, 4,  45),  -- Lund Cathedral
  (218, 'SE', 59.8570, 17.6399, 4,  45),  -- Uppsala Cathedral
  (219, 'SE', 57.6409, 18.2960, 5,  75),  -- Visby Old Town (Gotland)
  (220, 'SE', 68.4207, 18.7832, 5, 120);  -- Abisko National Park (Aurora Sky Station)

-- =======================================
-- Translations (en, it, pt, pl) — 10801..10880
-- =======================================

-- (201) Gamla Stan
INSERT INTO poi_i18n (id_poi_i18n, poi_id, lang, name, description) VALUES
  (10801, 201, 'en', 'Gamla Stan (Old Town)', 'Cobbled lanes and colorful facades on a historic island.'),
  (10802, 201, 'it', 'Gamla Stan (Città Vecchia)', 'Vicoli acciottolati e facciate colorate su un’isola storica.'),
  (10803, 201, 'pt', 'Gamla Stan (Cidade Antiga)', 'Ruelas de pedra e fachadas coloridas numa ilha histórica.'),
  (10804, 201, 'pl', 'Gamla Stan (Stare Miasto)', 'Brukowane uliczki i kolorowe kamienice na historycznej wyspie.');

-- (202) Royal Palace
INSERT INTO poi_i18n VALUES
  (10805, 202, 'en', 'Royal Palace (Stockholm)', 'Baroque royal residence with museums and the guard change.'),
  (10806, 202, 'it', 'Palazzo Reale (Stoccolma)', 'Residenza reale barocca con musei e cambio della guardia.'),
  (10807, 202, 'pt', 'Palácio Real (Estocolmo)', 'Residência real barroca com museus e troca da guarda.'),
  (10808, 202, 'pl', 'Pałac Królewski (Sztokholm)', 'Barokowa rezydencja królewska z muzeami i zmianą warty.');

-- (203) Vasa Museum
INSERT INTO poi_i18n VALUES
  (10809, 203, 'en', 'Vasa Museum', '17th-century warship preserved in a modern hall.'),
  (10810, 203, 'it', 'Museo Vasa', 'Nave da guerra del XVII secolo conservata in un padiglione moderno.'),
  (10811, 203, 'pt', 'Museu Vasa', 'Navio de guerra do século XVII preservado num pavilhão moderno.'),
  (10812, 203, 'pl', 'Muzeum Vasa', 'XVII-wieczny okręt wojenny zachowany w nowoczesnej hali.');

-- (204) Skansen
INSERT INTO poi_i18n VALUES
  (10813, 204, 'en', 'Skansen', 'Open-air museum of Swedish life and wildlife.'),
  (10814, 204, 'it', 'Skansen', 'Museo all’aperto sulla vita svedese e fauna locale.'),
  (10815, 204, 'pt', 'Skansen', 'Museu ao ar livre da vida sueca e fauna.'),
  (10816, 204, 'pl', 'Skansen', 'Skansen prezentujący życie w Szwecji i lokalną faunę.');

-- (205) Stockholm City Hall
INSERT INTO poi_i18n VALUES
  (10817, 205, 'en', 'Stockholm City Hall (Stadshuset)', 'Iconic brick hall with tower views over Riddarfjärden.'),
  (10818, 205, 'it', 'Municipio di Stoccolma (Stadshuset)', 'Iconico municipio in mattoni con torre panoramica.'),
  (10819, 205, 'pt', 'Prefeitura de Estocolmo (Stadshuset)', 'Icónica prefeitura em tijolo com torre panorâmica.'),
  (10820, 205, 'pl', 'Ratusz w Sztokholmie (Stadshuset)', 'Ikoniczny ceglany gmach z wieżą widokową.');

-- (206) Drottningholm Palace
INSERT INTO poi_i18n VALUES
  (10821, 206, 'en', 'Drottningholm Palace', 'Royal palace and gardens on Lake Mälaren (UNESCO).'),
  (10822, 206, 'it', 'Palazzo di Drottningholm', 'Palazzo reale con giardini sul lago Mälaren (UNESCO).'),
  (10823, 206, 'pt', 'Palácio de Drottningholm', 'Palácio real e jardins no lago Mälaren (UNESCO).'),
  (10824, 206, 'pl', 'Pałac Drottningholm', 'Rezydencja królewska z ogrodami nad jeziorem Mälaren (UNESCO).');

-- (207) ABBA The Museum
INSERT INTO poi_i18n VALUES
  (10825, 207, 'en', 'ABBA The Museum', 'Interactive pop museum on Djurgården.'),
  (10826, 207, 'it', 'ABBA The Museum', 'Museo pop interattivo a Djurgården.'),
  (10827, 207, 'pt', 'ABBA The Museum', 'Museu pop interativo em Djurgården.'),
  (10828, 207, 'pl', 'ABBA The Museum', 'Interaktywne muzeum pop na Djurgården.');

-- (208) Fotografiska
INSERT INTO poi_i18n VALUES
  (10829, 208, 'en', 'Fotografiska', 'Contemporary photography museum with city views.'),
  (10830, 208, 'it', 'Fotografiska', 'Museo di fotografia contemporanea con viste sulla città.'),
  (10831, 208, 'pt', 'Fotografiska', 'Museu de fotografia contemporânea com vista da cidade.'),
  (10832, 208, 'pl', 'Fotografiska', 'Muzeum fotografii współczesnej z widokiem na miasto.');

-- (209) Moderna Museet
INSERT INTO poi_i18n VALUES
  (10833, 209, 'en', 'Moderna Museet', 'Modern and contemporary art on Skeppsholmen.'),
  (10834, 209, 'it', 'Moderna Museet', 'Arte moderna e contemporanea a Skeppsholmen.'),
  (10835, 209, 'pt', 'Moderna Museet', 'Arte moderna e contemporânea em Skeppsholmen.'),
  (10836, 209, 'pl', 'Moderna Museet', 'Sztuka nowoczesna i współczesna na Skeppsholmen.');

-- (210) Monteliusvagen Viewpoint
INSERT INTO poi_i18n VALUES
  (10837, 210, 'en', 'Monteliusvagen Viewpoint', 'Clifftop path with classic skyline views of Stockholm.'),
  (10838, 210, 'it', 'Belvedere di Monteliusvägen', 'Passeggiata sul crinale con viste sullo skyline di Stoccolma.'),
  (10839, 210, 'pt', 'Miradouro de Monteliusvägen', 'Caminho no topo da falésia com vistas de Estocolmo.'),
  (10840, 210, 'pl', 'Punkt widokowy Monteliusvägen', 'Ścieżka na skarpie z klasyczną panoramą Sztokholmu.');

-- (211) Liseberg
INSERT INTO poi_i18n VALUES
  (10841, 211, 'en', 'Liseberg (Gothenburg)', 'Historic amusement park with seasonal events.'),
  (10842, 211, 'it', 'Liseberg (Göteborg)', 'Storico parco divertimenti con eventi stagionali.'),
  (10843, 211, 'pt', 'Liseberg (Gotemburgo)', 'Parque de diversões histórico com eventos sazonais.'),
  (10844, 211, 'pl', 'Liseberg (Göteborg)', 'Historyczny park rozrywki z wydarzeniami sezonowymi.');

-- (212) Haga District
INSERT INTO poi_i18n VALUES
  (10845, 212, 'en', 'Haga District (Gothenburg)', 'Cafés, wooden houses and cobbled streets.'),
  (10846, 212, 'it', 'Quartiere Haga (Göteborg)', 'Caffè, case in legno e strade acciottolate.'),
  (10847, 212, 'pt', 'Bairro Haga (Gotemburgo)', 'Cafés, casas de madeira e ruas de pedra.'),
  (10848, 212, 'pl', 'Dzielnica Haga (Göteborg)', 'Kawiarnie, drewniane domy i brukowane uliczki.');

-- (213) Universeum
INSERT INTO poi_i18n VALUES
  (10849, 213, 'en', 'Universeum (Gothenburg)', 'Science center with aquariums and hands-on exhibits.'),
  (10850, 213, 'it', 'Universeum (Göteborg)', 'Science center con acquari ed exhibit interattivi.'),
  (10851, 213, 'pt', 'Universeum (Gotemburgo)', 'Centro de ciência com aquários e exposições interativas.'),
  (10852, 213, 'pl', 'Universeum (Göteborg)', 'Centrum nauki z akwariami i interaktywnymi wystawami.');

-- (214) Slottsskogen Park
INSERT INTO poi_i18n VALUES
  (10853, 214, 'en', 'Slottsskogen Park (Gothenburg)', 'Large city park with trails and viewpoints.'),
  (10854, 214, 'it', 'Parco Slottsskogen (Göteborg)', 'Grande parco urbano con sentieri e punti panoramici.'),
  (10855, 214, 'pt', 'Parque Slottsskogen (Gotemburgo)', 'Grande parque urbano com trilhos e miradouros.'),
  (10856, 214, 'pl', 'Park Slottsskogen (Göteborg)', 'Duży park miejski ze ścieżkami i punktami widokowymi.');

-- (215) Turning Torso
INSERT INTO poi_i18n VALUES
  (10857, 215, 'en', 'Turning Torso (Malmo)', 'Twisting residential tower by Santiago Calatrava.'),
  (10858, 215, 'it', 'Turning Torso (Malmö)', 'Torre residenziale elicoidale di Santiago Calatrava.'),
  (10859, 215, 'pt', 'Turning Torso (Malmö)', 'Torre residencial em espiral de Santiago Calatrava.'),
  (10860, 215, 'pl', 'Turning Torso (Malmö)', 'Skręcona wieża mieszkalna projektu Santiago Calatravy.');

-- (216) Oresund Bridge Viewpoint
INSERT INTO poi_i18n VALUES
  (10861, 216, 'en', 'Öresund Bridge Viewpoint (Malmo)', 'Lookout towards the iconic bridge to Denmark.'),
  (10862, 216, 'it', 'Belvedere sul Ponte di Öresund (Malmö)', 'Punto panoramico sul celebre ponte per la Danimarca.'),
  (10863, 216, 'pt', 'Miradouro da Ponte de Öresund (Malmö)', 'Vista para a ponte icónica até à Dinamarca.'),
  (10864, 216, 'pl', 'Punkt widokowy na most Øresund (Malmö)', 'Widok na kultowy most do Danii.');

-- (217) Lund Cathedral
INSERT INTO poi_i18n VALUES
  (10865, 217, 'en', 'Lund Cathedral', 'Romanesque cathedral with an astronomical clock.'),
  (10866, 217, 'it', 'Cattedrale di Lund', 'Cattedrale romanica con orologio astronomico.'),
  (10867, 217, 'pt', 'Catedral de Lund', 'Catedral românica com relógio astronómico.'),
  (10868, 217, 'pl', 'Katedra w Lund', 'Romańska katedra z zegarem astronomicznym.');

-- (218) Uppsala Cathedral
INSERT INTO poi_i18n VALUES
  (10869, 218, 'en', 'Uppsala Cathedral', 'Gothic red-brick cathedral and national shrine.'),
  (10870, 218, 'it', 'Cattedrale di Uppsala', 'Cattedrale gotica in mattoni rossi, santuario nazionale.'),
  (10871, 218, 'pt', 'Catedral de Uppsala', 'Catedral gótica de tijolo vermelho, santuário nacional.'),
  (10872, 218, 'pl', 'Katedra w Uppsali', 'Gotycka ceglana katedra – narodowe sanktuarium.');

-- (219) Visby Old Town
INSERT INTO poi_i18n VALUES
  (10873, 219, 'en', 'Visby Old Town (Gotland)', 'Medieval walls and ruins by the Baltic Sea (UNESCO).'),
  (10874, 219, 'it', 'Città Vecchia di Visby (Gotland)', 'Mura e rovine medievali sul Baltico (UNESCO).'),
  (10875, 219, 'pt', 'Cidade Velha de Visby (Gotland)', 'Muralhas e ruínas medievais no Báltico (UNESCO).'),
  (10876, 219, 'pl', 'Stare Miasto Visby (Gotlandia)', 'Średniowieczne mury i ruiny nad Bałtykiem (UNESCO).');

-- (220) Abisko National Park
INSERT INTO poi_i18n VALUES
  (10877, 220, 'en', 'Abisko National Park (Aurora Sky Station)', 'Northern lights and Arctic landscapes above Torneträsk.'),
  (10878, 220, 'it', 'Parco Nazionale di Abisko (Aurora Sky Station)', 'Aurore boreali e paesaggi artici sopra il Torneträsk.'),
  (10879, 220, 'pt', 'Parque Nacional de Abisko (Aurora Sky Station)', 'Auroras boreais e paisagens árticas sobre o Torneträsk.'),
  (10880, 220, 'pl', 'Park Narodowy Abisko (Aurora Sky Station)', 'Zorza polarna i arktyczne krajobrazy nad jeziorem Torneträsk.');
