package thankdiff

class User {
    String username
    String password
    String role
    static constraints = {
        username(blank:false, nullable:false, unique:true)
        password(blank:false, password:true)
        role(inList:["admin", "user"])
    }

    static transients = ['admin']
    boolean isAdmin(){
        return role == "admin"
    }

    String toString(){
        username
    }
}
