class ChangeLegalWeightToBeFloatInFishes < ActiveRecord::Migration[6.0]
  def change
    change_column :fish, :legal_weight, :float
  end
end
