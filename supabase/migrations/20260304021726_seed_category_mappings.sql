-- Seed default category mappings for Up Bank categories.
-- These map Up Bank's flat category IDs to a grouped parent/child hierarchy
-- with icons and display order. Without these, the budget, activity, home,
-- and AI categorization features cannot display or organize transactions.
--
-- Uses ON CONFLICT to be safe for databases that already have mappings
-- (e.g. from the demo seed script).

INSERT INTO public.category_mappings (up_category_id, new_parent_name, new_child_name, icon, display_order) VALUES
  ('groceries', 'Food & Dining', 'Groceries', '🛒', 1),
  ('rent-and-mortgage', 'Housing & Utilities', 'Rent & Mortgage', '🏠', 2),
  ('utilities', 'Housing & Utilities', 'Utilities', '💡', 3),
  ('internet', 'Housing & Utilities', 'Internet', '🌐', 4),
  ('home-insurance-and-rates', 'Housing & Utilities', 'Rates & Insurance', '📋', 5),
  ('homeware-and-appliances', 'Housing & Utilities', 'Homeware & Appliances', '🪑', 6),
  ('home-maintenance-and-improvements', 'Housing & Utilities', 'Maintenance & Improvements', '🔧', 7),
  ('pets', 'Pets', 'Pets', '🐾', 8),
  ('restaurants-and-cafes', 'Food & Dining', 'Restaurants & Cafes', '🍽️', 9),
  ('takeaway', 'Food & Dining', 'Takeaway', '🥡', 10),
  ('pubs-and-bars', 'Entertainment & Leisure', 'Pubs & Bars', '🍺', 11),
  ('booze', 'Food & Dining', 'Booze', '🍷', 12),
  ('holidays-and-travel', 'Entertainment & Leisure', 'Holidays & Travel', '✈️', 13),
  ('hobbies', 'Entertainment & Leisure', 'Hobbies', '🎨', 14),
  ('tv-and-music', 'Entertainment & Leisure', 'TV, Music & Streaming', '📺', 15),
  ('games-and-software', 'Entertainment & Leisure', 'Apps, Games & Software', '🎮', 16),
  ('events-and-gigs', 'Entertainment & Leisure', 'Events & Gigs', '🎟️', 17),
  ('tobacco-and-vaping', 'Entertainment & Leisure', 'Tobacco & Vaping', '🚬', 18),
  ('lottery-and-gambling', 'Entertainment & Leisure', 'Lottery & Gambling', '🎰', 19),
  ('adult', 'Entertainment & Leisure', 'Adult', '🔞', 20),
  ('health-and-medical', 'Personal Care & Health', 'Health & Medical', '🏥', 21),
  ('fitness-and-wellbeing', 'Personal Care & Health', 'Fitness & Wellbeing', '💪', 22),
  ('hair-and-beauty', 'Personal Care & Health', 'Hair & Beauty', '💇', 23),
  ('clothing-and-accessories', 'Personal Care & Health', 'Clothing & Accessories', '👕', 24),
  ('gifts-and-charity', 'Gifts & Charity', 'Gifts & Charity', '🎁', 25),
  ('education-and-student-loans', 'Family & Education', 'Education & Student Loans', '📚', 26),
  ('mobile-phone', 'Technology & Communication', 'Mobile Phone', '📱', 27),
  ('technology', 'Technology & Communication', 'Technology', '💻', 28),
  ('life-admin', 'Financial & Admin', 'Life Admin', '📎', 29),
  ('news-magazines-and-books', 'Entertainment & Leisure', 'News, Magazines & Books', '📰', 30),
  ('investments', 'Financial & Admin', 'Investments', '📈', 31),
  ('family', 'Family & Education', 'Children & Family', '👶', 32),
  ('fuel', 'Transportation', 'Fuel', '⛽', 33),
  ('parking', 'Transportation', 'Parking', '🅿️', 34),
  ('public-transport', 'Transportation', 'Public Transport', '🚌', 35),
  ('car-insurance-and-maintenance', 'Transportation', 'Car Insurance, Rego & Maintenance', '🚗', 36),
  ('car-repayments', 'Transportation', 'Repayments', '💰', 37),
  ('taxis-and-share-cars', 'Transportation', 'Taxis & Share Cars', '🚕', 38),
  ('toll-roads', 'Transportation', 'Tolls', '🛣️', 39),
  ('cycling', 'Transportation', 'Cycling', '🚴', 40)
ON CONFLICT (up_category_id) DO UPDATE SET
  new_parent_name = EXCLUDED.new_parent_name,
  new_child_name = EXCLUDED.new_child_name,
  icon = EXCLUDED.icon,
  display_order = EXCLUDED.display_order;
