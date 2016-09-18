package thankdiff

import java.text.SimpleDateFormat

class RewardController {

    def Home_Non_Approver ={
        def allNames = Employee.list()
        [allNames:allNames]

    }

    def rewardSave = {

        def rempId = params.empId
        def rempName = params.empName
        def rrewardPoint = params.rewardPoint

        Reward r = new Reward(params)
        def date = new Date()
        def sdf = new SimpleDateFormat("MM/dd/yyyy")
        def currentDate= sdf.format(date)
        r.setEmployeeId(rempId)
        r.setEmployeeName(rempName)
        r.setCreateDate(currentDate)
        r.setRewardToUid(null)
        r.setRewardToName(null)
        r.setRewardRecieveDate(null)
        r.setRewardFromUid(null)
        r.setRewardPoint(100)

        r.save(failOnError:true)
        render "Success!!!!!"
    }


}
