# 👥 InstaCommunity 

Welcome to InstaCommunity!!

For people who seek developing bonds of knowledge with others,
the challenge to find people with same interests and abilities with whom we can share, this 
web application is a social media to connect everyone in this category, a refreshing way 
of making new friends...The InstaCommunity surely will meet your expectations and likes in the most practical 
and fun way 🤩


## 🛠️ Installation on your machine 

- Clone the InstaCommunity repository into your server: 

```git clone https://github.com/kepler-ft/instacommunity.git & cd instacommunity```

- Register the project in Google's Firebase, and download the .json credentials
- Add the environment variables of your application to access the database,
as well as the path to yours Firebase's credentials:

```shell
echo "POSTGRES_PASSWORD=ic-postgres
POSTGRES_USER=ic-postgres
POSTGRES_DATABASE=ic-postgres
DB_SERVER=ic-postgres
DB_NAME=ic-postgres
DB_USER=ic-postgres
DB_PASSWORD=ic-postgres
host=localhost"
GOOGLE_APPLICATION_CREDENTIALS=/home/<user>/Downloads/service-account-file.json >> env.env
```


- Where ```DB_NAME``` will be the Name of the database your application will store it's data.
- ```DB_USER``` will be the name by which you might access the database with ```DB_PASSWORD```
- Finally, you will be able to run it with the following command:

```shell
docker-compose up
```

## 👩‍💻 Usage

By accessing the `localhost:3000/` you will be able to run InstaCommunity! Enjoy it 🎉
