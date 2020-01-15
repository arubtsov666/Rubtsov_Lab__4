package Model;

import java.util.ArrayList;

public class Model {
    private static Model instance = new Model();

    private ArrayList<Contact> personArrayList;

    public static Model getInstance(){
        return instance;
    }

    private Model(){
        personArrayList = new ArrayList<Contact>();
    }

    public void addContact(Contact contact){
        personArrayList.add(contact);
    }

    public ArrayList<Contact> getContactArrayList() {
        return personArrayList;
    }
}
