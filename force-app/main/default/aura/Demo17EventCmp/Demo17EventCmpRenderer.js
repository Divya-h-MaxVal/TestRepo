({
    render : function(cmp, helper) {
        var ret = this.superRender();
        // do custom rendering here
        return ret;
        console.log("render method called");
    },
    
    rerender : function(cmp, helper){
        this.superRerender();
            console.log("rerender method called");
        // do custom rerendering here
    },
    
    afterRender: function (component, helper) {
        this.superAfterRender();
                console.log("afterrender method called");
        // interact with the DOM here
    },
})