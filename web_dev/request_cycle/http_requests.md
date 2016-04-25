Question 2:

200 OK
300 Multiple Choices
301 Moved Permanently
302 Found
304 Not Modified
307 Temporary Redirect
400 Bad Request
401 Unauthorized
403 Forbidden
404 Not Found
410 Gone
500 Internal Server Error
501 Not Implemented
503 Service Unavailable
550 Permission denied





Question 3:
GET:
- GET requests data from a specified resource
- GET requests can be cached
- GET requests remain in the browser history
- GET requests can be bookmarked
- GET requests should never be used when dealing with sensitive data
- GET requests have length restrictions
- GET requests should be used only to retrieve data

POST:
- POST submits data to be processed to a specificed resource
- POST requests are never cached
- POST requests do not remain in the browser history
- POST requests cannot be bookmarked
- POST requests have no restrictions on data length

BACK button/Reload
- GET: Harmless
- POST: Data will be re-submitted (the browser should alert the user that the data are about to be re-submitted)

Bookmarked
- GET: Can be bookmarked
- POST: Cannot be bookmarked

Cached
- GET: Can be cached
- POST: Not cached

Encoding type
- GET: application/x-www-form-urlencoded
- POST: application/x-www-form-urlencoded or multipart/form-data. USe multipart encoding for binary data

History
- GET: Parameters remain in browser history
- POST: Parameters are not saved in browser history

Restrictions on data length
- GET: Yes, when sending data, the GET method adds the data to the URL; and the length of a URL is limited (maximum URL length is 2048 characters)
- POST: No restrictions

Restrictions on data type
- GET: Only ASCII characters allowed
- POST: No restrictions. Binary data is also allowed

Security
- GET: Get is less secure because data sent is part of the URL. Never use GET when sending passwords or other sensitive information!
- POST: POST is a little safer than GET because the parameters are not stored in browser history or in web server logs

Visibility
- GET: Data is visible to everyone in the URL
- POST: Data is not displated in the URL


GET is used to retrieve remote data, and POST is used to insert/update remote data




Question 4: What is a cookie? How does it relate to HTTP requests?

- An HTTP cookie is a small piece of data sent from a website and stored in the user's web browser while the user is browsing. Every time the user loads the website, the browser sends the cookie back to the server to notify the user's previous activity.

- A webpage or server instructs a browser to store this information and then send it back with each subsequent request based on a set of rules.