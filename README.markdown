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

In the index.feature file in the feature directory you will see the specifications that get executed:

     Given I am on "the home page"
     Then I should see "Hello SpecServer!"
     When I press "Push me for DOM swappage"
     Then I should see "Hello Wakawaka"
     When I press "Push me for AJAX swappage"
     Then I should see "Ooh dynamically loaded text"

The javascript that does this is:

    $("button:contains('DOM')").click(function (){
      $('div').html("Hello Wakawaka")
    });

    $("button:contains('AJAX')").click(function (){
      $.get('/ajax', function (data) {
        $('div').html(data)
       });
     });

Nothing fancy, but it took a while to get it all working, so I thought I would share in case it helps someone else out.
