part of dart_social_lib;

@Controller()
class OAuthController {
  
  var appId = "";
  
  OAuthController() {
    var doc = loadYaml("clientId: ");
  }
  
  @RequestMapping(value: "/social/facebook/")
  String variable(req, Model model, @RequestParam(value: "redirectUri", defaultValue: "/") redirectUri) {
      //var  "https://www.facebook.com/dialog/oauth?client_id={app-id}&redirect_uri={redirect-uri}";
      var redirectUri = "http://localhost:8080/social/facebook/redirected/";
      var state = "rnd";

      return "redirect:https://www.facebook.com/dialog/oauth?client_id=$appId&redirect-uri=$redirectUri&state=$state";
  }
  
  @RequestMapping(value: "/social/facebook/redirected/")
  String redirected(req, Model model, @RequestParam(value: "redirectUri", defaultValue: "/") redirectUri) {
    
    return "index";
  }
}