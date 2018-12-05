class ChangeServiceDefaultValueInMachines < ActiveRecord::Migration[5.1]
  def change
    change_column_default :machines, :service, 'Installation & Training'
  end
end
