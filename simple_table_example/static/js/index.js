// Get a reference to the table body
var tbody = d3.select("tbody");

// Console.log the weather data from data.js
console.log(dataobject);

dataobject.forEach((dailyFlo) => {
  var row = tbody.append("tr");
  Object.entries(dailyFlo).forEach(([key, value]) => {
    var cell = row.append("td");
    cell.text(value);
  });
});
