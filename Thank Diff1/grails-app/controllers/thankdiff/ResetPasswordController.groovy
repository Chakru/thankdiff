package thankdiff


class ResetPasswordController {

    def notifireService

    def reset_password_info={

    }
    def SendPasswordByEmail={
        if (params.emailId) {
            Employee user = Employee.findByEmailId(params.emailId)
            if (user) {
                session.user = user
                flash.message = "${user.emailId}"
                notifireService.contactUser(params.emailId)
                redirect(action: "Reset_password_Email")


            }else if (!user) {
                session.user = user
                flash.message = "Your Email Id is Not Registered"
                redirect(action: "reset_password_info")
            }


        }


    }
    def Reset_password_Email={


    }

    def reset_password= {

    }
    def resetPassword= {
       /* User usr = User.findByUsername(params.username)
        def id=usr.getId()
        def user = User.get(id)
        user.username = (params.username)
        user.password = (params.password).toString()
        user.save(flush: true)
        //render "Updated"
        flash.message = "Your Password has been Changed Successfully.please login here"
        redirect(controller: "user", action: "login")
*/
        /*  def user = User.findByUsername(params.username)
              user.executeUpdate(
                 "update user set password= ${params.password} where username = ${user.username}"
         )*/
        //render "updated"


        /*   def user = User.get(3)
               user.username = (params.username)
               user.password = (params.password).toString()
               user.save(flush: true)
               render "Updated"*/
    }







}
