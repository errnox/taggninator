import time

import sqlite3
import bottle as bo


class WebApp(object):
  def __init__(self):
    self.name = 'Tagginator'
    self.db = 'db/db.sqlite3'

  def get_index(self):
    bookmarks = []

    conn = sqlite3.connect(self.db)
    c = conn.cursor()
    result = c.execute('''
SELECT title, url, description, created_at
FROM bookmark;
''')

    for row in result:
      bookmarks.append({'title': row[0], 'url': row[1],
                        'description': row[2], 'created_at': row[3]})

    conn.commit()
    conn.close()

    return bo.template('index.html.tpl', bookmarks=bookmarks)

  def get_static(self, filename):
    return bo.static_file(filename, root='static/')

  def get_create_bookmark(self):
    return bo.template('bookmark_new.html.tpl')

  def post_create_bookmark(self):
    title = bo.request.forms.get('title')
    url = bo.request.forms.get('url')
    description = bo.request.forms.get('description')
    created_at = time.time()

    conn = sqlite3.connect(self.db)
    c = conn.cursor()
    c.execute('''
INSERT INTO bookmark (title, url, description, created_at)
VALUES (?, ?, ?, ?);''',
      (title, url, description, created_at))
    conn.commit()
    conn.close()

    bo.redirect('/')


if __name__ == '__main__':
    web_app = WebApp()
    app = bo.default_app()

    app.get(
      '/',
      name='get_index',
      callback=web_app.get_index)

    app.get(
      '/assets/<filename:path>',
      name='get_static',
      callback=web_app.get_static)

    app.get(
      ['/bookmark/new' ,'/bookmark/new/'],
      name='get_create_bookmark',
      callback=web_app.get_create_bookmark)
    app.post(
      ['/bookmark/new', '/bookmark/new/'],
      name='post_create_bookmark',
      callback=web_app.post_create_bookmark)

    app.run(host='localhost', port=4321 , reloader=True, debug=True)
