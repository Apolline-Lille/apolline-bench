# PFE--apolline

Documentation
============

Ce document présentera les fichier contient, leur fonction, comment les marchent et les parties inachevées.

Fichier
------------
  * Base.ipynb
  * Interpolate.ipynb
  * Ajustement.ipynb
  * Euclidean.ipynb
  * AjaxHandler.ipynb
  * AjaxHandlerCallback.ipynb
  * Look.ipynb
  * Dockerfile


Fonction
------------

  * **Base.py**
   
  Il lit les donnés de InfluxDB selon le temps donné, et retire les valeurs de CO2. Après il fait des calculs de base. Comme max, min, avg, stdevp.

  * **Ajustement.py Pipeline.py**
  
  Différentes méthodes d'ajustement de données
  *  **Euclidean.ipynb**
  
  Comparaison les différentes entre les caractéristiques des fonctions d'assemblage.

  
  * **AjaxHandler.py AjaxHandlerCallback.py Look.py**
  
  AjaxHandler est un serveur. AjaxHandlerCallback est une fonction de rappel, quand le serveur reçoit la requête, il appellera AjaxHandlerCallback. La suite AjaxHandlerCallback distribuera la commande au module approprié. Mais il n'a pas fini. Je veux qu'il puisse appeler Look.py quand AjaxHandlerCallback obtient deux paramètres, et afficher le résultat de Look.py. Mais je ne peux pas lier le Javascript avec Python. Il sera moins difficile si on utilise PHP.


Fonctionner
------------

Touts les codes peuvent lancés dans jupyter. Et il y a des commentaires dans les fichier .ipynb


  * **AjaxHandler.py AjaxHandlerCallback.py Look.py **
  
 Quand exécutez **python AjaxHandlerCallback.py**. Il manque index.html. Si on ajoute index.html. Nous pouvons ouvrir **localhost: 8080**. Il y a une simple page, mais la opération back-end n'est pas implémenté.
 
 

Problématique
------------


   * Il y a maintenant juste des classifications et traitements simple. Nous devons choisir quelle méthode à utiliser selon la fluctuation de données.
   * Si on souhaite appliquer la fonction d'apprentissage supervisé, il exige également beaucoup de données et le jugement humain. Par exemple, le 31/12/2016, il est un jour férié, mais pendant la nuit, il est apparu des fluctuations anormales dans les données. Cette situation ne peut pas être considérée comme une base de comparaison.Mais il est un bon exemple de détection anormale.