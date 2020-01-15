package Model;

public class Contact {

    public String name;
    public String surname;
    public String lastname;
    public String birthday;
    public String gender;
    public String phone;
    public String email;
    public String job;
    public String positions;
    public Boolean is_favorite;

    public Contact( String name, String surname, String lastname, String birthday, String gender, String phone, String email,
                   String job, String positions,Boolean is_favorite )
    {
        this.name = name;
        this.surname = surname;
        this.lastname = lastname;
        this.birthday = birthday;
        this.gender = gender;
        this.phone = phone;
        this.email = email;
        this.job =job;
        this.positions = positions;
        this.is_favorite=is_favorite;
    }
}
