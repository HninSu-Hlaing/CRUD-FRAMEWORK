class UsersRepository
    class << self
        def listAll
            @users = User.all
        end
        def createUser(user)
            @users = User.new(user)
            isSaveUser = @users.save
        end
        def findUserById(id)
            @users = User.find(id)
        end
        def updateUser(user,user_form)
            isUpdateUser = user.update(user_form)
        end
        def deleteUser(user)
            user.destroy
        end
    end
end