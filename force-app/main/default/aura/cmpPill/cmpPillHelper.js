({
    searchProductHelper : function(component,searchWord,arrSelectedProds) {
        var action = component.get("c.searchProduct");
        action.setParams({'searchWord' : searchWord});
        action.setCallback(this, $A.getCallback(function(response){
            var state = response.getState();
            var result = response.getReturnValue();
            if(state === 'SUCCESS')
            {
                	//alert(state);
                    component.set("v.isShowResult", true);
                    component.find("InputSelectSingle").set('v.options',result);
                    //alert('result is'+result);
            }
            
            else{
                alert('something is wrong');
            }
            
        }));
        $A.enqueueAction(action);
    },
    
    getSelectedProdHelper : function(component,selectedProdId){
        var action = component.get("c.getSelectedProd");
        action.setParams({'prodIds' : selectedProdId});
        action.setCallback(this,$A.getCallback(function(response){
            var state = response.getState();
            var result = response.getReturnValue();
            if(state === 'SUCCESS'){
                component.set("v.lstSelectedProd",response.getReturnValue());
                //alert(selectedProdId);
            }
            else{
                alert('something is wrong');
            }
        }));
        
        $A.enqueueAction(action);
    }
})