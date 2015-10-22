$(document).ready(function() {

    $('p').mouseup(function(event) {
    	console.log("HIT");
    	event.preventDefault();
        var currentLine = $(this).parent();
        var data = getSelectedText();
        $.ajax({

			method: "GET",
			url: '/display_text',
			data: data

		})

		.done(function(response){	
			var currentDiv = $('#show-highlighted-word')
			if(typeof currentDiv !== undefined){
				$('#show-highlighted-word').remove();
				appendToCurrentLine(currentLine, response);
				// $('#sidebar').html("");
				// $('#sidebar').prepend(data)
				var definition = $('.col-150').html();
				var pinyin = $('.col-100').html();
				var caption = "<div id='sidebar-caption'>"+pinyin+"<br>"+definition+"</div>"
				$('#sidebar').prepend(data+caption);
				// $('#sidebar').append("<div id='sidebar-caption'>"+definition+"</div>");
			}else{
				appendToCurrentLine(currentLine, response);
			}
			$('body').on('click', 'a.hide-button', function(event){
				event.preventDefault();
				$('#show-highlighted-word').remove();
			})
			// $('body').on('click', 'a.add-to-study-list', function(event){
			// 	event.preventDefault();
			// 	$('#show-highlighted-word').remove();
			$('document').click(function(event){
				$('#show-highlighted-word').remove();
			})
			$.ajax({

				method: "GET",
				url: '/add_to_study_list',
				data: getSelectedText()

			})

			.done(function(response){
				console.log("Added to study list");
			})
		})
		
		.fail(function(){
			if(typeof $('#show-highlighted-word') !== undefined){
				$('#show-highlighted-word').remove();
			}
		});
	})
});// end docReady

// function removeVocab() {
// 	$('#show-highlighted-word').remove();
// }

function first_call(){
	$.ajax({

			method: "GET",
			url: '/display_text',
			data: getSelectedText()

	})
}

function appendToCurrentLine(cl, res) {
	$(cl).append(res);
}

function getSelectedText() {
    if (window.getSelection) {
        return window.getSelection().toString();
    } else if (document.selection) {
        return document.selection.createRange().text;
    } 
    return '';
}
