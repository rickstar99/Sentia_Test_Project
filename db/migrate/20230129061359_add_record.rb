class AddRecord < ActiveRecord::Migration[7.0]
  def change

    create_table :people do |t|
      t.string :Name
    end
    
    create_table :locations do |t|
      t.string :Name
    end

    create_table :affiliations do |t|      
      t.string :Name
    end

    create_join_table :people, :locations do |t|
    t.index :location_id
    end

    create_join_table :people, :affiliations do |t|
      t.index :affiliation_id
    end

  end
end