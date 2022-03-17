#!/usr/bin/python3

import cgi, cgitb
cgitb.enable()

print("Content-Type: text/html\n\n", flush=True)

print("""<html><head><title>Python CGI</title></head><body>hello world :thumbs_up:</body></html>""")
