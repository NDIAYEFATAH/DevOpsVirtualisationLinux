# Déploiement d’une application Spring Boot sur Tomcat avec Vagrant

Déployer une application Spring Boot sur Apache Tomcat dans une machine virtuelle Vagrant et vérifier son accessibilité via le navigateur.

# Prérequis

```python
Java 17
Spring Boot 2.7
PostgreSQL
Apache Tomcat 9
Vagrant + VirtualBox
Ubuntu 22.04
```

# Récupération du projet

```c#
git clone https://github.com/NDIAYEFATAH/springboot-thymeleaf.git
cd springboot-thymeleaf
```

# Configuration base de données

Créer la base PostgreSQL :

```python
CREATE DATABASE springThyme;
```

# Build de l’application

```python
mvn clean package
```

# Lancer la VM Vagrant

```python
vagrant up
vagrant ssh
```

# Déploiement Tomcat

```python
sudo mv examen-0.0.1-SNAPSHOT.war /opt/tomcat/webapps/ROOT.war
sudo /opt/tomcat/bin/startup.sh
```

# Accès application

```python
http://192.168.33.11:8080
```
