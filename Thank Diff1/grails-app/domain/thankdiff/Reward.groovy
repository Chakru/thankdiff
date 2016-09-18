package thankdiff

class Reward {
    String employeeId
    String employeeName
    String createDate
    String rewardToUid
    String rewardToName
    String rewardRecieveDate
    String rewardFromUid
    String approverMail
    String reason
    int rewardPoint

    static constraints = {
        rewardToUid(blank:true, nullable:true)
        rewardToName(blank:true, nullable:true)
        rewardRecieveDate(blank:true, nullable:true)
        rewardFromUid(blank:true, nullable:true)
    }
}
