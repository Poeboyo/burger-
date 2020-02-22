# Burger

This Burger Application allows the user to create and consume each which switches the state of each.

## How it's Made

- The app utilizes HandleBars to create a body. The app connects to an SQL database which has multiple fields, one of which is whether or not the burger is set to be consumed and moved to a separate column.

```javascript
  devour: function(objColVals, condition, cb) {
    orm.updateOne("burgers", objColVals, condition, function(res) {
      cb(res);
    });
  }
```

- The app connects to the database, and populates the page with the burgers in question.

```javascript

  updateOne: function(table, objColVals, condition, cb) {

    var queryString = "UPDATE " + table;

    queryString += " SET ";
    queryString += objToSql(objColVals);
    queryString += " WHERE ";
    queryString += condition;

    console.log(queryString);
    connection.query(queryString, function(err, result) {
      if (err) {
        throw err;
      }

      cb(result);
    });
  }
```

- Any changes by using the click of a devour button will update the selected.

## Technologies Used

- HTML
- Handlebars
- CSS
- Materialize UI
- JavaScript
- Node.js
- Particle.js
- jQuery
- MySQL
- Express

## Difficulties and Learning

- The main difficulties and learning curves that came with this project was Handlebars as well as using the SQL database and hard coding an ORM to deal with the changes made to the Database. It was interesting using different methods to style the page.
