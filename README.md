# Containerization

### Web application ( sha256 function )


- docker build, Docker va créer un conteneur pour chaque instruction

- L'argument -t permet de donner un nom à notre image Docker. 

- Cela permet de retrouver plus facilement notre image par la suite.

- Le . est le répertoire où se trouve le Dockerfile ; dans notre cas, à la racine de notre projet.

## docker build -t issam/issam-app .      

- On peut lancer notre conteneur avec la commande docker run

## docker run -it -p 8080:8080 --rm --name issam-app-1 issam/issam-app

----------------------------------------------------------

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Lints and fixes files
```
npm run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).
