part of dart_social_lib;

@Controller()
class OAuthController {
  
  OAuthController() {
    var doc = loadYaml("YAML: YAML Ain't Markup Language");
  }
  
  @RequestMapping(value: "/social/facebook/")
  String variable(req, Model model) {
      redirect++;
      return "redirect:/viewable/";
  }
}