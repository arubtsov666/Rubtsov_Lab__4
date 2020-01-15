package Model;


public class User {

    private static User instance = new User();

    private String password = "admin";
    public Boolean authStatus;

    public static User getInstance(){
        return instance;
    }

    public User(){
        authStatus = false;
    }

    public void checkAuth(String password){
        if(this.password.equals(password)){
            authStatus = true;
        }
    }
}
