(function($) {

	var methods = {

		init : function(id, json, bool, inputFlg) {

			$id = id;
			var select_cd = "";
			var select_values = "";
			var select_data = "";

			for (var i = 0, l = json.length; i < l; i++) {

				for ( var key in json[i]) {
					if (key.indexOf("Nm") < 0) {
						select_cd = json[i][key];

					} else if (key.indexOf("Nm") > 0) {
						select_values = json[i][key];
					}

				}
				select_data = "<option value= " + select_values + ">"
						+ select_cd + "</option>" + select_data;

			}

			$("#" + id).append(
					"<select id='" + id + "_select'>" + "<option value=''>"
							+ select_data + "</select>");
			
			
			if(inputFlg!==false){
				var inp = "<input type='text' id='" + id + "_input'/>";
				$("#" + id).append(inp);
			}

			var $select_Id = "#" + id + "_select";
			var $input_Id = "#" + id + "_input";

			if (!bool) {
				$($input_Id).attr("disabled", "disabled");
			}

			$($select_Id).change(function() {

				$($input_Id).val(this.value)

			})

			$($input_Id)
					.focusout(
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
		getValue : function(id) {

			var input_value = "";
			input_value = $("#" + id + "_input").val();
			return input_value;

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
			$.error('エラー ' + method + '、jQuery.selectPluginに見つかりませんでした');
		}

	};

})(jQuery);