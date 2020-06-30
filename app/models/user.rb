class User < ApplicationRecord

    validates :name,{presence: true}
    validates :email,{presence: true}
    validates :icon_url,{presence: true}
    validates :password,{presence: true}

end
