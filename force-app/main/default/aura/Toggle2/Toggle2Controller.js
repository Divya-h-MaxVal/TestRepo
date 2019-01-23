({
	firstToggle : function(component, event, helper) {
		var checkBox = document.getElementById("one");
        alert('static is selected');
	},
    
    secondToggle : function(component,event,helper){
        var a = document.getElementById("two");
        alert('dynamic is selected');
    },
})