// Load data from hours-of-tv-watched.csv
d3.csv("MockFlowCSV.csv").then(function(flows) {

    console.log(flows);
  


    d3.select("table")
    .selectAll("tr")
    .data(flows)
    .enter()
    .append("tr")
    .html(function(flows) {
      return `<td>${flows.Loc}</td><td>${flows.LocName}</td><td>${flows.LocStAbbrev}</td><td>${flows.LocCnty}</td><td>${flows.DirFlo}</td><td>${flows.LocTypeInd}</td>`;
    });

  }).catch(function(error) {
    console.log(error);
  });

