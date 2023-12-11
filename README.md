# Campground recently viewed

How to run locally:

Initial setup: `bin/setup`

Then to run the server: `bin/dev` and you are all set.

Go to `localhost:3000` to access the app.


### API

> List of recently vieweds
>
> `GET: http://localhost:3000/api/v1/recently_vieweds`

>Set a campground as viewed:
>
> `POST: http://localhost:3000/api/v1/recently_vieweds`
> 
> Body:
> ```json
> {
>   "id":2
> }
