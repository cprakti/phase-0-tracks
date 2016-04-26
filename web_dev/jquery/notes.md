What is jquery?(20 min)
- Wikipedia
  - OVERVIEW
    - Cross-platform JavaScript library designed to simplify the client-side scripting of HTML.
    - At its core, jQuery is a DOM (Document Object Model) manipulation libary.

  - What makes it useful?
    - Encourages separation of JavaScript and HTML
    - Brevity and clarity
    - Eliminates cross-browser incompatibilities
    - Extensible

  - FEATURES
    - DOM element selections using Sizzle (selector engine)
    - DOM manipulation based on CSS selectors that use elements' names and attributes such as id and class
    - Events
    - Effects and animations
    - AJAX (?)
    - Deferred and Promise objects to control asynchronous processing
    - JSON parsing
    - Extensibility through plug-ins
    - Utilities, such as feature detection

  - USAGE
    - Including the Library:
      - jQuery library is a single JS file containing all common DOM, event, effects, and Ajax functions.
      - It can be included within a Web page by linking to a local copy or to one of the many copies available from public servers.

    - <script src="jquery.js"></script>

    - CDN include:
      <script src="https://code.jquery.com/jquery-latest.min.js"></script>

    - Usage styles:
      - $ function (factory method) = functions, often called commands, are chainable as they all return jQuery objects.
      - $. -prefixed functions = utility functions which do not act upon jQuery object directly.

    - Access to and manipulation of multiple DOM nodes in jQuery typically begins with calling the $ function with a CSS selector string.
      - This returns a jQuery object referencing all the matching elements in the HTML page.
      - $("div.test"), for example, returns a jQuery object with all the div elements of class test.
      - This node set can be manipulated by calling methods on the returned jQuery obejct or on the nodes themselves.

    - Typical start-point
      - The typical jQuery usage is to put initialization code and event handling functions in .ready().  This is triggered when the browser has constructed the DOM and sends a load event.

      <script type="text/javascript">
        $(document).ready(function) {
            // jQuery code, event handling callbacks here });
      </script>

      - Callback functions  for event handling are also included inside .ready() as anonymous functions, but are called when the event for the callback is triggered.  For example, the following jQuery code adds an event handler for a mouse click on an img image element.

      $(document).ready(function() {
          $('img').click ( function() {
              // handle the click event an any img element in the page
            });
          });

      The following syntaxes are equivalent:
        - $(document).ready(handler)
        - $(handler)


How is jquery used? (40 min)
   - Basic youtube intro video?
      <script src="bower_components/jquery.js">
      </script>

      <script>
        $(document).ready(function() {

        });
      </script>

      The intro to jQuery videos were particularly helpful to see the language used in real time.

Cheatsheet for jquery?(10 min)

https://oscarotero.com/jquery/