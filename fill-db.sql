
      TRUNCATE users, categories, articles, article_categories, comments RESTART IDENTITY;
      INSERT INTO users(first_name, last_name, email, password_hash, avatar) VALUES
      ('Иван', 'Иванов', 'ivanov@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'avatar1.jpg'),
('Пётр', 'Петров', 'petrov@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'avatar2.jpg');
      INSERT INTO categories(title) VALUES
      ('Деревья'),
('За жизнь'),
('Без рамки'),
('Разное'),
('IT'),
('Музыка'),
('Кино'),
('Программирование'),
('Железо');
      ALTER TABLE articles DISABLE TRIGGER ALL;
      INSERT INTO articles(title, picture, announce, full_text, created_at, user_id) VALUES
      ('Лучшие рок-музыканты 20-века', 'sea@1x.jpg', 'Он написал больше 30 хитов. Простые ежедневные упражнения помогут достичь успеха.', 'Золотое сечение — соотношение двух величин, гармоническая пропорция. Помните, небольшое количество ежедневных упражнений лучше, чем один раз, но много. Этот смартфон — настоящая находка. Большой и яркий экран, мощнейший процессор — всё это в небольшом гаджете. Программировать не настолько сложно, как об этом говорят. Альбом стал настоящим открытием года. Мощные гитарные рифы и скоростные соло-партии не дадут заскучать. Он написал больше 30 хитов.', '2021-05-10T19:06:55.778Z', '2'),
('Рок — это протест', 'sea@1x.jpg', 'Программировать не настолько сложно, как об этом говорят. Ёлки — это не просто красивое дерево. Это прочная древесина. Золотое сечение — соотношение двух величин, гармоническая пропорция.', 'Рок-музыка всегда ассоциировалась с протестами. Так ли это на самом деле? Он написал больше 30 хитов. Из под его пера вышло 8 платиновых альбомов. Простые ежедневные упражнения помогут достичь успеха. Вы можете достичь всего. Стоит только немного постараться и запастись книгами.', '2021-04-14T21:31:26.711Z', '2'),
('Борьба с прокрастинацией', 'forest@1x.jpg', 'Альбом стал настоящим открытием года. Мощные гитарные рифы и скоростные соло-партии не дадут заскучать.', 'Собрать камни бесконечности легко, если вы прирожденный герой. Вы можете достичь всего. Стоит только немного постараться и запастись книгами. Как начать действовать? Для начала просто соберитесь. Ёлки — это не просто красивое дерево. Это прочная древесина. Процессор заслуживает особого внимания. Он обязательно понравится геймерам со стажем. Помните, небольшое количество ежедневных упражнений лучше, чем один раз, но много. Альбом стал настоящим открытием года. Мощные гитарные рифы и скоростные соло-партии не дадут заскучать. Игры и программирование разные вещи. Не стоит идти в программисты, если вам нравятся только игры. Достичь успеха помогут ежедневные повторения. Из под его пера вышло 8 платиновых альбомов. Освоить вёрстку несложно. Возьмите книгу новую книгу и закрепите все упражнения на практике. Он написал больше 30 хитов. Простые ежедневные упражнения помогут достичь успеха. Золотое сечение — соотношение двух величин, гармоническая пропорция. Первая большая ёлка была установлена только в 1938 году. Это один из лучших рок-музыкантов. Программировать не настолько сложно, как об этом говорят. Бороться с прокрастинацией несложно. Просто действуйте. Маленькими шагами. Этот смартфон — настоящая находка. Большой и яркий экран, мощнейший процессор — всё это в небольшом гаджете.', '2021-05-10T19:06:55.779Z', '2'),
('Лучшие рок-музыканты 20-века', 'sea@1x.jpg', 'Из под его пера вышло 8 платиновых альбомов. Простые ежедневные упражнения помогут достичь успеха. Освоить вёрстку несложно. Возьмите книгу новую книгу и закрепите все упражнения на практике. Ёлки — это не просто красивое дерево. Это прочная древесина.', 'Этот смартфон — настоящая находка. Большой и яркий экран, мощнейший процессор — всё это в небольшом гаджете.', '2021-04-18T20:13:40.165Z', '1'),
('Как собрать камни бесконечности', 'sea@1x.jpg', 'Освоить вёрстку несложно. Возьмите книгу новую книгу и закрепите все упражнения на практике. Бороться с прокрастинацией несложно. Просто действуйте. Маленькими шагами. Собрать камни бесконечности легко, если вы прирожденный герой. Первая большая ёлка была установлена только в 1938 году.', 'Из под его пера вышло 8 платиновых альбомов. Ёлки — это не просто красивое дерево. Это прочная древесина. Рок-музыка всегда ассоциировалась с протестами. Так ли это на самом деле? Первая большая ёлка была установлена только в 1938 году. Вы можете достичь всего. Стоит только немного постараться и запастись книгами.', '2021-04-23T11:10:29.094Z', '2'),
('Рок — это протест', 'skyscraper@1x.jpg', 'Рок-музыка всегда ассоциировалась с протестами. Так ли это на самом деле?', 'Бороться с прокрастинацией несложно. Просто действуйте. Маленькими шагами.', '2021-05-03T05:42:11.060Z', '2'),
('Лучшие рок-музыканты 20-века', 'sea@1x.jpg', 'Он написал больше 30 хитов.', 'Бороться с прокрастинацией несложно. Просто действуйте. Маленькими шагами. Простые ежедневные упражнения помогут достичь успеха. Альбом стал настоящим открытием года. Мощные гитарные рифы и скоростные соло-партии не дадут заскучать. Процессор заслуживает особого внимания. Он обязательно понравится геймерам со стажем. Он написал больше 30 хитов. Ёлки — это не просто красивое дерево. Это прочная древесина. Рок-музыка всегда ассоциировалась с протестами. Так ли это на самом деле? Золотое сечение — соотношение двух величин, гармоническая пропорция. Помните, небольшое количество ежедневных упражнений лучше, чем один раз, но много. Вы можете достичь всего. Стоит только немного постараться и запастись книгами. Достичь успеха помогут ежедневные повторения. Собрать камни бесконечности легко, если вы прирожденный герой. Игры и программирование разные вещи. Не стоит идти в программисты, если вам нравятся только игры. Первая большая ёлка была установлена только в 1938 году. Это один из лучших рок-музыкантов. Освоить вёрстку несложно. Возьмите книгу новую книгу и закрепите все упражнения на практике.', '2021-04-23T03:41:21.002Z', '1'),
('Борьба с прокрастинацией', 'forest@1x.jpg', 'Первая большая ёлка была установлена только в 1938 году.', 'Первая большая ёлка была установлена только в 1938 году. Альбом стал настоящим открытием года. Мощные гитарные рифы и скоростные соло-партии не дадут заскучать. Он написал больше 30 хитов. Программировать не настолько сложно, как об этом говорят. Процессор заслуживает особого внимания. Он обязательно понравится геймерам со стажем. Освоить вёрстку несложно. Возьмите книгу новую книгу и закрепите все упражнения на практике. Золотое сечение — соотношение двух величин, гармоническая пропорция. Бороться с прокрастинацией несложно. Просто действуйте. Маленькими шагами. Рок-музыка всегда ассоциировалась с протестами. Так ли это на самом деле? Вы можете достичь всего. Стоит только немного постараться и запастись книгами. Как начать действовать? Для начала просто соберитесь. Помните, небольшое количество ежедневных упражнений лучше, чем один раз, но много. Достичь успеха помогут ежедневные повторения. Это один из лучших рок-музыкантов.', '2021-05-03T08:41:08.054Z', '1'),
('Что такое золотое сечение', 'sea@1x.jpg', 'Достичь успеха помогут ежедневные повторения. Рок-музыка всегда ассоциировалась с протестами. Так ли это на самом деле? Как начать действовать? Для начала просто соберитесь.', 'Освоить вёрстку несложно. Возьмите книгу новую книгу и закрепите все упражнения на практике. Первая большая ёлка была установлена только в 1938 году. Процессор заслуживает особого внимания. Он обязательно понравится геймерам со стажем. Программировать не настолько сложно, как об этом говорят. Альбом стал настоящим открытием года. Мощные гитарные рифы и скоростные соло-партии не дадут заскучать. Он написал больше 30 хитов. Ёлки — это не просто красивое дерево. Это прочная древесина. Из под его пера вышло 8 платиновых альбомов. Это один из лучших рок-музыкантов. Рок-музыка всегда ассоциировалась с протестами. Так ли это на самом деле?', '2021-04-09T09:11:58.091Z', '2'),
('Рок — это протест', 'sea@1x.jpg', 'Простые ежедневные упражнения помогут достичь успеха. Это один из лучших рок-музыкантов.', 'Бороться с прокрастинацией несложно. Просто действуйте. Маленькими шагами. Как начать действовать? Для начала просто соберитесь. Рок-музыка всегда ассоциировалась с протестами. Так ли это на самом деле? Золотое сечение — соотношение двух величин, гармоническая пропорция.', '2021-05-05T13:19:56.345Z', '1');
      ALTER TABLE articles ENABLE TRIGGER ALL;
      ALTER TABLE article_categories DISABLE TRIGGER ALL;
      INSERT INTO article_categories(article_id, category_id) VALUES
      (1, '1'),
(2, '4'),
(2, '2'),
(2, '3'),
(2, '5'),
(2, '1'),
(2, '7'),
(2, '8'),
(2, '9'),
(3, '2'),
(3, '5'),
(3, '7'),
(3, '9'),
(4, '1'),
(4, '6'),
(4, '2'),
(4, '3'),
(4, '4'),
(4, '9'),
(4, '8'),
(4, '7'),
(5, '5'),
(5, '1'),
(5, '7'),
(5, '2'),
(6, '2'),
(6, '6'),
(7, '3'),
(7, '7'),
(7, '1'),
(7, '9'),
(7, '4'),
(7, '8'),
(7, '2'),
(7, '6'),
(8, '6'),
(8, '1'),
(8, '4'),
(8, '7'),
(8, '2'),
(8, '8'),
(9, '6'),
(9, '7'),
(10, '6'),
(10, '9');
      ALTER TABLE article_categories ENABLE TRIGGER ALL;
      ALTER TABLE comments DISABLE TRIGGER ALL;
      INSERT INTO COMMENTS(article_id, user_id, created_at, text) VALUES
      (3, 1, '2021-04-04T21:42:56.973Z', 'Согласен с автором!'),
(1, 1, '2021-05-10T11:24:49.748Z', 'Согласен с автором! Совсем немного... Плюсую, но слишком много буквы!'),
(3, 2, '2021-05-02T00:22:48.774Z', 'Совсем немного... Плюсую, но слишком много буквы!'),
(2, 1, '2021-05-10T19:06:55.778Z', 'Планируете записать видосик на эту тему? Совсем немного...'),
(2, 2, '2021-04-06T14:04:08.406Z', 'Давно не пользуюсь стационарными компьютерами. Ноутбуки победили. Это где ж такие красоты?'),
(1, 2, '2021-04-27T08:44:46.463Z', 'Давно не пользуюсь стационарными компьютерами. Ноутбуки победили.'),
(3, 2, '2021-05-05T02:59:54.848Z', 'Давно не пользуюсь стационарными компьютерами. Ноутбуки победили.'),
(1, 1, '2021-03-13T02:01:38.427Z', 'Это где ж такие красоты? Совсем немного...'),
(3, 1, '2021-04-30T17:45:51.187Z', 'Давно не пользуюсь стационарными компьютерами. Ноутбуки победили. Согласен с автором! Совсем немного...'),
(2, 1, '2021-05-06T17:26:15.632Z', 'Совсем немного... Давно не пользуюсь стационарными компьютерами. Ноутбуки победили.'),
(3, 2, '2021-05-10T19:06:55.779Z', 'Плюсую, но слишком много буквы!'),
(1, 1, '2021-03-21T09:25:24.043Z', 'Это где ж такие красоты? Совсем немного...'),
(2, 1, '2021-04-13T00:10:43.933Z', 'Мне не нравится ваш стиль. Ощущение, что вы меня поучаете. Мне кажется или я уже читал это где-то?'),
(1, 1, '2021-04-14T01:31:01.889Z', 'Планируете записать видосик на эту тему? Давно не пользуюсь стационарными компьютерами. Ноутбуки победили. Это где ж такие красоты?'),
(1, 2, '2021-04-27T20:15:06.289Z', 'Давно не пользуюсь стационарными компьютерами. Ноутбуки победили. Мне кажется или я уже читал это где-то? Плюсую, но слишком много буквы!'),
(3, 2, '2021-04-21T14:08:40.272Z', 'Согласен с автором! Плюсую, но слишком много буквы! Хочу такую же футболку :-)'),
(3, 2, '2021-05-10T19:06:55.779Z', 'Плюсую, но слишком много буквы! Согласен с автором! Хочу такую же футболку :-)'),
(1, 1, '2021-05-09T02:55:28.836Z', 'Это где ж такие красоты? Мне не нравится ваш стиль. Ощущение, что вы меня поучаете.'),
(1, 2, '2021-04-29T12:36:49.568Z', 'Совсем немного...'),
(3, 2, '2021-05-09T22:48:29.465Z', 'Совсем немного... Плюсую, но слишком много буквы! Мне не нравится ваш стиль. Ощущение, что вы меня поучаете.'),
(2, 2, '2021-04-21T20:04:37.651Z', 'Совсем немного... Мне не нравится ваш стиль. Ощущение, что вы меня поучаете.'),
(1, 1, '2021-04-20T22:41:37.564Z', 'Это где ж такие красоты? Планируете записать видосик на эту тему?'),
(3, 1, '2021-05-10T19:06:55.779Z', 'Планируете записать видосик на эту тему? Согласен с автором! Совсем немного...'),
(1, 1, '2021-04-18T15:45:38.214Z', 'Согласен с автором! Хочу такую же футболку :-) Давно не пользуюсь стационарными компьютерами. Ноутбуки победили.'),
(3, 2, '2021-03-26T07:50:56.403Z', 'Это где ж такие красоты? Согласен с автором! Планируете записать видосик на эту тему?'),
(3, 2, '2021-05-10T19:06:55.779Z', 'Давно не пользуюсь стационарными компьютерами. Ноутбуки победили.'),
(3, 2, '2021-05-02T17:59:08.150Z', 'Давно не пользуюсь стационарными компьютерами. Ноутбуки победили.'),
(3, 1, '2021-03-14T19:11:21.526Z', 'Давно не пользуюсь стационарными компьютерами. Ноутбуки победили.'),
(3, 2, '2021-05-10T19:06:55.779Z', 'Хочу такую же футболку :-) Мне не нравится ваш стиль. Ощущение, что вы меня поучаете.'),
(1, 1, '2021-03-12T20:28:00.017Z', 'Мне кажется или я уже читал это где-то? Мне не нравится ваш стиль. Ощущение, что вы меня поучаете.'),
(1, 2, '2021-05-10T19:06:55.779Z', 'Согласен с автором! Мне кажется или я уже читал это где-то? Совсем немного...'),
(1, 1, '2021-04-04T05:16:02.221Z', 'Совсем немного...'),
(1, 2, '2021-05-10T19:06:55.779Z', 'Согласен с автором!'),
(2, 1, '2021-05-05T09:56:09.456Z', 'Планируете записать видосик на эту тему? Согласен с автором! Плюсую, но слишком много буквы!'),
(3, 2, '2021-05-10T19:06:55.779Z', 'Планируете записать видосик на эту тему?'),
(2, 1, '2021-05-10T19:06:55.779Z', 'Согласен с автором! Планируете записать видосик на эту тему?'),
(1, 2, '2021-05-05T06:23:14.872Z', 'Планируете записать видосик на эту тему? Плюсую, но слишком много буквы! Давно не пользуюсь стационарными компьютерами. Ноутбуки победили.'),
(2, 2, '2021-05-10T13:45:57.760Z', 'Планируете записать видосик на эту тему?'),
(1, 1, '2021-05-10T19:06:55.779Z', 'Это где ж такие красоты? Мне не нравится ваш стиль. Ощущение, что вы меня поучаете. Хочу такую же футболку :-)'),
(2, 1, '2021-04-11T04:01:47.181Z', 'Согласен с автором! Это где ж такие красоты? Мне не нравится ваш стиль. Ощущение, что вы меня поучаете.'),
(1, 1, '2021-04-24T19:29:22.906Z', 'Это где ж такие красоты? Планируете записать видосик на эту тему?'),
(1, 2, '2021-05-03T07:30:22.477Z', 'Плюсую, но слишком много буквы! Совсем немного... Согласен с автором!'),
(3, 2, '2021-05-10T19:06:55.779Z', 'Планируете записать видосик на эту тему? Согласен с автором! Давно не пользуюсь стационарными компьютерами. Ноутбуки победили.'),
(1, 1, '2021-04-16T03:08:21.542Z', 'Согласен с автором!'),
(1, 2, '2021-05-09T03:51:14.078Z', 'Это где ж такие красоты?'),
(2, 2, '2021-05-08T09:40:56.989Z', 'Планируете записать видосик на эту тему?'),
(3, 1, '2021-05-10T19:06:55.779Z', 'Мне кажется или я уже читал это где-то? Планируете записать видосик на эту тему? Хочу такую же футболку :-)'),
(1, 1, '2021-03-30T11:41:47.508Z', 'Мне кажется или я уже читал это где-то? Мне не нравится ваш стиль. Ощущение, что вы меня поучаете. Это где ж такие красоты?'),
(1, 1, '2021-05-08T00:33:50.024Z', 'Совсем немного... Мне не нравится ваш стиль. Ощущение, что вы меня поучаете. Давно не пользуюсь стационарными компьютерами. Ноутбуки победили.'),
(1, 1, '2021-04-13T19:13:36.252Z', 'Согласен с автором! Планируете записать видосик на эту тему? Это где ж такие красоты?'),
(1, 1, '2021-05-10T19:06:55.779Z', 'Мне кажется или я уже читал это где-то? Плюсую, но слишком много буквы! Согласен с автором!'),
(2, 2, '2021-05-10T19:06:55.779Z', 'Совсем немного...'),
(3, 2, '2021-04-28T02:46:37.013Z', 'Планируете записать видосик на эту тему?'),
(1, 1, '2021-04-27T13:56:04.072Z', 'Планируете записать видосик на эту тему? Согласен с автором! Совсем немного...'),
(2, 1, '2021-04-03T09:58:59.973Z', 'Плюсую, но слишком много буквы! Мне кажется или я уже читал это где-то?'),
(2, 2, '2021-04-15T06:55:37.429Z', 'Планируете записать видосик на эту тему? Плюсую, но слишком много буквы!'),
(2, 1, '2021-04-12T09:07:37.160Z', 'Мне кажется или я уже читал это где-то?'),
(1, 1, '2021-04-11T03:38:57.178Z', 'Согласен с автором! Хочу такую же футболку :-)'),
(1, 1, '2021-04-01T22:40:35.732Z', 'Мне кажется или я уже читал это где-то? Согласен с автором!'),
(3, 1, '2021-05-10T19:06:55.779Z', 'Мне не нравится ваш стиль. Ощущение, что вы меня поучаете.');
      ALTER TABLE comments ENABLE TRIGGER ALL;
    