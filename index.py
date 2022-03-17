#!/usr/bin/python3

import cgi, cgitb
cgit.enable()

print("Content-Type: text/html\n\n", flush=True)

print("""<html><head><title>Python CGI</title></head><body>files for example sql data:\n\n</body></html>""")
print("\n")
import pymysql
conn=pymysql.connect(db='linux_files',user='root',passwd='passwd',host='127.0.0.1')
c=conn.cursor()
c.execute("SELECT * FROM files_info")
print([(r[0], r[1]) for r in c.fetchall()])
