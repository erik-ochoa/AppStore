'''
Created on Feb 16, 2017

@author: Kyle and Erik
'''

from flask import Flask, render_template, request, session
from flaskext.mysql import MySQL
#from flask_debugtoolbar import DebugToolbarExtension
from flask_sqlalchemy import SQLAlchemy

mysql = MySQL()
app = Flask(__name__)

# app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:jack8998@localhost/appgen'
# db = SQLAlchemy(app)

# class application_store(db.Model):
#     __tablename__ = 'application_store'
#     id = db.Column('id_ApplicationStore', db.Integer, primary_key=True)
#     name_ApplicationStore = db.Column('name_ApplicationStore', db.Unicode)

#app.debug = True
#app.config['SECRET_KEY'] = 'secretkey'
#toolbar = DebugToolbarExtension(app)


app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = '1998compsci'
app.config['MYSQL_DATABASE_DB'] = 'appstore_db'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)



@app.route('/')
def main():
    conn = mysql.connect()
    cursor = conn.cursor()

    #This gets length of the categories table
    #table_len = cursor.execute("SELECT ID FROM categories ORDER BY id DESC LIMIT 1")

    #Assigning every category to an index c_list and image link to img_link
    categories= []
    images = []
    i = 11
    while i < 21:
        cursor.execute("SELECT name FROM categories WHERE id=%s",(i))
        categories.append(cursor.fetchone()[0])

        cursor.execute("SELECT image_link FROM categories WHERE id=%s",(i))
        images.append(cursor.fetchone()[0])
        i = i+1
    return render_template("index.html", categories = categories, images = images)


@app.route('/applist/', methods = ['POST', 'GET'])
def applist():
    conn = mysql.connect()
    cursor = conn.cursor()

    #Getting gategory from previous page
    category = request.form['getcategory']
    names = []
    images = []
    downloads = []
    ratings = []
    ratings_count = []
    i = 1
    while i < 9:
        cursor.execute("SELECT name FROM applications WHERE app_number=%s AND category_name=%s",(i, category))
        names.append(cursor.fetchone()[0])

        cursor.execute("SELECT image_link FROM applications WHERE app_number=%s AND category_name=%s",(i, category))
        #uncommend below to display images
        images.append(cursor.fetchone()[0])
        #uncomment below to get rid of images
        #image_list.append('noimage')

        cursor.execute("SELECT downloads FROM applications WHERE app_number=%s AND category_name=%s",(i, category))
        downloads.append(cursor.fetchone()[0])
        cursor.execute("SELECT ratings_count FROM applications WHERE app_number=%s AND category_name=%s",(i, category))
        ratings_count.append(str(cursor.fetchone()[0]))
        cursor.execute("SELECT ratings FROM applications WHERE app_number=%s AND category_name=%s",(i, category))
        ratings.append(str(int(cursor.fetchone()[0]*20)))

        i = i+1

    #uncomment below to display download count
    #version = 0
    #uncomment below to display ratings
    version = 1

    return render_template("applist.html", category=category, version = version, names = names, images = images, downloads = downloads, ratings = ratings, ratings_count = ratings_count)
    #return current_app.send_static_file('applist.html')

@app.route('/apppage/', methods = ['POST', 'GET'])
def apppage():
    conn = mysql.connect()
    cursor = conn.cursor()
    version = request.form['getversion']
    name = request.form['getname']
    category = request.form['getcategory']

    cursor.execute("SELECT downloads FROM applications WHERE name=%s AND category_name=%s",(name, category))
    downloads = cursor.fetchone()[0]
    cursor.execute("SELECT ratings FROM applications WHERE name=%s AND category_name=%s",(name, category))
    ratings = str(int(cursor.fetchone()[0]*20))
    cursor.execute("SELECT ratings_count FROM applications WHERE name=%s AND category_name=%s",(name, category))
    ratings_count = cursor.fetchone()[0]
    cursor.execute("SELECT image_link FROM applications WHERE name=%s AND category_name=%s",(name, category))
    image_link = cursor.fetchone()[0]
    
    cursor.execute("SELECT details_image FROM applications WHERE name=%s AND category_name=%s",(name, category))
    details_image = cursor.fetchone()[0]
    cursor.execute("SELECT description FROM applications WHERE name=%s AND category_name=%s",(name, category))
    description = cursor.fetchone()[0]
    cursor.execute("SELECT seller FROM applications WHERE name=%s AND category_name=%s",(name, category))
    seller = cursor.fetchone()[0]
    cursor.execute("SELECT updated FROM applications WHERE name=%s AND category_name=%s",(name, category))
    updated = cursor.fetchone()[0]
    cursor.execute("SELECT version FROM applications WHERE name=%s AND category_name=%s",(name, category))
    version = cursor.fetchone()[0]
    cursor.execute("SELECT size FROM applications WHERE name=%s AND category_name=%s",(name, category))
    size = cursor.fetchone()[0]
    cursor.execute("SELECT family_sharing FROM applications WHERE name=%s AND category_name=%s",(name, category))
    family_sharing = cursor.fetchone()[0]
    cursor.execute("SELECT compatibility FROM applications WHERE name=%s AND category_name=%s",(name, category))
    compatibility = cursor.fetchone()[0]
    cursor.execute("SELECT languages FROM applications WHERE name=%s AND category_name=%s",(name, category))
    languages = cursor.fetchone()[0]
    cursor.execute("SELECT privacy FROM applications WHERE name=%s AND category_name=%s",(name, category))
    privacy = cursor.fetchone()[0]

    return render_template("apppage.html", name = name, category = category, downloads = downloads, ratings = ratings, ratings_count = ratings_count, image_link = image_link, details_image = details_image, description = description, seller = seller, updated = updated, version = version, size = size, family_sharing = family_sharing, compatibility = compatibility, languages = languages, privacy = privacy)

if __name__ == "__main__":
    app.run()
