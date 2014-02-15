create table musteri_adres(
musteri_id int not null,
telefon varchar(14) not null,
gsm varchar(14) not null,
adres_il varchar(20) not null,
adres_ilce varchar(25) not null,
adres_mah varchar(20) not null,
adres_cad varchar(20) not null,
adres_sok varchar(20) not null,
adres_no varchar(8) not null
)engine=InnoDB default charset=utf8; /*türkçe karakterler */
insert into musteri_adres values (4, '0324-444 00 50', '0533-890 75 77', 'Gaziantep', 'Kaleiçi',
 'Kozalı', 'MKA', 'Paşa', '14');

create table musteri_arama(
musteri_id int not null,
tarih date,
gorusulen_kisi varchar(40),
ozet varchar(40),
durum varchar(40)
)engine=InnoDB default charset=utf8; /*türkçe karakterler */
insert into musteri_arama values (4, '2014-02-05', 'Yılmaz Özdil', 'Sorun çözüldü',
 'memnun');

create table musteri_talep(
musteri_id int not null,
konu varchar(30),
detay varchar(256)
)engine=InnoDB default charset=utf8; /*türkçe karakterler */
insert into musteri_talep values (4, '#Internet', 'Internetime dokunma oyarım BOOO!!')

select * from musteri;

select * from musteri_adres;

select * from musteri_arama;

select * from musteri_talep;

select a.*, b.* from musteri a, musteri_adres b
where a.musteri_id=b.musteri_id
and a.tckn='11111111111'