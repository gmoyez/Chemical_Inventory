--CREATE DATABASE chemical_inventory;

DROP TABLE IF EXISTS chemicals;
DROP TABLE IF EXISTS distributor;
DROP TABLE IF EXISTS manufacturer;

CREATE TABLE chemicals(
    cid INTEGER PRIMARY KEY,
    cname TEXT NOT NULL,
   cregistration_number TEXT,
    cmode_of_action TEXT,
    csignal_word TEXT,
    crei INTEGER,
    cdistributor_name VARCHAR(50),
    cproduct_use VARCHAR(50),
    cmfg_info VARCHAR(100),
    csds VARCHAR(4)
);

CREATE TABLE distributor(
    did INTEGER PRIMARY KEY NOT NULL,
    cdistributor_name VARCHAR(50),
    dphone_number VARCHAR(20) UNIQUE,
    daddress TEXT,
    dcity TEXT,
    dstate VARCHAR(2),
    dzip VARCHAR(10)
);

CREATE TABLE manufacturer(
    mid INTEGER PRIMARY KEY NOT NULL,
    cmfg_info  VARCHAR(50)
);

INSERT INTO chemicals(cid, cname, cregistration_number, cmode_of_action, csignal_word, crei,cdistributor_name, cproduct_use, cmfg_info, csds) VALUES
    (1,'3336','1001-63','FRAC 1','CAUTION','12','Target Specialties','Fungicide','Cleary Chemicals LLC','YES'),
    (2,'Activator 90','34704-50034-AA',null,'WARNING','0','Nutrien Ag','Adjuvent','Loveland','YES'),
    (3,'Adorn','5963-141','FRAC 43','CAUTION','12','Simplot','Fungicide','Valent U.S.A, LLC','YES'),
    (4,'Akari 5SC','71711-4-67690','IRAC 21A','WARNING','12','Simplot','Miticide','SePro Corp','YES'),
    (5,'Alias 4F','66222-156','IRAC 4A','CAUTION','12','Target Specialties','Insecticide','Makhteshim Agan of North America, Inc','YES'),
    (6,'B-Nine','400-478-59807',null,'CAUTION','24','Target Specialties','Plant Growth Regulator','OHP, Inc','YES'),
    (7,'Banner Maxx II','100-1326','FRAC 3','CAUTION','12','Target Specialties','Fungicide','Syngenta Crop Protection, LLC','YES'),
    (8,'Baythroid XL','264-840','IRAC 3A','WARNING','12','Nutrien Ag','Insecticide','Bayer CropScience','YES'),
    (9,'Biofoamer',null,null,'CAUTION','0','Nutrien Ag','Foaming Agent','BioSafe Systems','YES'),
    (10,'Broadform','432-1537','FRAC 11, FRAC 7','CAUTION','12','Target Speacialties','Fungicide','Bayer CropScience','YES'),
    (11,'CalMax',null,null,'WARNING','0','Nutrien Ag','Foliar Nutrient','Loveland Products','YES'),
    (12,'Cascade Plus',null,null,'WARNING','0','Nutrien Ag','Surfactant','Precision Laboratories, LLC','YES'),
    (13,'Cease','264-1155-68539','FRAC 44','CAUTION','4','Simplot','Bactericide','BioWorks, Inc','YES'),
    (14,'Champ Formula 2 Flowable','55146-64','FRAC M01','WARNING','48','Target Specialties','Fungicide','Nufarm Americas Inc','YES'),
    (15,'Clinch','100-894','IRAC 6','CAUTION','12','Target Specialities','Insecticide','Syngenta Crop Protection, LLC','YES'),
    (16,'Conserve SC','62719-291','IRAC 6','CAUTION','12','Target Specialties','Insecticide','Syngenta Protection, LLC','YES'),
    (17,'Daconil Weather Stik','50534-209-100','FRAC M05','CAUTION','12','Nutrien Ag','Fungicide','Syngenta Protection, LLC','YES'),
    (18,'Danitol 2.4 EC','59639-35','IRAC 3A','WARNING','24','Nutrien Ag','Insecticide','Valent U.S.A LLC','YES'),
    (19,'Decree 50 WDG','66330-35-67690','FRAC 17','CAUTION','12','Target Specialties','Fungicide','SePRO Corp','YES'),
    (20,'Delegate WG','62719-541','IRAC 5','CAUTION','12','Nutrien Ag','Insecticide','Corteva Agriscience','YES'),
    (21,'Di-Pel Pro DF','73049-39','IRAC 11','CAUTION','4','Target Specialties','Insecticide','Valent U.S.A LLC','YES'),
    (22,'Dimension EC','62719-426','WSSA 3','WARNING','12','Target Specialties','Herbicide','Corteva Agriscience','YES'),
    (23,'Drexel Captan 50 W','19713-646','FRAC M04','WARNING','12','Target Specialties','Fungicide','Drexel Chemical Company','YES'),
    (24,'Empress','7969-355','FRAC 11','WARNING','12','Simplot','Fungicide','BASF Corp','YES'),
    (25,'Entrust','62719-621','IRAC 5',null,'4','Nutrien Ag','Insecticide','Corteva Agriscience','YES'),
    (26,'Evergreen Crop Protection EC 60-6','1021-1770','IRAC 3A','CAUTION','12','Target Specialties','Insecticide','Valent U.S.A LLC','YES'),
    (27,'Flagship 25 WS','100-955','IRAC 4A','CAUTION','12','Target Specialties','Insecticide','Syngenta Crop Protection, LLC','YES'),
    (28,'Gallery SC','62719-658','WSSA 21','CAUTION','12','Nutrien Ag','Herbicide','Corteva Agriscience','YES'),
    (29,'Heritage SC','100-1539','FRAC 11','CAUTION','4','Simplot','Fungicide','Syngenta Crop Protection, LLC','YES'),
    (30,'Hexygon IQ','10163-365','FRAC 11','CAUTION','4','Simplot','Ovocide','Gowan Company LLC','YES');

INSERT INTO distributor(did,cdistributor_name,dphone_number,daddress,dcity,dstate,dzip) VALUES
    (1,'Target Specialties','1-800-827-4389','2478 N. Sunnyside Ave','Fresno','CA','93727'),
    (2,'Nutrien Ag','559-233-0585','3173 S. Chestnut Ave','Fresno','CA','93725'),
    (3,'Simplot','559-888-2813','7409 S. Mendocino Ave','Parlier','CA','93648');
