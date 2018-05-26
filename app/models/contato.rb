class Contato < ApplicationRecord
    validates :whats, uniqueness: true
    validates_presence_of :nome, message: 'Ops. O nome do contato deve ser preenchido'
end
