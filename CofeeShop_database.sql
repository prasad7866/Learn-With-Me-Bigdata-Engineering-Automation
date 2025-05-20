ALTER TABLE recipe
ADD CONSTRAINT fk_recipe_order
FOREIGN KEY (row_id) REFERENCES orders(row_id);