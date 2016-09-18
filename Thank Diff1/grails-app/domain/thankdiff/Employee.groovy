package thankdiff

class Employee  {
    String empId
    String empName
    String userName
    String password        // plain text, not stored
   // String confirmPwd         // plain text, not stored
   // String passwordHashed
    String role
    String aUid
    String emailId
    int rewardPoint

    static mapping = {
        version false

    }

    static constraints = {
        empId(nullable:false, unique: true)
        userName(blank:false, nullable:false)
        emailId(blank:false, nullable:false, unique: true)
        password(blank:false, password:true)
        role(inList:["admin", "user"])

    }

    def beforeInsert={
        password=password.encodeAsSHA()
    }


}
