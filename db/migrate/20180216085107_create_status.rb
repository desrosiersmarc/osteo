class CreateStatus < ActiveRecord::Migration[5.1]

  StatusType.create(id: 5, name: 'Re-annulé')
end
