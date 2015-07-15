<%@ page contentType="text/html;charset=UTF-8" %>
<div data-role="panel" data-position="right" data-position-fixed="true" data-display="overlay" data-theme="a" id="add-form">
<script>
$(function() {
    $('#execute').click(function(){
    	alert("123");
    	var form_data = {
    			id: $("#id").val(),
    			pw: $("#pw").val(),
    		};
        $.ajax({
            url:'loginProcess.web',
            type: "POST",
            data: form_data,
            success:function(data){
            	if(data.indexOf("success")>-1){
            		$('#logind').hide();
            		$('#logoutd').show();
            	}else{
            		$('#logind').show();
            		$('#logoutd').hide();
            	}
            }
        })
    })
});
</script>
        <form class="userform">

        	<h2>Login</h2>

            <label for="name">UserId:</label>
            <input type="text" name="id" id="id" value="" data-clear-btn="true" data-mini="true">

            <label for="password">Password:</label>
            <input type="password" name="pw" id="pw" value="" data-clear-btn="true" autocomplete="off" data-mini="true">

            <div class="ui-grid-a" id="logind" style="display:block">
                <div class="ui-block-a"><a href="#" data-rel="close" class="ui-btn ui-shadow ui-corner-all ui-btn-b ui-mini">Cancel</a></div>
                <div class="ui-block-b"><a href="#" data-rel="close" class="ui-btn ui-shadow ui-corner-all ui-btn-a ui-mini"  id="execute">login</a></div>
			</div>
			<div class="ui-grid-a" id="logoutd" style="display:none">
                <div class="ui-block-a"><a href="#" data-rel="close" class="ui-btn ui-shadow ui-corner-all ui-btn-b ui-mini">Cancel</a></div>
                <div class="ui-block-b"><a href="#" data-rel="close" class="ui-btn ui-shadow ui-corner-all ui-btn-a ui-mini"  id="execute">logout</a></div>
			</div>
        </form>
</div>