<p align=center>
  <a href=https://goo.gl/BhrgjW>
    <img src=https://envygeeks.io/badges/paypal-large_1.png alt=Donate>
  </a>
  <br>
  <a href=https://travis-ci.org/envygeeks/jekyll-posts_by_year>
    <img src="https://travis-ci.org/envygeeks/jekyll-posts_by_year.svg?branch=master">
  </a>
</div>

# Jekyll Posts By Year

Provides your posts sorted by year as `{{ site.posts_by_year }}`

## Usage

```html
{% for post in site.posts_by_year %}
  {% assign currentYear = post.date | date: "%Y" %}
  {% unless year == currentYear %}
    <h2>{% assign year = currentYear %}{{ year }}</h2>
  {% endunless %}

  <article>
    <header>
      <h1 class="fa fa-archive">
        <a href="{{ post.url }}">
          {{ post.title }}
        </a>
      </h1>
    </header>
    <footer>
      <time>
        {{ post.date }}
      </time>
    </footer>
  </article>
{% endfor %}
```
