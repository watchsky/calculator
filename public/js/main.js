function getResult() {
  var select = document.getElementById('op');
  var operator = select.options[select.selectedIndex].text;
  var number1 = document.getElementById('number1').value.trim();
  var number2 = document.getElementById('number2').value.trim();
  var query = "number1=" + number1 + "&number2=" + number2;

  if (operator === "+") {
    $.ajax({url: "/service/add", data: query, dataType: "json",
      success: function(data) {
        $("#result").html(data.result);
      }
    });
  } else {
    $.ajax({url: "/service/del", data: query, dataType: "json",
      success: function(data) {
        $("#result").html(data.result);
      }
    });
  }
}
