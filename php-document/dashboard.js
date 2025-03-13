document.getElementById("showAdmin").addEventListener("click", function () {
  fetchData("adminlogin.php");
});

document.getElementById("showUser").addEventListener("click", function () {
  fetchData("showUser.php");
});

document
  .getElementById("showBookService")
  .addEventListener("click", function () {
    fetchData("admindashboard.php");
  });

document.getElementById("showService").addEventListener("click", function () {
  fetchData("showFeedback.php");
});

function fetchData(url) {
  $.ajax({
    url: url,
    method: "GET",
    success: function (data) {
      $("#dataContainer").html(data);
      // $('#dataContainer').show();
      // $('#detailsContainer').hide();
    },
    error: function () {
      $("#dataContainer").html("<p>An error has occurred</p>");
    },
  });
}

function fetchDetails(url) {
  $.ajax({
    url: url,
    method: "GET",
    success: function (data) {
      $("#detailsContainer").html(data);
      // $('#dataContainer').hide();
      // $('#detailsContainer').show();
    },
    error: function () {
      $("#detailsContainer").html("<p>An error has occurred</p>");
    },
  });
}
