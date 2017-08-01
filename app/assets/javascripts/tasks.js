function remove_milestone(link) {
  //window.alert("sometext");
  $(link).previous("input[type=hidden]").value = "1";
  $(link).up(".milestone").hide();
}
