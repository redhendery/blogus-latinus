# Blogus Latinus
A Blog Site based off of a spec for a Tech Screen I did for a job interview. Built so I could learn how to do the one thing I couldn't do in the test.

<h3>Built with:</h3>

<li>Bulma CSS</li>
<li>Webpack</li>
<li>MongoDB</li>
<li>Ruby version 2.7.1</li>
<li>Node version 12.16.1</li>
<li>Ruby on Rails version 6.0.2.2</li>

<h5>To run, clone this repository:</h5>
<pre><code>git clone https://github.com/redhendery/blogus-latinus</pre></code>

<h5>Open directory:</h5>
<pre><code>cd blogus-latinus</pre></code>

<h5>Install Dependencies:</h5>
<pre><code>bundle install
yarn install</pre></code>

Check you have MongoDB server running. Follow link below if you need instructions:
https://docs.mongodb.com/manual/tutorial/manage-mongodb-processes/

<h5>Seed The Database</h5>
<pre><code>rails db:seed</pre></code>

<h5>Start Webpack Server</h5>
<pre><code>bin/webpack-dev-server</pre></code>

<h5>Start the Rails in a new terminal window and enjoy!</h5>
<pre><code>rails server</pre></code>


You can create a user if you wish to, or there is a user seeded with the database as follows:
username: user@email.com
password: password
