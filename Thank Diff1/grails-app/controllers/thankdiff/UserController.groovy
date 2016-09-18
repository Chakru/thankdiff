package thankdiff

class UserController {
    def index={
        redirect(action: "login")
    }
    def login = {

    }
    def authenticate = {
        def user =User.findByUsernameAndPassword(params.username,params.password)

        if (user) {
            if (user.role == "user") {
                session.user = user //admin
                flash.message = "Hello ${user.username}!"
                //redirect(controller: "race", action: "list")
                redirect(action: "Home_Non_Approver")
                render "Welcome to User Page"
            }else if(user.role=="admin"){
                session.user = user //admin
                flash.message = "Hello ${user.username}!"
                //redirect(controller: "race", action: "list")
                redirect(action: "Home_Approver")
                //render "Welcome to Admin Page"
            }
        } else {
            flash.message =
                    "Invalid Username or Password"
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



}
