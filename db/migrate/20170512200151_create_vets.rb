class CreateVets < ActiveRecord::Migration[5.0]
  def change
    create_table :vets do |t|
      t.string :vet_name
      t.text :about
      t.string :website
      t.string :facebook
      t.string :twitter
      t.string :linkedin
      t.references :office, foreign_key: true

      t.timestamps
    end
    add_index :vets, [:office_id, :created_at]
  end
end

