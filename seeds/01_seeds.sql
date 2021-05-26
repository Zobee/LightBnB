INSERT INTO users(name, email, password)
  VALUES 
  ('Jim', 'jimjam@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
  ('Bill', 'dollaBill@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
  ('Sarah', 'smalls@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
  ('Amanda', 'amanduh@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, 
                        cover_photo_url, country, street, city, province, post_code, active)
  VALUES 
    (1, 'Roach Motel', 'description', 'https://www.pexels.com/photo/concrete-house-during-day-2079234/',
    'https://www.pexels.com/photo/concrete-house-during-day-2079234/', 'Canada', '123 Real Ave', 'Vancouver', 'BC', 'A5A5A5', TRUE),
    (1, 'Bachelor Pad', 'description', 'https://www.pexels.com/photo/concrete-house-during-day-2079234/',
    'https://www.pexels.com/photo/concrete-house-during-day-2079234/', 'Canada', '123 Single Street', 'Toronto', 'ON', 'D2D2D2', FALSE),
    (3, 'Beach House', 'description', 'https://www.pexels.com/photo/concrete-house-during-day-2079234/',
    'https://www.pexels.com/photo/concrete-house-during-day-2079234/', 'Canada', '123 Beach Rd', 'Montreal', 'QB', 'H0N0H0', TRUE),
    (4, 'Rustic Cottage', 'description', 'https://www.pexels.com/photo/concrete-house-during-day-2079234/',
    'https://www.pexels.com/photo/concrete-house-during-day-2079234/', 'Canada', '123 Forest Pk', 'Vancouver', 'BC', 'A5A5A5', TRUE);

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
  VALUES
    (NOW(), '2021-08-09', 1, 3),
    (NOW(), '2023-10-19', 3, 1),
    (NOW(), '2022-02-12', 4, 2),
    (NOW(), '2022-10-11', 2, 4);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
  VALUES
    (3, 1, 1, 3, 'False advertizing. No roaches.'),
    (1, 3, 2, 5, 'description'),
    (2, 4, 3, 4, 'description'),
    (4, 2, 4, 4, 'description');