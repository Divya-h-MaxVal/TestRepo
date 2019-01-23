({
	delFunc : function(component, event, helper) {
		
        var l = component.get("v.ContInnerList");
        var curSize = parseInt((l.size));
        //var decSize = parseInt((curSize.size)-1);
        if(curSize > -1)
        {
            l.pop();
        }
        component.set("v.ContInnerList",l);
	}
})