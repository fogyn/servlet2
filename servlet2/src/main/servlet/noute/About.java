package noute;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class About implements Serializable {

    private Map<String, String> mapAbout = new HashMap<>();
    public About() {
        mapAbout.put("name", "Lenovo Group Limited");
        mapAbout.put("country", "Пекине (КНР)");
        mapAbout.put("logo", "https://upload.wikimedia.org/wikipedia/commons/6/6d/Lenovo_Logo.svg");
        mapAbout.put("logo2", "../img/Lenovo_Logo.png");
        mapAbout.put("numPeople", "52 000");
        mapAbout.put("text", "китайская транснациональная корпорация, выпускающая персональные компьютеры и другую" +
                " электронику. Является крупнейшим производителем персональных компьютеров в мире с долей на рынке" +
                " более 20 %, а также занимает пятое место по производству мобильных телефонов.");

    }

    public Map<String, String> getMapAbout() {

        return mapAbout;
    }

    public void setMapAbout(Map<String, String> mapAbout) {
        this.mapAbout = mapAbout;
    }
}
