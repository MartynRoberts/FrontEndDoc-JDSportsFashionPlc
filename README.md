JD Sports Fashion plc
==================


# Front-End Style Guide (not official yet)

Welcome to the JD Sports Fashion plc

Front End development style guide.
It is important to note and consider that every organisation
big or small, has a coding spec - or at least it should do.

JD is no different. We have over 35 companies
in over 200 countries and have platforms for all brands on
mobile, desktop and tablet. This also includes store kiosk
and other channels including social and third party vendor
sites such as Amazon. This is in multi languages and multi 
currencies and we have multi development teams; therefore
it is imperative that we stick and try to have a consistant
codebase across our group.

Welcome again to JD.


---------------------------------------------------------------------------------------------------

### <a name='contents'>Contents</a>

#### [General](#general)
  1. [Indenting](#general-indenting)
  1. [Capitalisation](#general-capitalisation)
  1. [Spacing](#general-spacing)
  1. [Encoding](#general-encoding)
  1. [Minification](#minification)

#### [HTML](#html)
  1. [General](#html-general)
  1. [Semantics](#html-semantics)
  1. [Style](#html-style)
  1. [Formatting](#html-formatting)

#### [CSS](#css)
  1. [Style](#css-style)
  1. [Formatting](#css-formatting)

#### [JavaScript](#javascript)
  1. [Writing](#javascript-writing)


#### [Info](#info)

---------------------------------------------------------------------------------------------------

## <a name="general">General</a>

### <a name="general-indenting">Indenting</a>

  - Use two spaces to indent. Two spaces is enough space to illustrate heirarchy, but not so much that deeply nested HTML gets out of hand.

  - Don't use tabs or mix tabs and spaces. Tabs can vary in width for different editors and look especially bad when viewing source-code in the browser.

    ```html
    <ul>
      <li>Felix</li>
      <li>Simba</li>
    </ul>
    ```

    ```css
    .breeds {
      background: #000000;
      color: #0000FF;
    }
    ```

    ```javascript
    var purr = function() {
      alert('purr');
    }
    ```

### <a name="general-capitalisation">Capitalisation</a>

  - Use only lowercase for all HTML and CSS code. This applies to HTML element names, attributes, attribute values (unless text/CDATA), CSS selectors, properties, and property values (with the exception of strings).

    ```html
    <!-- bad -->
    <A HREF="http://google.com" title="GREAT search engine">Google</A>

    <!-- good -->
    <a href="http://google.com" title="GREAT search engine">Google</a>
    ```

    ```html
    <!-- bad -->
    <h1 class="LOGO">I Love Cats</h1>

    <!-- good -->
    <h1 class="logo">I Love Cats</h1>
    ```

### <a name="general-spacing">Spacing</a>

  - Remove trailing whitespaces, they can complicate diffs.

### <a name="general-encoding">Encoding</a>

  - Use UTF-8

  - Specify the encoding in HTML templates and documents via `<meta charset="utf-8">`. Do not specify the encoding of style sheets as these assume UTF-8.

**[[⬆]](#contents)**

---------------------------------------------------------------------------------------------------

## <a name="html">HTML</a>

### <a name="html-general">General</a>

  - Use HTML5: `<!DOCTYPE html>`

  - Use valid HTML where possible.

  - Use tools such as the [W3C HTML validator](http://validator.w3.org/nu/) to test.

### <a name="html-semantics">Semantics</a>

  - Use elements for what they have been created for. Using HTML according to its purpose is important for accessibility, reuse, and code efficiency reasons.

    ```html
    <!-- bad -->
    <div class="header">
      <div class="title">Cat Massage 101</div>
      <div class="subtitle">Keeping your cat happy</div>
    </div>

    <!-- good -->
    <header>
      <h1>Cat Massage 101</h1>
      <h2>Keeping your cat happy</h2>
    </header>
    ```

  - For more information on the specifics of HTML5 elements, see <http://diveintohtml5.info/semantics.html#new-elements>

### <a name="html-style">Style</a>

#### Entities

  - Use entity references like `&pound;`, `&euro;`, `&mdash;`, `&rdquo;`, or `&#x263a;`, as we cannot assume the same encoding (UTF-8) is used for files and editors.

    ```html
    <!-- good -->
    <p>OMG I &hearts; &hearts; &hearts; CATS</p>

    <!-- bad -->
    <p>OMG I ♥ ♥ ♥ CATS</p>
    ```

#### Type attributes

  - Omit `type` attributes for style sheets and scripts.

  - Specifying type attributes in these contexts is not necessary as HTML5 implies text/css and text/javascript as defaults. This can be safely done even for older browsers.

    ```html
    <!-- bad -->
    <link rel="stylesheet" href="style.css" type="text/css">
	 <script type="text/javascript" charset="utf-8"></script>

    <!-- good -->
    <link rel="stylesheet" href="style.css">
	 <script>
    ```

### <a name="html-formatting">Formatting</a>

#### General

  - Use a new line for every block-level element, and indent child elements.

    ```html
    <!-- bad -->
    <header><h1 class="logo"><a href="/">CATSRUS</a></h1></header>

    <!-- good -->
    <header>
      <h1 class="logo"><a href="/">CATSRUS</a></h1>
    </header>
    ```

  - If you run into issues around whitespace between list items it’s acceptable to put all li elements in one line.

    ```html
    <!-- ok -->
    <nav>
      <ul>
        <li><a href="/item-1">Item 1</a></li><li><a href="/item-2">Item 2</a></li><li><a href="/item-3">Item 3</a></li>
      </ul>
    </nav>
    ```

    ```html
    <!-- preferred -->
    <style>
      nav { font-size: 12px; }
      nav ul { font-size: 0; } /* set font size to '0' to collapse white-space */
      nav ul li { font-size: 12px; } /* reset font size */
    </style>

    <nav>
      <ul>
        <li><a href="/item-1">Item 1</a></li>
        <li><a href="/item-2">Item 2</a></li>
        <li><a href="/item-3">Item 3</a></li>
      </ul>
    </nav>
    ```

#### Quote marks

  - Use double (`"`) rather than single (`'`) quote marks around attribute values.

    ```html
    <!-- bad -->
    <a href='/favourite-kittens'>Favourite Kittens</a>

    <!-- good -->
    <a href="/favourite-kittens">Favourite Kittens</a>
    ```

### <a name="minification">Minification</a>
#### Minification

  - Use this guide as best as possible for .src files - .minify and public files should follow this minification guide

  - Try to use the following when coding - have a dist.js file and src.js or call it min.js or dev.js and make sure you minify before shipping code live - despite Amazon, Akamai and Dyn - we want to use WebSphere Commerce and other platforms best when rendering via minification
  
  - CSS minify to one CSS rule per line; also remove spaces and not needed ; etc
  
  ```css
    <!-- bad -->
    .class {
		 padding: 20px 5px ;
	 }
	 .logo {
		 padding:5px;
	 }

    <!-- good -->
    .class{padding:20px;5px}
	 .logo{padding:5px}
    ```
  - HTML and JS should follow the same rule - do not code your fixes on live .min or live .compressed files - do you work and fixes in staging and then compress and re-ship your code.
  
  ```html and js
    <!-- bad -->
    <h1> 
	 test </h1>
	 function foot(f) {
		 console.log(f);
	 }

    <!-- good -->
    <h1>test</h1>
	 function foot(f){console.log(f);}
    ```
  


**[[⬆]](#contents)**

---------------------------------------------------------------------------------------------------

## <a name="css">CSS</a>

### <a name="css-general">General</a>

  - Use valid CSS

  - Use tools such as the [W3C CSS validator](http://jigsaw.w3.org/css-validator/) to test.

### <a name="css-style">Style</a>

#### Naming

  - Prefer classes to IDs, classes are reuseable and do not interrupt CSS hierarchy. A good rule of thumb is to *ONLY* use an ID when you need to do something with the element in JavaScript. Styles should almost always be aplpied with a class.

  - Use meaningful or generic names for IDs and classes.

    ```css
    /* bad */
    .a {}
    .kjs-0922 {}

    /* good */
    .video {}
    .street-address {}
    ```

  - Use names that are as short as possible but as long as necessary.

    ```css
    /* bad */
    .navigation {}
    .atr {}

    /* good */
    .nav {}
    .author {}
    ```

  - Separate words in IDs and class names with a hyphen and use only lowercase characters

    ```css
    /* bad */
    .CHUBBY-CATS {}
    .crazyCats {}
    .cranky_cats {}
    .creepycats {}

    /* good */
    .cute-cats {}
    ```

#### Type selectors

  - Avoid specifying unecessary type selectors or ancestors

    ```css
    /* bad */
    ul.cats {}
    header.main h1.logo span {}

    /* good */
    .cats-list {}
    .logo span {}
    ```

  - If coding in LESS, avoid Christmas trees by nesting everything. Three levels deep should be plenty.

#### Shorthand properties

  - Use them

    ```css
    /* bad */
    li {
      border-top-style: none;
      font-family: palatino, georgia, serif;
      font-size: 100%;
      line-height: 1.6;
      padding-bottom: 2em;
      padding-left: 1em;
      padding-right: 1em;
      padding-top: 0;
    }

    /* good */
    li {
      border-top: 0;
      font: 100%/1.6 palatino, georgia, serif;
      padding: 0 1em 2em;
    }
    ```

#### Zeros

  - Don't include units after `0` values unless they are required

    ```css
    /* bad */
    li {
      margin: 0em;
      padding: 0%;
    }

    /* good */
    li {
      margin: 0;
      padding: 0;
    }
    ```

  - Don't include a leading `0` in values between `-1` and `1`

    ```css
    /* bad */
    li { font-size: 0.8em; }

    /* good */
    li { font-size: .8em; }
    ```

#### Colours

  - Use hexadecimal notation

    ```css
    /* bad */
    a { color: rgb(0,0,255); }

    /* good */
    a { color: #0000FF; }
    ```

  - Prefer three character hexadecimal notation where possible

    ```css
    /* bad */
    p { color: #000000; }

    /* good */
    p { color: #000; }
    ```

#### Hacks

  - Avoid user agent detection as well as CSS "hacks" - try a different approach first.

### <a name="css-formatting">Formatting</a>

#### Declaration order

  - Alphabetise declarations.

  - Put declarations in alphabetical order in order to achieve consistent code in a way that is easy to remember and maintain.

  - Ignore vendor-specific prefixes for sorting purposes. However, multiple vendor-specific prefixes for a certain CSS property should be kept sorted (e.g. -moz prefix comes before -webkit).

    ```css
    .main-header {
      background: #000;
      border: #FFF solid 4px;
      border-radius: 4px;
      -moz-border-radius: 4px;
      -webkit-border-radius: 4px;
      color: #FFF;
      text-align: center;
    }
    ```

#### Declaration order

  - Indent all block content

    ```css
    /* bad */
    @media screen, projection {

    html {
    background: #fff;
    color: #444;
    }

    }

    /* good */
    @media screen, projection {

      html {
        background: #fff;
        color: #444;
      }

    }
    ```

#### Declaration stops

  - Use a semicolon after every declaration

    ```css
    /* bad */
    li {
      margin: 0;
      padding: 0
    }

    a { color: #FF0000 }

    /* good */
    li {
      margin: 0;
      padding: 0;
    }

    a { color: #FF0000; }
    ```

#### Spacing

  - Use a single space between property and value (but no space between property and colon).

    ```css
    /* bad */
    h1 { font-weight:bold; }
    h1 { font-weight :bold; }

    /* good */
    h1 { font-weight: bold; }
    ```

  - Use a single space between the last selector and the opening brace that begins the declaration block.

  - The opening brace should be on the same line as the last selector in a given rule.

    ```css
    /* bad */
    .video{
      margin-top: 1em;
    }

    .video
    {
      margin-top: 1em;
    }

    /* good */
    .video {
      margin-top: 1em;
    }
    ```

  - Always start a new line for each selector and declaration.

    ```css
    /* bad */
    input:focus, input:hover {
      background: #FFFF00;
    }

    /* good */
    input:focus,
    input:hover {
      background: #FFFF00;
    }
    ```

  - Always put a blank line (two line breaks) between rules.

    ```css
    html {
      background: #fff;
      color: #000;
    }

    body {
      margin: auto;
      width: 50%;
    }
    ```

  - If you are only declaring one style, write the entire declaration on one line.

    ```css
    /* bad */
    a {
      color: #FF0000;
    }

    /* good */
    a { color: #FF0000; }
    ```

  - Use single `'` rather than double `"` quotation marks for attribute selectors or property values. Do not use quotation marks in URI values `url()`.

    ```css
    /* bad */
    @import url("//www.google.com/css/maia.css");

    html {
      font-family: "open sans", arial, sans-serif;
    }

    /* good */
    @import url(//www.google.com/css/maia.css);

    html {
      font-family: 'open sans', arial, sans-serif;
    }
    ```

**[[⬆]](#contents)**

---------------------------------------------------------------------------------------------------


## <a name="javascript">JavaScript</a>

### <a name="javascript-writing">General</a>

- Use the global JD CDN for using the same libraries.

- Avoid using Public CDN APIs such as Google.

- Do not use execessive whitespace.

- Check jQuery for conflicts.

- Use camel case in functions.

    ```JavaScript
    /* bad */
    function FOOBAR() {}

    /* good */
    function fooBar() {}
    ```

- Use console for testing.

    ```JavaScript
    /* bad */
    alert('test');

    /* good */
    console.log('test');
    ```
- Use JSON Lints for JSON validation - avoid big empty nests.

    ```Json
    /* bad */
    page { pages { pagelist { page1 {} page2{} } } } }

    /* good */
    page {
		 pagelist {
			 page1{
			 }
			 page2{
			 }
		 }
	 }
    ```
 - Use good cloaking when using Angular
 
 - ALWAYS serve JS through defer and at the footer of the HTML document


**[[⬆]](#contents)**

---------------------------------------------------------------------------------------------------












## <a name="info">Info</a>


With help/inspiration from:

- [James Holt](https://github.com/yostudio)
- [Gov.UK](https://github.com/alphagov)
- [van der Ende](http://van-der-en.de)
- [Google HTML/CSS Style Guide](http://google-styleguide.googlecode.com/svn/trunk/htmlcssguide.xml)
- [Airbnb JavaScript Style Guide](https://github.com/airbnb/javascript)
