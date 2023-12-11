CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL);
CREATE TABLE IF NOT EXISTS "campgrounds" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "overview" text, "state" varchar, "city" varchar, "cover_photo_url" varchar, "contributed_photos" json, "last_viewed_at" datetime(6), "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL);
CREATE TABLE sqlite_sequence(name,seq);
INSERT INTO "schema_migrations" (version) VALUES
('20231210192947');


