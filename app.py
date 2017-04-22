'''
Created on Feb 16, 2017

@author: Kyle and Erik
'''

from flask import Flask, render_template, request, session
from flaskext.mysql import MySQL
from flask_debugtoolbar import DebugToolbarExtension
from flask_sqlalchemy import SQLAlchemy

mysql = MySQL()
app = Flask(__name__)

# app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:jack8998@localhost/appgen'
# db = SQLAlchemy(app)

# class application_store(db.Model):
#     __tablename__ = 'application_store'
#     id = db.Column('id_ApplicationStore', db.Integer, primary_key=True)
#     name_ApplicationStore = db.Column('name_ApplicationStore', db.Unicode)

app.debug = True
app.config['SECRET_KEY'] = 'secretkey'
toolbar = DebugToolbarExtension(app)


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
    c_list = []
    img_list = []
    i = 0
    while i < 3:
        cursor.execute("SELECT name FROM categories WHERE id=%s",(i))
        c_list.append(cursor.fetchone()[0])
        
        cursor.execute("SELECT image_link FROM categories WHERE id=%s",(i))
        img_list.append(cursor.fetchone()[0])
        print(img_list[i])
        i = i+1
    
    return render_template("index.html", c0 = c_list[0], c1 = c_list[1], c2 = c_list[2], i0 = img_list[0], i1 = img_list[1], i2 = img_list[2])


# @app.route('/home/')
# def home():
#     appName = request.form['InputBox']
#     return render_template("home.html")

@app.route('/applist/', methods = ['POST', 'GET'])
def applist():
    conn = mysql.connect()
    cursor = conn.cursor()
    
    #This gets length of the categories table
    #table_len = cursor.execute("SELECT ID FROM categories ORDER BY id DESC LIMIT 1")
    #print (table_len)
    
    #This gets all the categories from the database
    #cursor.execute("SELECT * FROM categories")
    
    #Assigning every category to a variable (e.g C1 stands for category 1)
    #categories_list = []
    #i =0; 
    #while i < table_len:
    #    categories_list[i]=cursor.fetchone()[i]
    #    print(categories_list[i])
    if request.method == 'POST':
        #appName = request.form['appName']
        return render_template("applist.html")





@app.route('/home/', methods = ['POST', 'GET'])
def home():
    if request.method == 'POST':
        name = request.form['storename']
        #query to db

        conn = mysql.connect()
        cursor = conn.cursor()
        cursor.execute("INSERT INTO appstore_list (name) VALUES (%s)",(name))

        conn.commit()
        return render_template("home.html", name=name)

    # elif request.method == 'POSTCREATE':
    #     appName = request.form['appName']
    #     userReviews = request.form['reviews']
    #     downloadCount = request.form['downloadCount']
    #     verifiedDeveloper = request.form['verifiedDeveloper']
    #     paidApp = request.form['paid']
    #     rating = 3.5
    #     print ("asdadadas")
    #     cursor.execute("INSERT INTO app_list (appstore_id, app_name, app_reviews, app_rating, app_download, app_verified, app_paid) VALUES (%s, %s, %s, %s, %s, %s, %s)",(appstore_id, appName, userReviews, rating, downloadCount, verifiedDeveloper, paidApp))
    #     conn.commit()
    #
    #     num_apps=cursor.execute("SELECT appstore_id FROM app_list WHERE appstore_id=%s",(appstore_id))
    #
    #     return render_template("applist.html", name=appstore_name, appstore_id=appstore_id, download=download, num_apps=num_apps)

    elif request.method == 'GET':
        conn = mysql.connect()
        cursor = conn.cursor()
        cursor.execute("SELECT name FROM appstore_list ORDER BY id DESC LIMIT 1")
        name=cursor.fetchone()[0]

        return render_template("home.html", name=name)

@app.route('/homeFromCreate/', methods = ['POST'])
def homeFromCreate():
    if request.method == 'POST':
        appName = request.form['appName']
        userReviews = request.form['reviews']
        downloadCount = request.form['downloadCount']
        verifiedDeveloper = request.form['verifiedDeveloper']
        paidApp = request.form['paid']
        rating = 3.5

        conn = mysql.connect()
        cursor = conn.cursor()

        #This gets the appStore name which displays at the top
        cursor.execute("SELECT name FROM appstore_list ORDER BY id DESC LIMIT 1")
        appstore_name=cursor.fetchone()[0]
        #This gets the appStore ID which is hidden
        cursor.execute("SELECT id FROM appstore_list ORDER BY id DESC LIMIT 1")
        appstore_id=cursor.fetchone()[0]
        #This gets the download count
        cursor.execute("SELECT app_download FROM app_list ORDER BY id DESC LIMIT 1")
        download=cursor.fetchone()[0]
        #Number of apps
        num_apps=cursor.execute("SELECT appstore_id FROM app_list WHERE appstore_id=%s",(appstore_id))

        cursor.execute("INSERT INTO app_list (appstore_id, app_name, app_reviews, app_rating, app_download, app_verified, app_paid) VALUES (%s, %s, %s, %s, %s, %s, %s)",(appstore_id, appName, userReviews, rating, downloadCount, verifiedDeveloper, paidApp))
        conn.commit()

        num_apps=cursor.execute("SELECT appstore_id FROM app_list WHERE appstore_id=%s",(appstore_id))

    return render_template("home.html", name=appstore_name, appstore_id=appstore_id, download=download, num_apps=num_apps)



