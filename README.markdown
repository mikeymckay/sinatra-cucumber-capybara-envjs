This is a demo app that glues together the following:

Sinatra
Cucumber
Capybara
Env.js
Johnson
Jquery

This means that you can write simple sinatra apps with jquery that can be rapidly and throughly tested using env.js instead of selenium (which is slow).

To get this running you will need some gems:

    sudo gem install stackdeck sinatra cucumber
    sudo gem install johnson -v "2.0.0.pre3"
    sudo gem install capybara-envjs

Then you will run:

    cucumber

This will execute the feature in the feature directory, which launches the sinatra app, and does some jquery stuff including a simple ajax call.

It took me a while to get this all figured out, so I thought I would share in case it helps someone else out.
