({
	getBeer : function(component,page) {
        var search = window.location.hash.substr(1);
        page = page||1;
        var a =component.get("c.searchBarMethod");
        a.setParams({
      		"searchKey": search,
            "minAlc": this.minAlc, 
            "page": page
    	});
        
        a.setCallback(this,function(a)
        {
            var result = a.getReturnValue();
            console.log('result is'+result.products);
            component.set("v.beer", result.products);
            component.set("v.page", result.page);
            component.set("v.total", result.total);
            component.set("v.pages", Math.ceil(result.total/12));
                      
                      });
        
        $A.enqueueAction(a);
        
		
	}
})