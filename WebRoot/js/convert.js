
function fommatterDictionary(data,key,value) {
	var result = value;
	for(var i=0; i<data.length; i++) {
		var map = data[i];
		if(map.dictionary_key == key && map.dictionary_value == value) {
			result = map.dictionary_name;
			break;
		}
	}
	return result;
}