$(document).on('turbolinks:load', function () {
  $("#finder-btn").on("click", function () {
    $(".result").hide();
    var qNum = $("ul li").length;
    if ($("ul li input:checked").length < qNum) {
      alert("未回答の項目があります");
    } else {
      var typeANum = $(".typeA:checked").length,
        typeBNum = $(".typeB:checked").length,
        typeCNum = $(".typeC:checked").length,
        typeDNum = $(".typeD:checked").length,
        typeENum = $(".typeE:checked").length,
        typeFNum = $(".typeF:checked").length,
        typeGNum = $(".typeG:checked").length,
        typeHNum = $(".typeH:checked").length,
        typeINum = $(".typeI:checked").length,
        typeJNum = $(".typeJ:checked").length;
      const max = Math.max(typeANum, typeBNum, typeCNum, typeDNum, typeENum, typeFNum, typeGNum, typeHNum, typeINum, typeJNum);

      if (typeANum >= max) {
        $(".ResultA").fadeIn(1500);
        $("#wrapper").fadeOut();
      } else if (typeBNum >= max) {
        $(".ResultB").fadeIn(1500);
        $("#wrapper").fadeOut();
      } else if (typeCNum >= max) {
        $(".ResultC").fadeIn(1500);
        $("#wrapper").fadeOut();
      } else if (typeDNum >= max) {
        $(".ResultD").fadeIn(1500);
        $("#wrapper").fadeOut();
      } else if (typeENum >= max) {
        $(".ResultE").fadeIn(1500);
        $("#wrapper").fadeOut();
      } else if (typeFNum >= max) {
        $("ResultF").fadeIn(1500);
        $("#wrapper").fadeOut();
      } else if (typeGNum >= max) {
        $("ResultG").fadeIn(1500);
        $("#wrapper").fadeOut();
      } else if (typeHNum >= max) {
        $("ResultH").fadeIn(1500);
        $("#wrapper").fadeOut();
      } else if (typeINum >= max) {
        $("ResultI").fadeIn(1500);
        $("#wrapper").fadeOut();
      } else if (typeJNum >= max) {
        $("ResultJ").fadeIn(1500);
        $("#wrapper").fadeOut();
      }
    }
  });
});