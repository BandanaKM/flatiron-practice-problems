Consuming an API
Browsing the Reddit API
Install the following Chrome or Firefox extension:

https://chrome.google.com/webstore/detail/jsonview/chklaanhfefbnpoihckbnefhakgolnmc

https://addons.mozilla.org/en-us/firefox/addon/jsonview/

Visit http://reddit.com/.json in your browser

Setup
gem install rest-client

Run the following at the top of your code:

require 'json'

require 'rest_client'

Here is an example of using the require statements in a Ruby script: https://gist.github.com/spencer1248/669425b37ba6d6c5c251

SFW Reddit
A hash of stories from the Reddit front page can now be retrieved using the following statement:

reddit_hash = JSON.parse(RestClient.get('http://reddit.com/.json'))

Retrieve the Reddit hash in a pry or irb session and play with it interactively. Make sure to run the require statements in your irb console as well, otherwise you will get errors about JSON and RestClient. All your code will be placed in a Ruby script, but playing with the hash in irb is a useful tool when getting to know a complex data structure.

We want to generate an HTML page that excludes all posts that are NSFW (not safe for work). This is indicated by the over_18 field.

Take the filtered Reddit stories and generate the following string with every story having its own <li>:

<html>
  <head>
  </head>
  <body>
    <ul>
      <li>
        <a href="REDDIT URL">
            <h1>POST TITLE</h1>
            <img src="THUMBNAIL URL" />
            <h4>Upvotes:</p>
            <p>NUMBER OF UPVOTES</h4>
            <p>Downvotes:</p>
            <h4>NUMBER OF DOWNVOTES</h4>
        </a>
      </li>
      .
      .
      .
      <li>
        <a href="REDDIT URL">
            <h1>POST TITLE</h1>
            <img src="THUMBNAIL URL" />
            <h4>Upvotes:</h4>
            <p>NUMBER OF UPVOTES</p>
            <h4>Downvotes:</h4>
            <p>NUMBER OF DOWNVOTES</p>
        </a>
      </li>
    </ul>
  </body>
</html>
Make sure to replace the capitalized strings with their respective values from the Reddit API.

For instance, given a story that contains the following values:

{ 
    ups: 10, 
    downs: 5, 
    permalink: "/r/funny/comments/1nkf6g/bane_also_ran_into_that_woman/",
    title: "Bane also ran into that woman.",
    thumbnail: "http://d.thumbs.redditmedia.com/6RWoT7UpEd_momgc.jpg"
}
Your <li> would look like this:

    <li>
        <a href="http://reddit.com/r/funny/comments/1nkf6g/bane_also_ran_into_that_woman/">
            <h1>Bane also ran into that woman.</h1>
            <img src="http://d.thumbs.redditmedia.com/6RWoT7UpEd_momgc.jpg" />
            <h4>Upvotes:</h4>
            <p>10</p>
            <h4>Downvotes:</h4>
            <p>5</p>
        </a>
      </li>
Also, browsers ignore indentation whitespace when parsing HTML, so it's not necessary for your string to duplicate the indentation whitespace shown above.

Finally, have your script write the string to a file called "reddit.html". Try opening it in your browser!