package thankdiff

import java.text.SimpleDateFormat
import thankdiff.Reward

class EmployeeController {
    def index={
        redirect(action: "login")
    }
    def login = {

    }
    def authenticate = {
        def user = Employee.findByEmailIdAndPassword(params.emailId,params.password.encodeAsSHA())

        if (user) {
            if(user.getRole().equalsIgnoreCase("user")){
                session.user = user
             flash.message = "Username: ${user.empName}  Employee ID: ${user.empId} Reward Points :${user.rewardPoint} "
                println("EMP Name : ${user.empName}")
                println("EMP ID : ${user.empId}")
                println("Reward Point : ${user.rewardPoint}")
                def EmpName="${user.empName}"
                def EmpID="${user.empId}"
                def RewardPoint="${user.rewardPoint}"
                [EMPNAME:EmpName,EMPID:EmpID,REWARDPOINT:RewardPoint]
            /* def list = Employee.executeQuery("select employee_id, reward_point from employee where emialId=${user.emailId}")
                def usr = list[0]
                def employee_id = usr[0]
                def reward_point = usr[1]
*/

                redirect(  action: "Home_Non_Approver")


            }else if(user.role=="admin"){
                session.user = user
                flash.message = "Hello ${user.userName}!"
                redirect(action: "Home_Approver")

            }
        } else {
            flash.message ="Invalid Username or Password"
            redirect(action: "login")
        }
    }

    def Home_Non_Approver ={

    }


    def Home_Approver={

    }

    def ForgotPassword={
        redirect(controller: "resetPassword", action: "reset_password_info")
        //redirect(action: "reset_password_info")
    }

    def register = {

    }

    def save={
        Employee u=new Employee(params)
        def date = new Date()
        def sdf = new SimpleDateFormat("MM/dd/yyyy")
        def currentDate= sdf.format(date)

        if(u.getRole().equalsIgnoreCase("user")){
            u.setaUid("001")
            u.setRewardPoint(100)

        }
        else
            u.setaUid("002")
      // u.save(failOnError:true)
        u.save()


        //session.setAttribute(u.getEmpId())
        redirect(controller: "Reward", action: "rewardSave", params: [empId: u.getEmpId(), empName: u.getEmpName(), rewardPoint: u.getRewardPoint()])

    }

    def giveRewards={

        redirect(controller: "Reward", action: "rewardNominate")
    }


}
