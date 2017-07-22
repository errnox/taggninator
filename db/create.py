import sqlite3


create_statements = ['''
CREATE TABLE "bookmark"
(
  "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  "created_at" DATETIME NOT NULL,
  "url" VARCHAR(9999) NOT NULL,
  "title" VARCHAR(1000) NOT NULL,
  "description" VARCHAR(9999) NOT NULL
);
''',

'''
CREATE TABLE "tagmap"
(
  "bookmark_id" INTEGER NOT NULL,
  "tag_id" INTEGER NOT NULL
);
''',

'''
CREATE TABLE "tag"
(
  "id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  "name" VARCHAR(9999)
);
''']

if __name__ == '__main__':
  conn = sqlite3.connect('db.sqlite3')
  c = conn.cursor()
  for s in create_statements:
    c.execute(s)
  conn.close()
