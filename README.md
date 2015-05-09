Задача: Cделать каталог товаров с страницей просмотра товара 

Приложение сторим на основе RestAPI. На backend’e используем RubyOnRails на frontend’e 

AngularJS. Весь каталог работает как single page application

1. Модели

1. Товар (имя, описание, цена)

2. Роутинг

1. root = каталог товаров с навигацией по страницам

2. /:item-alias -> вывод товара с ценой

3. Технологии

1. Frontend

1. CoffeeScript

2. Angular

3. angular-ui-router

4. Slim

2. Backend

1. Rails

2. AR

3. RestAPI (будет плюсом inherited_resource)

4. + Rake task for database fixtures generation

Верстку делать не нужно. Можно использовать Twitter Bootstrap

Подсказки на нашем репозитории: 

- https://github.com/Rademade/rails-angular-project-template

- https://github.com/Rademade/rademade-cookbook