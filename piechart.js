$(document).ready(function () {
    var table = $("#data").DataTable({
      retrieve: true,
      dom: "Pfrtip",
    });
  
    var container = $(".pie");
  
    var chart = Highcharts.chart(container[0], {
      chart: {
        type: "pie",
      },
      title: {
        text: "",
      },
      series: [
        {
          data: chartData(table),
        },
      ],
    });
  
    table.on("draw", function () {
      chart.series[0].setData(chartData(table));
    });
  });
  
  function chartData(table) {
    var counts = {};
  
    table
      .column(5, { search: "applied" })
      .data()
      .each(function (val) {
        if (counts[val]) {
          counts[val] += 1;
        } else {
          counts[val] = 1;
        }
      });
  
    return $.map(counts, function (val, key) {
      return {
        name: key,
        y: val,
      };
    });
  }