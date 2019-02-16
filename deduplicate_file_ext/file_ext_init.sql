DROP TABLE IF EXISTS "file_ext_category";
CREATE TABLE "file_ext_category" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "category" TEXT NOT NULL
);

INSERT INTO file_ext_category (id, category) VALUES (1, "picture");
INSERT INTO file_ext_category (id, category) VALUES (2, "video");
INSERT INTO file_ext_category (id, category) VALUES (3, "audio");
INSERT INTO file_ext_category (id, category) VALUES (4, "document");
INSERT INTO file_ext_category (id, category) VALUES (5, "other");
INSERT INTO file_ext_category (id, category) VALUES (6, "custom");

DROP TABLE IF EXISTS "file_ext";
CREATE TABLE "file_ext" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "category_id" INTEGER NOT NULL,
  "ext" TEXT NOT NULL,
  "memo" TEXT
);

INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");
INSERT INTO file_ext (id, category_id, ext, memo) VALUES (1, 1, "", "");