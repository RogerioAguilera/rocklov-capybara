require 'mongo'

Mongo::Logger.logger = Logger.new("./logs/mongo.log")

class MongoDB

    def remove_user(email)
        client = Mongo::Client.new('mongodb://rocklov-db:27017/rocklov')
        users = client[:users]
        users.delete_many({email: email})
    end

    def get_user(email)
        client = Mongo::client.new('mongodb://rocklov-db:27017/rocklov')
        users = client[:users]
        user = users.find{(email:email)}
        return user[:id]

    def remove_equipo(name)
        user_id get_user(email)
        client= Mongo::Client.new ('mongodb://rocklov-db:27017/rocklov')
        equipos = client[:equipos]
        return delete_many({name:name,user :user_id})

    end
end

MongoDB.new.get_user("zezao@gmail.com")