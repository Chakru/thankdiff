package thankdiff

class Registration {

    // properties
    String EmpId
    String UserName
    String password        // plain text, not stored
    String confirm         // plain text, not stored
    String passwordHashed
    String role
    String AUID
    String Email


    // transients
    static transients = ['password', 'confirm']

    // constraints
    static constraints = {
        userName(blank:false)
        email(blank:false,email:true)
        role(inList:["admin", "user"])
        password  blank:false, size:5..15, matches:/[\S]+/, validator:{ val, obj ->
            if (obj.password != obj.confirm)
                return 'user.password.dontmatch'
        }
    }
}