@app.route('/createapp/', methods = ['POST', 'GET'])
def createapp():
    conn = mysql.connect()
    cursor = conn.cursor()
    cursor.execute("SELECT name FROM appstore_list ORDER BY id DESC LIMIT 1")
    name=cursor.fetchone()[0]

    # name = request.form['name']


    appname = 'Application 1'


    #This gets the appStore ID which is hidden
    cursor.execute("SELECT id FROM appstore_list ORDER BY id DESC LIMIT 1")
    appstore_id=cursor.fetchone()[0]
    #Number of apps
    num_apps=cursor.execute("SELECT appstore_id FROM app_list WHERE appstore_id=%s",(appstore_id))



    return render_template("createapp.html", name=name, appname=appname, num_apps=num_apps)

@app.route('/applistFromEdit/', methods = ['POST', 'GET'])
def applistFromEdit():
    conn = mysql.connect()
    cursor = conn.cursor()
    #This gets the appStore name which displays at the top
    cursor.execute("SELECT name FROM appstore_list ORDER BY id DESC LIMIT 1")
    appstore_name=cursor.fetchone()[0]
    #This gets the appStore ID which is hidden
    cursor.execute("SELECT id FROM appstore_list ORDER BY id DESC LIMIT 1")
    appstore_id=cursor.fetchone()[0]


    app_name = request.form['appName']
    userReviews = request.form['reviews']
    downloadCount = request.form['downloadCount']
    verifiedDeveloper = request.form['verifiedDeveloper']
    paidApp = request.form['paid']
    rating = 3.5
    print(app_name)
    print(appstore_id)
    cursor.execute("UPDATE app_list SET app_reviews=%s, app_rating=%s, app_download=%s, app_verified=%s, app_paid=%s WHERE appstore_id=%s AND app_name=%s",(userReviews, rating, downloadCount, verifiedDeveloper, paidApp, appstore_id, app_name))
    conn.commit()
    num_apps = cursor.execute("SELECT appstore_id FROM app_list WHERE appstore_id=%s",(appstore_id))



    #Number of apps
    num_apps=cursor.execute("SELECT appstore_id FROM app_list WHERE appstore_id=%s",(appstore_id))

    return render_template("applist.html", name=appstore_name, appstore_id=appstore_id, num_apps=num_apps)



@app.route('/editapp/', methods = ['POST', 'GET'])
def editapp():
    if request.method == 'POST':
        conn = mysql.connect()
        cursor = conn.cursor()
        cursor.execute("SELECT name FROM appstore_list ORDER BY id DESC LIMIT 1")
        name=cursor.fetchone()[0]

        #This gets the appStore name which displays at the top
        cursor.execute("SELECT name FROM appstore_list ORDER BY id DESC LIMIT 1")
        appstore_name=cursor.fetchone()[0]
        #This gets the appStore ID which is hidden
        cursor.execute("SELECT id FROM appstore_list ORDER BY id DESC LIMIT 1")
        appstore_id=cursor.fetchone()[0]
        #Gets the app name
        app_name = request.form['app_name']


        cursor.execute("SELECT app_reviews FROM app_list WHERE appstore_id=%s AND app_name=%s",(appstore_id, app_name))
        review=cursor.fetchone()[0]
        cursor.execute("SELECT app_download FROM app_list WHERE appstore_id=%s AND app_name=%s",(appstore_id, app_name))
        download=cursor.fetchone()[0]
        cursor.execute("SELECT app_verified FROM app_list WHERE appstore_id=%s AND app_name=%s",(appstore_id, app_name))
        developer=cursor.fetchone()[0]
        cursor.execute("SELECT app_paid FROM app_list WHERE appstore_id=%s AND app_name=%s",(appstore_id, app_name))
        paid=cursor.fetchone()[0]

        if review=='true':
            setReview='active'
            reviewOpp='false'
        else:
            setReview=''
            reviewOpp='true'

        if developer=='true':
            setDeveloper='active'
            developerOpp='false'
        else:
            setDeveloper=''
            developerOpp='true'
        if paid=='true':
            setPaid='active'
            paidOpp='false'
        else:
            setPaid=''
            paidOpp='true'

    return render_template("editapp.html", name=name, app_name=app_name, setReview=setReview, review=review, reviewOpp=reviewOpp, download=download, setDeveloper=setDeveloper, developer=developer, developerOpp=developerOpp, setPaid=setPaid, paid=paid, paidOpp=paidOpp)

@app.route('/addpermissionslist/')
def addpermissionslist():
    return render_template("addpermissionslist.html")

@app.route('/addpermissions/')
def addpermissions():
    return render_template("addpermissions.html")


if __name__ == "__main__":
    app.run()
