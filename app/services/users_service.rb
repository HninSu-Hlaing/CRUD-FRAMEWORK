class UsersService
    class << self
        def listAll
            @users = UsersRepository.listAll
        end
        def createUser(user)
            isSaveUser = UsersRepository.createUser(user)
        end
        def findUserById(id)
            @users = UsersRepository.findUserById(id)
        end
        def updateUser(id,user_form)
            @user = UsersRepository.findUserById(id)
            isUpdateUser = UsersRepository.updateUser(@user,user_form)
        end
        def deleteUser(id)
            @users = UsersRepository.findUserById(id)
            UsersRepository.deleteUser(@users)
        end
    end
end