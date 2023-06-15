-- SQL ifadelerinizi buraya yazınız.

CREATE TABLE "tur"(
    "id" SMALLINT NOT NULL,
    "ad" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "tur" ADD PRIMARY KEY("id");
CREATE TABLE "kitap"(
    "id" SMALLINT NOT NULL,
    "ad" VARCHAR(255) NOT NULL,
    "yazar_id" SMALLINT NOT NULL,
    "tur_id" SMALLINT NOT NULL,
    "sayfasayisi" SMALLINT NOT NULL,
    "puan" SMALLINT NOT NULL
);
ALTER TABLE
    "kitap" ADD PRIMARY KEY("id");
CREATE TABLE "ogrenci"(
    "id" SMALLINT NOT NULL,
    "ad" VARCHAR(255) NOT NULL,
    "soyad" VARCHAR(255) NOT NULL,
    "cinsiyet" VARCHAR(255) NOT NULL,
    "dtarih" DATE NOT NULL,
    "sinif" VARCHAR(255) NOT NULL,
    "puan" SMALLINT NOT NULL
);
ALTER TABLE
    "ogrenci" ADD PRIMARY KEY("id");
CREATE TABLE "islem"(
    "id" SMALLINT NOT NULL,
    "ogrenci_id" SMALLINT NOT NULL,
    "kitap_id" SMALLINT NOT NULL,
    "atarih" DATE NOT NULL,
    "vtarih" DATE NOT NULL
);
ALTER TABLE
    "islem" ADD PRIMARY KEY("id");
CREATE TABLE "yazar"(
    "id" SMALLINT NOT NULL,
    "ad" VARCHAR(255) NOT NULL,
    "soyad" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "yazar" ADD PRIMARY KEY("id");
ALTER TABLE
    "islem" ADD CONSTRAINT "islem_ogrenci_id_foreign" FOREIGN KEY("ogrenci_id") REFERENCES "ogrenci"("id");
ALTER TABLE
    "kitap" ADD CONSTRAINT "kitap_tur_id_foreign" FOREIGN KEY("tur_id") REFERENCES "tur"("id");
ALTER TABLE
    "kitap" ADD CONSTRAINT "kitap_yazar_id_foreign" FOREIGN KEY("yazar_id") REFERENCES "yazar"("id");
ALTER TABLE
    "islem" ADD CONSTRAINT "islem_kitap_id_foreign" FOREIGN KEY("kitap_id") REFERENCES "kitap"("id");