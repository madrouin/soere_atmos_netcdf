% netCDF et python
% M.-A. Drouin
% SOERE ATMOS 29 au 31 mars 2016, OHP

# [netCDF](https://www.unidata.ucar.edu/software/netcdf/)

------------------

- Network Common Data Form
- projet débuté en 1989
- développé par [unidata](https://www.unidata.ucar.edu/)
- extension **.nc**
- 2 version du format cohabitent
    + netCDF3
        * disponible depuis 1997
    + netCDF4
        * disponible depuis 2008
        * Compatible avec les fichier netCDF3

# Pourquoi utiliser netCDF ?

------------------

- **self-describing**
    + les données sont documentées
- **portable**
    + indépendant de l'architecture machine
- **scalable**
    + un jeu de données est divisable en plusieurs fichiers
- **appendable**
    + on peut compléter les fichiers
- **sharable**
    + accès simultanés en lecture
- **archivable**
    + la rétrocompatibilité est garantie

------------------

- nombreuses bibliothèques disponibles pour le developpement
    + C, fortran, python, matlab, IDL, ...
- nombreux logiciels compatibles
    + [NCO](http://nco.sourceforge.net/) (netCDF operators)
    + [ncview](http://meteora.ucsd.edu/~pierce/ncview_home_page.html)
    + [panoply](http://www.giss.nasa.gov/tools/panoply/)
    + [ncdump](https://www.unidata.ucar.edu/software/netcdf/workshops/2011/utilities/Ncdump.html)
    + ...

------------------

- serveur/distribution
    + [thredds](https://www.unidata.ucar.edu/software/thredds/current/tds/)
    + [opendap](http://www.opendap.org/)

------------------

- utilisé par d'autres standards
    + NASA Earth Science Data Systems (ESDS) Standards Process Group
    + Integrated Ocean Observing System (IOOS) Data Management and Communications (DMAC) Subsystem
    + Steering Committee of the Federal Geographic Data Committee (FGDC)
    + Open Geospatial Consortium (OGC)

# contenu d'un fichier netCDF

------------------

- **dimensions**
    + nombre d'élements d'un vecteur de données 
    + axes des données
        * dans notre cas le temps ou l'altitude
    + une dimension peut-être **illimité**
        * on pourra ajouter des éléments le long de cette dimension
    + exemples :
        + nombre de pas de temps
        + nombre d'altitude de mesure
        + nombre de capteurs

------------------

- **variables**
    + sa taille dépend d'une ou plusieurs dimensions
    + a un type :
        * short, long, float, double 
    + une variable et une dimension peuvent avoir le même nom
    + exemples : 
        * température
        * pression
        * retrodiffusion

------------------

- **attributs**
    + informations complémentaires sur les variables
    + les attributs peuvent être typés
    + exemples :
        - unité
        - nom long
        - nom standard
        - commentaires sur la méthode de production de la données 

------------------

- **attributs globaux**
    + metadonnées valable pour l'ensemble du fichier
    + principalement des chaînes de caractère
    + exemples :
        * titre du fichier/jeu de données
        * PI de l'instrument
        * numéro de série de l'instruments
        * commentaires

# NetCDF3 VS NetCDF4

------------------

- compatibilité
    + un fichier NetCDF3 peut-être lu avec une bibliothèque NetCDF4
    + l'inverse est faux
- fonctionnalités supllémentaires
    + plusieurs dimensions peuvent être illimités
    + compression des données
    + création de groupes de variables
        - ex : pour les modèles séparation entre analyses

# convention CF

------------------

http://cfconventions.org/

- convention qui normalisent principalement les attributs qui doivent être présents dans un fichier
    + actuellement en version [1.6](http://cfconventions.org/cf-conventions/v1.6.0/cf-conventions.pdf) (2011)
    + défini une liste de **standard_name** pour les variables
        * liste assez exhaustive pour les modèles
        * quasi inexistante pour les mesures sols
    + défini une liste d'unités (basé sur [udunits](https://www.unidata.ucar.edu/software/udunits/))

------------------

- utilité
    + le fichier va pouvoir être utilisé facilement avec les outils compatible avec la convention
        * prise en compte des latitudes et longitudes pour les sorties de modèles
        * conversion d'unité des valeurs
- outils de vérification en ligne disponible
    + [cf-checker](http://puma.nerc.ac.uk/cgi-bin/cf-checker.pl?cfversion=auto)
- depuis 2013 la convention CF est une norme officiel de l'OGC

------------------

- le standard défini des bonnes pratiques de stockage des données
    + gestion des données manquantes
    + gestions des flags et de leurs significations
    + conseils pour certains types de données instrumentales
- le standard défini comment représenter le temps
    + particulièrement le format de l'unité

------------------

- [CF-1.7](http://cfconventions.org/cf-conventions/cf-conventions.pdf)
    + encore à l'état de draft
    + sujet instrumentation plus développé
        * ajout d'attibuts spécifiques
        * travail sur les **standard_name**


# module [netCDF4](https://unidata.github.io/netcdf4-python/) python

------------------

- module officiel supporté par UNIDATA
- developpements actifs
- compatible avec netCDF3 et netCDF4
- compatible python 2.6+, 3+
- basé sur les objets numpy
- nombreux exemples d'utilisation disponibles
- documentation
    + fournie sur le code
    + manque d'exemples concrets






