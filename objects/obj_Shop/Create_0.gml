open = false
setup = false


function set_shop() {
	var maxWidth = 4;
	var itemCount = 8;
	
	var maxHeight = ceil(itemCount / maxWidth);
	var _xx = (room_width / 2) - 250;
	var _yy = room_height / 2;

	var _cardIndex = 0;

	// Altura de cada fila
	var _rowHeight = 90;


	for (var i = 0; i < itemCount; i++) {

		var _column = i mod maxWidth;
		var _row = floor(i / maxWidth);

		var _card_x = _xx + (_column * 150);
		var _card_y = _yy + (_row * _rowHeight);
	
		scr_get_item(0,_card_x,_card_y)
	}
}

