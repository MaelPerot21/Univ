package gestionVille;

public class Test {

    public static void main(String[] args) {
        Vehicule car1 = new Vehicule(3000, 100, "RT-945-GO", 4);
        
        Vehicule car_test1 = new Vehicule(1,56,null,2);
        Vehicule car_test2 = new Vehicule(1,184,null,2);
        Vehicule car_test3 = new Vehicule(1,26,null,2);
        Vehicule car_test4 = new Vehicule(1,1647,null,2);

        Logement flat_test1 = new Logement(1,184,1,2);
        Logement flat_test2 = new Logement(1,100,1,1);
        Logement flat_test3 = new Logement(1,40,40,6);
        Logement flat_test4 = new Logement(1,7000,100,1);

        Bien[] town_goods = {car1, car_test1, car_test2, car_test3, car_test4, flat_test1, flat_test2, flat_test3, flat_test4};
        Ville new_town = new Ville(town_goods);
        System.out.println(new_town.getEntretienCourantMensuel());
    }
}
