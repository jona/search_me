#Search me
#####Search the specified DOM element for keywords

##Initialize
```coffeescript
search_bar = new app.SearchFilter(".project")
```

##HTML elements
Assign the input box the following id ```search-bar```.

**Example**:

```html 
<input type='text' id='search-bar'>
```

There is an element that is shown when no results are found. This element should be assigned the id ```no-match-found```.

**Example**

```html
<div id="no-match-found">
  No matches found
</div>
```
#####Dependencies
1. JQuery
