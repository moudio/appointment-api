#AppointCar API

## Live Link

[AppointCar API on Heroku](https://appointrails.herokuapp.com/)

## Technologies

- Ruby
- Ruby on Rails
- JWT (JSON Web Token)

## Usage

> Clone the repository to your machine and cd into the directory

```sh
$ git clone git@github.com:MouhaDiouf/appointment.git
```

```sh
$ cd appointment
```

> Use the following command to start the rails server then visit: http://localhost:3000 to use the app

```sh
$ rails s
```

## Functionalities
This is a fully-built Rails API  that serves a front-end React application (can be found [here][https://appointcar.netlify.app/])


The user can:
- Create or log in to its account
- Fetch cars from the front end
- Book for cars
- Update bookings
- Cancel/Delete booking

The user can only do these queries from the front-end application. This rails API's access is protected with Jwt (JSON Web Token). This means that the API is not available outside of the front-end application.

## Developed by

 [Mouhamadou Diouf](https://github.com/MouhaDiouf")

## Contributing

1. Fork it https://github.com/MouhaDiouf/appointment/fork
2. Create your feature branch (git checkout -b feature/[choose-a-name])
3. Commit your changes (git commit -am 'What this commit will fix/add')
4. Push to the branch (git push origin feature/[chosen name])
5. Create a new Pull Request
