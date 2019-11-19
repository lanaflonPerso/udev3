<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1">
    <title>Test JSP</title>
  </head>
  <body>
    <p>Bienvenue sur <strong>${header["Host"]}</strong> !</p>

    <p>Vous acc�dez actuellement � la page <strong>${pageContext.request.requestURI}</strong></p>
    <p>Votre navigateur Web est : <strong>${header["user-agent"]}</strong>.</p>
    <p>${empty param ? "Vous n'avez pas envoy� de param�tre au serveur"
                        : "Vous avez envoy� des param�tres au serveur"}</p>
                        
    <p>${param["nom"]}</p>
    <p>${empty cookie ? "Vous n'avez pas envoy� de cookie au serveur"
                        : "Vous avez envoy� des cookies au serveur"}</p>
  </body>
</html>
