#Cookie Killer
## A server-side session cookie nuker

This is a small isolated project that allows you to delete the session cookie rails pushes to every page via the HTTP Header Set-Cookie. (cookie is '_yourappname_session' and you normally cannot delete it or change it since it is controlled by the session components)

This cookie is being set as HttpOnly so if you were struggling with deleting it from the client side using javascript that's because your browser doesn't let you delete or set HttpOnly cookies from client side (to prevent XSS attacks).

To test this go to the /killers index controller and check the response http headers. You will see that I am changing the cookie expire attribute to 1 year ago and value to nothing which deletes it from your browser.

Let me know in the issues if you have any questions.

It uses the 'session off' gem.