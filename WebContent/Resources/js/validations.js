function justNumbers(e){
	var keynum = window.event ? window.event.keyCode : e.which;
	if ((keynum == 8) || (keynum == 44))
		return true;
	return /\d/.test(String.fromCharCode(keynum));
}


function QuitarErrorPro(i,name){
	$("#"+i).css({'visibility':'hidden'});
	$("#"+name).css({'background': 'white'});
}

function NumCheck(e, field) {
    key = e.keyCode ? e.keyCode : e.which
    if (key == 8) return true
    if (key > 47 && key < 58) {
      if (field.value == "") return true
      regexp = /.[0-9]{5}$/
      return !(regexp.test(field.value))
    }
    if (key == 46) {
      if (field.value == "") return false
      regexp = /^[0-9]+$/
      return regexp.test(field.value)
    }
    return false
 }