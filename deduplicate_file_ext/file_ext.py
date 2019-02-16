#! -*- coding: utf-8 -*-

from datetime import datetime

if __name__ == "__main__":
    source = {
        "picture": "file_ext_picture.txt",
        "video": "file_ext_video.txt",
        "audio": "file_ext_audio.txt",
        "document": "file_ext_document.txt",
        "archive": "file_ext_archive.txt",
        "other": "file_ext_other.txt"

    }

    output_str = "BEGIN TRANSACTION;"

    sql_create_config = """
DROP TABLE IF EXISTS "config";
CREATE TABLE "config" (
    "version" TEXT NOT NULL,
    "current_theme_id" INTEGER NOT NULL
);
        """

    output_str += sql_create_config
    output_str += "\n"

    sql_create_file_ext_category = """
DROP TABLE IF EXISTS "file_ext_category";
CREATE TABLE "file_ext_category" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "category" TEXT NOT NULL
);
    """

    output_str += sql_create_file_ext_category
    output_str += "\n"

    sql_create_file_ext = """
DROP TABLE IF EXISTS "file_ext";
CREATE TABLE "file_ext" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "category_id" INTEGER NOT NULL,
    "isSelected" INTEGER NOT NULL DEFAULT 1,
    "ext" TEXT NOT NULL,
    "memo" TEXT DEFAULT ""
);
    """

    output_str += sql_create_file_ext
    output_str += "\n"

    sql_create_themes = """
DROP TABLE IF EXISTS "themes";
CREATE TABLE "themes" (
    "id" INTEGER NOT NULL,
    "field_name" TEXT NOT NULL,
    "theme_value" TEXT NOT NULL,
    PRIMARY KEY ("id", "field_name")
);
        """

    output_str += sql_create_themes
    output_str += "\n"

    file_ext_data = dict()

    for category in source:
        file_ext_data[category] = list()
        
        file_ext_path = source.get(category)
        with open(file_ext_path, "r") as f:
            line = f.readline().strip("\n")

            while line:
                file_ext_data[category].append(line)
                line = f.readline().strip("\n")

    for category in file_ext_data:
        file_ext_data[category].sort()

    category_id = 0
    file_ext_id = 0

    for category in file_ext_data:
        sql_insert_category = "INSERT INTO file_ext_category (id, category) VALUES ({}, \"{}\");".format(category_id, category)
        output_str += sql_insert_category
        output_str += "\n"

        for ext in file_ext_data[category]:
            sql_insert_file_ext = "INSERT INTO file_ext (id, category_id, isSelected, ext, memo) VALUES ({}, {}, 1,\"{}\", \"\");".format(file_ext_id, category_id, ext)
            output_str += sql_insert_file_ext
            output_str += "\n"
            file_ext_id += 1

        category_id += 1

    # 增加配置
    output_str += "INSERT INTO config (version, current_theme_id) VALUES (\"{}\", {});\n".format("2.0", 0)

    # 增加自定义分类
    output_str += "INSERT INTO file_ext_category (category) VALUES (\"custom\");\n"

    # 增加主题
    output_str += "INSERT INTO themes (id, field_name, theme_value) VALUES ({}, \"{}\", \"{}\");\n".format(0, "primary", "FF039BE5")
    output_str += "INSERT INTO themes (id, field_name, theme_value) VALUES ({}, \"{}\", \"{}\");\n".format(0, "secondary100","FFFFB300")
    output_str += "INSERT INTO themes (id, field_name, theme_value) VALUES ({}, \"{}\", \"{}\");\n".format(0, "secondary50", "FFFFD97F")
    output_str += "INSERT INTO themes (id, field_name, theme_value) VALUES ({}, \"{}\", \"{}\");\n".format(0, "dark","FF0F0F14")
    output_str += "INSERT INTO themes (id, field_name, theme_value) VALUES ({}, \"{}\", \"{}\");\n".format(0, "darkGrey1", "FF27272F")
    output_str += "INSERT INTO themes (id, field_name, theme_value) VALUES ({}, \"{}\", \"{}\");\n".format(0, "darkGrey2","FF373740")
    output_str += "INSERT INTO themes (id, field_name, theme_value) VALUES ({}, \"{}\", \"{}\");\n".format(0, "lightGrey1", "FF84848A")
    output_str += "INSERT INTO themes (id, field_name, theme_value) VALUES ({}, \"{}\", \"{}\");\n".format(0, "lightGrey2","FFE1E1E6")
    output_str += "INSERT INTO themes (id, field_name, theme_value) VALUES ({}, \"{}\", \"{}\");\n".format(0, "white", "FFFFFFF")

    output_str += "END TRANSACTION;"
    output_str += "\n"

    with open("init.sql", "w") as f:
        f.write(output_str)

    print("[{}] job done!".format(datetime.now()))

