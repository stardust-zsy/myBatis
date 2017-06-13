(function($) {

	var methods = {
		init : function(id, max, bool) {

			var a = "";

			for (var i = 0; i < max; i++) {
				a = "<option value= " + i + "b" + ">" + i + "</option>" + a;
			}

			$("#" + id).append(
					"<select id='" + id + "_select'>" + "<option value=''>" + a
							+ "</select>" + "<input type='text' id='" + id
							+ "_input'/>");

			var $select_Id = "#" + id + "_select";
			var $input_Id = "#" + id + "_input";

			
			if(!bool){
				$($input_Id).attr("disabled","disabled"); 
			}
			
			$($select_Id).change(function() {

				$($input_Id).val(this.value)

			})

			$($input_Id).focusout(
					function() {

						var select_length = $($select_Id + " option").length;

						for (var y = 0; y < select_length; y++) {

							if ($($select_Id).get(0).options[y].value == $(
									"#" + id + "_input").val()) {
								$($select_Id).get(0).options[y].selected = true;
								break;
							} else {
								$($select_Id).get(0).options[0].selected = true;
							}
						}

					})

		},
		show : function() {

		},
		hide : function() {

		},
		update : function(content) {

		}
	};

	$.fn.selectPlugin = function(method) {

		if (methods[method]) {
			return methods[method].apply(this, Array.prototype.slice.call(
					arguments, 1));
		} else if (typeof method === 'object' || !method) {
			return methods.init.apply(this, arguments);
		} else {
			$.error('エラー ' + method
					+ '、jQuery.selectPluginに見つかりませんでした');
		}

	};

})(jQuery);