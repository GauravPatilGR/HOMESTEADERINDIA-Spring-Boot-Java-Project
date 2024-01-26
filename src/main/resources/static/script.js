document.addEventListener('DOMContentLoaded', () => {
    const searchButton = document.querySelector('.search-box button');
    const cityInput = document.querySelector('.search-box input');
    const temperatureElement = document.querySelector('.tempreature');
    const descriptionElement = document.querySelector('.description');
    const humidityElement = document.querySelector('.info-humidity span');
    const windSpeedElement = document.querySelector('.info-wind span');
    const weatherImage = document.querySelector('.weather-box img');

    searchButton.addEventListener('click', () => {
        const city = cityInput.value.trim();

        if (!city) {
            return;
        }

        fetch(`http://localhost:8080/getWeather?city=${city}`)
            .then(response => response.json())
            .then(weatherData => {
                console.log('Weather Data:', weatherData);

                if (weatherData.main && weatherData.weather && weatherData.weather.length > 0) {
                    temperatureElement.innerHTML = `${weatherData.main.temp}<span>°C</span>`;
                    descriptionElement.innerHTML = weatherData.weather[0].description;
                    humidityElement.innerHTML = `${weatherData.main.humidity}%`;
                    windSpeedElement.innerHTML = `${weatherData.wind.speed} m/s`;

                    const description = weatherData.weather[0].description.toLowerCase();

                    if (description === 'clear sky') {
                        weatherImage.src = 'images/clear-day.png';
                    } else if (description === 'few clouds' || description === 'scattered clouds' || description === 'broken clouds' || description === 'overcast clouds') {
                        weatherImage.src = 'images/cloud-day.png';
                    } else if (description === 'rain' || description === 'light rain' || description === 'moderate rain' || description === 'heavy intensity rain' || description === 'moderate rain' || description === 'very heavy rain' || description === 'extreme rain' || description === 'shower rain') {
                        weatherImage.src = 'images/rain.png';
                    } else if (description === 'snow' || description === 'light snow' || description === 'heavy snow' || description === 'sleet' || description === 'light shower sleet	' || description === 'shower sleet	' || description === 'light rain and snow	' || description === 'rain and snow	' || description === 'light shower snow	' || description === 'shower snow' || description === 'heavy shower snow') {
                        weatherImage.src = 'images/snow.png';
                    } else if (description === 'mist' || description === 'fog' || description === 'smoke' || description === 'haze' || description === 'sand' || description === 'dust') {
                        weatherImage.src = 'images/mist.png';
                    } else if (description === 'thunderstorm with rain' || description === 'thunderstorm with heavy rain' || description === 'light thunderstorm' || description === 'thunderstorm' || description === 'heavy thunderstorm' || description === 'thunderstorm with drizzle') {
                        weatherImage.src = 'images/thunderstorm.png';
                    } else {
                        weatherImage.src = 'images/cloud-day.png';
                    }
                } 
                
                else {
                    throw new Error('Invalid weather data structure');
                }
            })
            .catch(error => {
                console.error('Error fetching weather data:', error);
                temperatureElement.innerHTML = '--';
                descriptionElement.innerHTML = 'Sorry, city not found';
                humidityElement.innerHTML = '--';
                windSpeedElement.innerHTML = '--';
                weatherImage.src = 'images/error.png';
            });
    });
});
