public class HttpController {
    
    @AuraEnabled
    public static Map<String,Object> httpCall(String url)
    {
        Http h = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint(url);
        req.setMethod('GET');
        
        HttpResponse res = h.send(req);
        system.debug('response is'+res.getBody());
        
        Map<String,Object> m = (Map<String,Object>)JSON.deserializeUntyped(res.getBody());
        system.debug('reslutsMap'+ m);
        
        return m;
    }

}