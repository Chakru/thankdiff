package thankdiff

class RegistrationController {
    def index={
        redirect(action: "register")

    }

    def register = {
        // new user posts his registration details
        if (request.method == 'POST') {
            // create domain object and assign parameters using data binding
            def u = new Employee(params)
            u.passwordHashed = u.password.encodeAsPassword()
            if (!u.save()) {
                // validation failed, render registration page again
                return [Employee: u]
            } else {
                // validate/save ok, store user in session, redirect to homepage
                if(u.getRole().equalsIgnoreCase("user"))
                {
                    u.setRole("001")
                }
                else
                    u.setRole("002")
                session.employee = u
                redirect(action: 'main')
            }
        } else if (session.user) {
            // don't allow registration while user is logged in
            redirect(controller: 'main')
        }
    }
    def save={
        Employee u=new Employee(params)
    }

}