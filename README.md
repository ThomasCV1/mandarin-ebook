# Sinatra Url Shortener

## Learning Competencies

* Map the flow of data through a web application
* Use redirect
* Use Active Record callbacks

## Summary

We're going to build a simple link shortener, a la [bitly][].

You'll have one model `Url`, which is a list of URLs that people have entered.

## Releases

### Release 0: Simple Shortener

Start with the empty Sinatra skeleton in `source`.

We have one resource: `Urls`.  For our controllers, we have a URL that lists
all our `Url` objects and another URL that, when POSTed to, creates a `Url`
object.

We'll also need a URL that redirects us to the full (unshortened) URL.  If
you've never used bitly, use it now to get a feel for how it works.

The controller methods should look like this:

```ruby
get '/' do
  # let user create new short URL, display a list of shortened URLs
end

post '/urls' do
  # create a new Url
end

# e.g., /q6bda
get '/:short_url' do
  # redirect to appropriate "long" URL
end
```

Use a `before_save` callback in the `Url` model to generate the short URL.

### Release 1:  Add a Counter!

Add a `click_count` field to your `urls` table, which keeps track of how many
times someone has visited the shortened URL.  Add code to the appropriate place
in your controller code so that any time someone hits a short URL the counter
for the appropriate `Url` is incremented by 1.

### Release 2: Add Validations

Add a validation to your `Url` model so that only `Urls` with valid URLs get
saved to the database.  Read up on [ActiveRecord validations][]

What constitutes a "valid URL" is up to you.  It's a sliding scale, from
validations that would permit lots of invalid URLs to validations that might
reject lots of valid URLs.  When you get into it you'll see that expressing the
fact "x is a valid URL" in Ruby Land or SQL Land is never perfect.

For example, the valid URL could range across:

**A valid URL is...**

* Any non-empty string
* Any non-empty string that starts with "http://" or "https://"
* Any string that the [Ruby URI module][URI module] says is valid
* Any URL-looking thing which responds to a HTTP request, i.e., we actually check to see if the URL is accessible via HTTP

Some of these are easily expressible in SQL Land.  Some of these are hard to
express in SQL Land, but ActiveRecord comes with pre-built validation helpers
that make it easy to express in Ruby Land.  Others require [custom
validations][] that express logic unique to our application domain.

The rule of thumb is that where we can, we want to always express constraints
in Ruby Land and also express them in SQL Land where feasible.

### Release 3: Add Error Handling

When you try to save (create or update) an ActiveRecord object that has invalid
data, ActiveRecord will fail.  Some methods like `create!` and `save!` throw an
exception.  Others like `create`  (without the `!` bang) return the  resulting
object whether the object was saved successfully to the database or not, while
`save` will return `false` if perform_validation is true and any validations
fail.  See [create][] and [save][] for more information.

You can always call [valid? or invalid?][valid invalid] on an ActiveRecord
object to see whether its data is valid or invalid.

Use this and the [errors][] method to display a helpful error message if a user
enters an invalid URL, giving them the opportunity to correct their error.

## Optimize Your Learning

### More on Validations, Constraints, and Database Consistency

We often want to put constraints on what sort of data can go into our database.
This way we can guarantee that all data in the database conforms to certain
standards, e.g., there are no users missing an email address.  Guarantees of
this kind &mdash; ensuring that the data in our database is never confusing or
contradictory or partially changed or otherwise invalid &mdash; are called
**consistency**.

If we think of this as a fact from Fact Land, these constraints look like:

* A user must have a first\_name
* A user must have an email
* Two user's can't have the same email address, or equivalently, each user's email must be unique
* A Craigslist post's URL must be a valid URL, for some reasonable definition of valid

These facts can be recorded in both SQL Land and in Ruby Land, like this:

<table class="table table-bordered table-striped">
  <tr>
    <th>Fact Land</th>
    <th>SQL Land</th>
    <th>Ruby Land</th>
  </tr>
  <tr>
    <td>A user must have an email address</td>
    <td><code>NOT NULL</code> constraint on <code>email</code> field</td>
    <td><code>validates :email, :presence => true</code></td>
  </tr>
  <tr>
    <td>A user must have a first name</td>
    <td><code>NOT NULL</code> constraint on <code>first_name</code> field</td>
    <td><code>validates :first_name, :presence => true</code></td>
  </tr>
  <tr>
    <td>A user's email address must be unique</td>
    <td><code>UNIQUE INDEX</code> on <code>email</code> field</td>
    <td><code>validates :email, :uniqueness => true</code></td>
  </tr>
</table>

### Learning your HTTP status codes

Each HTTP transaction **MUST** return a status code.  The one you're familiar
with is `404` (Not Found!).  You should investigate your app or watch the web
server logs from Sinatra and see which HTTP codes it sends for a static page,
or for a redirect.  Spend some time getting to know your [HTTP status codes].
You will, **very likely** be asked about them in interviews as it's a way to
separate the clowns from the people you want to hire.

You may find them easier to memorize if you have help from [HTTP status cats][]

## Resources

* [Bit.ly, a url shortening service][bitly]
* [ActiveRecord validations][]
* [URI module][]
* [Active record custom validations][custom validations]
* [ActiveRecord create][create]
* [ActiveRecord save][save]
* [ActiveRecord's valid? &amp; invalid?][valid invalid]
* [ActiveRecord's errors object][errors]
* [HTTP status codes][]
* [HTTP status cats][]

[bitly]: http://bitly.com/
[ActiveRecord validations]: http://guides.rubyonrails.org/active_record_validations.html
[URI module]: http://www.ruby-doc.org/stdlib-1.9.3/libdoc/uri/rdoc/URI.html
[custom validations]: http://guides.rubyonrails.org/active_record_validations.html#performing-custom-validations
[create]: http://apidock.com/rails/ActiveRecord/Base/create/class
[save]: http://apidock.com/rails/ActiveRecord/Base/save
[valid invalid]: http://guides.rubyonrails.org/active_record_validations.html#valid-questionmark-and-invalid-questionmark
[errors]: http://guides.rubyonrails.org/active_record_validations.html#validations-overview-errors
[HTTP status codes]: http://en.wikipedia.org/wiki/List_of_HTTP_status_codes
[HTTP status cats]: http://httpcats.herokuapp.com/
