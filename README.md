# Movie Application

A responsive movie application which uses IMDB Movies API to fetch datas and implements using http flutter package and Provider State Management

## Getting Started

Before getting started, make sure that you have Flutter installed on your pc. 
If not, you can follow [these steps to install flutter](https://docs.flutter.dev/get-started/install).

To get Started, you need to clone this repository to your local device by running the following command in your terminal

```
git clone https://github.com/i-maple/movie_application.git
```

After you clone the project to your device, you can run the following command to get dependencies so that app can start running

```
flutter pub get
```

Then you must add API KEY and Bearer Token in the environment variable file. 
To achieve this, create a file named  `.env` under assets folder

Then obtain API Keys and Bearer Token from [this link](https://developer.imdb.com/) and add credientials to the file in the following format : 

```
    - API_KEY=<your_API_KEY>
    - BEARER=<your_BEARER_TOKEN>
```
Replace the placeholder <your_API_KEY> and <your_BEARER_TOKEN> with your credientials