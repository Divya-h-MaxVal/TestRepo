({
	// Your renderer method overrides go here
	render : function(cmp, helper) {
    var ret = this.superRender();
    return ret;
    console.log("render called");
},
 
 rerender : function(cmp, helper){
    this.superRerender();
    console.log("rerender called");
},
    
    afterRender: function (component, helper) {
    this.superAfterRender();
        console.log("afterrender called");
    // interact with the DOM here
},
    
    unrender: function () {
    this.superUnrender();
        console.log("unrender called");
    // do custom unrendering here
},
 
})