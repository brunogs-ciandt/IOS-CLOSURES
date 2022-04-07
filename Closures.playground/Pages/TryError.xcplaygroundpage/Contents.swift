import Darwin

enum error: Error {
    case wronglogin
    case wrongpassword
    case fatalerror
    
}

func login(user:String, password:String) throws -> Bool {
    if user != "user" && password != "123" {
        throw error.fatalerror
    }
    if user != "user" {
       throw error.wronglogin
    }
    
    if password != "123" {
       throw error.wrongpassword
    }
    return true
}

var data: [(name: String, password: String)] = [(name: "user", password: "123" ),(name: "user1", password: "123" ), (name: "user", password: "1234" ), (name: "user1", password: "1234" )]

for (name,password) in data {

do {
    var result = try login(user: name, password: password)
       print(result)
    }
    catch error.fatalerror {
        print("fatal error")
    }
    catch error.wronglogin {
        print("login error")
    }
    catch error.wrongpassword {
        print("password error")
    }
}
 


