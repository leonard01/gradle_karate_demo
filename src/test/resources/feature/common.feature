Feature:

Scenario:
* def currentDate =
  """
  function(s) {
     var monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "June",
        "July", "Aug", "Sep", "Oct", "Nov", "Dec"
      ]
      var d = new Date();
      var year = d.getFullYear();
      var month = d.getMonth();
      var monthName = monthNames[month]
      var date = d.getDate();
      return String(monthName + " " + date + ", " + year);
  }
  """

 * def currentISODate =
  """
  function(s) {
   var monthNames = ["01", "02", "03", "04", "05", "06",
     "07", "08", "09", "10", "11", "12"
     ]
   var d = new Date();
   var year = d.getFullYear();
   var month = d.getMonth();
   var monthActual = monthNames[month]
   var date = d.getDate();
   return String(year + "-" + monthActual + "-" + date);
   }
   """
