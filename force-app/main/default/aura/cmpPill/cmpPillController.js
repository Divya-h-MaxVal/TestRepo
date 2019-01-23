({
	searchProdController : function(component, event, helper) {
		var searchWord = component.find("textSearchProd").get("v.value");
        var arrSelectedProds = component.get("v.arrSelectedProdId");
        helper.searchProductHelper(component,searchWord,arrSelectedProds);
	},
    
    getSelectedProdController : function(component, event, helper) {
		var selectedProdId = event.getSource().get("v.value");
        //alert(event.getSource().get("v.value"));
        var arrSelectedProdId = component.get("v.arrSelectedProdId");
        var arrSelectedProdId =[];
        arrSelectedProdId.push(selectedProdId);
        component.set("v.arrSelectedProdId",arrSelectedProdId)
        component.set("v.isShowResult",false);
        helper.getSelectedProdHelper(component,component.get("v.arrSelectedProdId"));
        component.find("textSearchProd").set("v.value",'');
        component.find("textSearchProd").focus();
	},
    
    removeSelectedProdController : function(component, event, helper){
        var selectedProdId = event.getParam('item').name;
        var items = component.get("v.lstSelectedProd");
        var item = event.getParam('index');
        alert(item + items);
        items.splice(item,1);
        component.set("v.lstSelectedProd",items);
        
    },
})