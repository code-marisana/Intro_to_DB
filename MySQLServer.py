import mysql.connector


try:
    mydb = mysql.connector.connect(
        host = "localhost",
        user = "code-marisana",
        passwd = "mypassword"
        )
except Exception:
    print("ERROR: blah blah blah")
else:
    print("Database 'alx_book_store' created successfully!")
    mycursor = mydb.cursor()
    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
finally:
    mycursor.close()
    mydb.close()