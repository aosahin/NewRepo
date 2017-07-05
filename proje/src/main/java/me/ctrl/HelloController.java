package me.ctrl;


import me.connector.MySqlCon;
import me.models.Form;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HelloController {
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String printWelcome(ModelMap model) {


        return "index";

    }

    @RequestMapping(value = "/ekle", method = RequestMethod.POST)
    public String ekleresponse(Form form, ModelMap model) throws ClassNotFoundException {
        System.out.println("geldi");
       model.addAttribute("info", "mesaj1");
       MySqlCon dbAdd=new MySqlCon();
       Form v_form=form.get_validated();


        try{
            if(!form.formHata){
                String dbMessage=dbAdd.addTable(form);
                model.addAttribute("bilgi", dbMessage);}
            if(form.formHata){
                model.addAttribute("type", "danger");
                model.addAttribute("allert", "YANLIŞ:");
            }else
            {model.addAttribute("type", "info");
                model.addAttribute("allert", "BİLGİ:");}

           model.addAttribute("message", v_form.message);
        } catch(Exception ex){
            model.addAttribute("message", "hata oluştu işleminiz geçersizdir");
            ex.printStackTrace();

        }

        return "index";

    }


}
