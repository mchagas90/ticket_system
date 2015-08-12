class RefactoryPropriedadeUser < ActiveRecord::Migration
  def change
    rename_column(:users, :senha, :password)
  end
end
