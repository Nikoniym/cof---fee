RailsAdmin.config do |config|

config.excluded_models = ['Secondtab', 'Oldwiner']

 config.main_app_name = 'Coffee'


 config.model Champ  do
  parent Cup
      include_all_fields
             label "Финалист" 
  label_plural "Финалисты"

  edit do

       field :title do
         label "Название"
         end
          field :logo do
         label "Логотип"
         delete_method  :delete_logo
         end

           field :pic do
         label "Изображение"
         delete_method  :delete_pic
         end

         field :name_1 do
         label "Имя участника 1"
         end

         field :name_2 do
         label "Имя участника 2"
         end

         field :name_3 do
         label "Имя участника 3"
         end

  end

    list do
          field :title do
         label "Название"
         end
          field :logo do
         label "Логотип"
         end

           field :pic do
         label "Изображение"
         end

         field :name_1 do
         label "Имя участника 1"
         end

         field :name_2 do
         label "Имя участника 2"
         end

         field :name_3 do
         label "Имя участника 3"
         end
  end

end


config.model CityFaq  do
  parent City
      include_all_fields
             label "FAQ города" 
  label_plural "FAQ городов"

  edit do
       field :question do
         label "Вопрос"
         end
          field :answer do
         label "Ответ"
         end

           field :city do
         label "Название"
         end

  end

    list do
       field :question do
         label "Вопрос"
         end
          field :answer do
         label "Ответ"
         end

      field :updated_at do
        label "Обновлено"
      end

      field :created_at do
        label "Создано"
      end
  end

end


config.model ContactPage  do

      include_all_fields
             label "Контакт" 
  label_plural "Контакты"

  edit do

           field :page_title do
         label "Заголовок страницы"
         end

         field :page_title_seo do
         label "Заголовок страницы (seo)"
         end

         field :keywords_seo do
         label "Заголовок ключевые слова (seo)"
         end

         field :description_seo do
         label "Описание (seo)"
         end

  end

  list do

             field :page_title_seo do
         label "Заголовок страницы (seo)"
         end

         field :keywords_seo do
         label "Заголовок ключевые слова (seo)"
         end

         field :description_seo do
         label "Описание (seo)"
         end

    field :updated_at do
        label "Обновлено"
      end

      field :created_at do
        label "Создано"
      end

           field :page_title do
         label "Заголовок страницы"
         end

  end

end






config.model Contact  do
      parent ContactPage
      include_all_fields
             label "Контакт (сотр)" 
  label_plural "Контакты (сотр)"

  edit do

           field :name do
         label "Имя"
         end

         field :work do
         label "Должность"
         end

         field :phone_1 do
         label "Телефон 1"
         end

         field :phone_2 do
         label "Телефон 2"
         end

         field :mail do
         label "Почта"
         end

         field :avatar do
         label "Аватар"
         delete_method  :delete_avatar
         end

  end

  list do

           field :name do
         label "Имя"
         end

         field :work do
         label "Должность"
         end

         field :phone_1 do
         label "Телефон 1"
         end

         field :phone_2 do
         label "Телефон 2"
         end

         field :mail do
         label "Почта"
         end

         field :avatar do
         label "Аватар"
         end

  end

end









config.model Link do

  include_all_fields
  label "Ссылки"
  label_plural "Ссылки"


  list do
    field :facebook do
      label "Ссылка facebook"
    end
    field :vkontakte do
      label "Ссылка vkontakte"
    end

    field :instagram do
      label "Ссылка instagram"
    end

    field :email do
      label "Почта оповещения о подписках"
    end
    field :bay_ticket do
      label "Ссылка на покупку билета"
    end
  end

  edit do
    field :facebook do
      label "Ссылка facebook"
    end
    field :vkontakte do
      label "Ссылка vkontakte"
    end

    field :instagram do
      label "Ссылка instagram"
    end

    field :email do
      label "Почта оповещения о подписках"
    end
    field :bay_ticket do
      label "Ссылка на покупку билета"
    end
  end

end



config.model AboutPage  do
 
      include_all_fields
             label "Об организаторе" 
  label_plural "Об организаторе"


          list do

                     field :page_title_seo do
         label "Заголовок страницы (seo)"
         end

         field :keywords_seo do
         label "Заголовок ключевые слова (seo)"
         end

         field :description_seo do
         label "Описание (seo)"
         end

            field :updated_at do
        label "Обновлено"
      end

      field :created_at do
        label "Создано"
      end
          field :page_title do
         label "Заголовок страницы"
         end

      
         field :side_pic do
         label "Изображение сбоку"
         end

         field :side_pic_2 do
         label "Изображение сбоку 2"
         end

         field :logo do
         label "Логотип"
         end

         field :logo_2 do
         label "Логотип 2"
         end

         field :bottm_pic do
         label "Изображение снизу"
         end

         field :bottm_pic_2 do
         label "Изображение снизу 2"
         end

         field :bottm_pic_3 do
         label "Изображение снизу 3"
         end

         field :some_text, :ck_editor do
         label "Текст"
         end

         field :some_text_2, :ck_editor do
         label "Текст 2"
         end

       end

        edit do

          field :page_title_seo do
         label "Заголовок страницы (seo)"
         end

         field :keywords_seo do
         label "Заголовок ключевые слова (seo)"
         end

         field :description_seo do
         label "Описание (seo)"
         end
          field :page_title do
         label "Заголовок страницы"
         end

      
         field :side_pic do
         label "Изображение сбоку"
         delete_method  :delete_side_pic
         end

         field :side_pic_2 do
         label "Изображение сбоку 2"
         delete_method  :delete_side_pic_2
         end

         field :logo do
         label "Логотип"
         delete_method  :delete_logo
         end

         field :logo_2 do
         label "Логотип 2"
         delete_method  :delete_logo_2
         end

         field :bottm_pic do
         label "Изображение снизу"
         delete_method  :delete_bottm_pic
         end

         field :bottm_pic_2 do
         label "Изображение снизу 2"
         delete_method  :delete_bottm_pic_2

         end

         field :bottm_pic_3 do
         label "Изображение снизу 3"
         delete_method  :delete_bottm_pic_3

         end

         field :some_text, :ck_editor do
         label "Текст"
         end

         field :some_text_2, :ck_editor do
         label "Текст 2"
         end

       end

end





config.model Oldwiner  do
parent Cup
      include_all_fields
             label "Победители прош. лет" 
  label_plural "Победители прош. лет"

      edit do
          field :title do
         label "Название"
         end

      
         field :avatar do
         label "Изображение"
         delete_method  :delete_avatar
         end

       end

             list do
          field :title do
         label "Название"
         end

    
         field :avatar do
         label "Изображение"
         end

         field :updated_at do
        label "Обновлено"
      end

      field :created_at do
        label "Создано"
      end
       end

end












config.model Partner  do

      include_all_fields
             label "Партнер" 
  label_plural "Партнеры"

      edit do
        field :num do
         label "№(стр. Главная)"
         end
        field :fest_num do
         label "№(стр. Festival)"
         end
         field :award_num do
         label "№(стр. Awards)"
         end
        field :city_num do
         label "№(стр.Города)"
         end
        field :main_page do
         label "На Главную"
         end
         field :fest_page do
         label "На Фест"
         end
         field :award_page do
         label "На Награды"
         end
          field :link do
         label "Ссылка"
         end

         field :city, :enum do
         label "Город"
         enum_method do
           :city_enum
         end
         multiple do
           true
         end
         end

         field :body do
         label "Описание"
         end
         field :avatar do
         label "Изображение"
         delete_method  :delete_avatar
         end
       end

             list do
              field :num do
         label "№(стр. Главная)"
         end
              field :fest_num do
         label "№(стр. Festival)"
         end
         field :award_num do
         label "№(стр. Awards)"
         end
              field :city_num do
         label "№(стр.Города)"
         end
              field :main_page do
         label "На Главную"
         end
         field :fest_page do
         label "На Фест"
         end
         field :award_page do
         label "На Награды"
         end
          field :city, :enum  do
            enum_method do
              :city_enum
            end


         label "Город"
         end
          field :link do
         label "Ссылка"
         end

         field :body do
         label "Описание"
         end
         field :avatar do
         label "Изображение"
         end

         field :updated_at do
        label "Обновлено"
      end

      field :created_at do
        label "Создано"
      end
       end

end


config.model Coffeehouse  do
  parent FestPage
      include_all_fields
             label "Кофейня" 
  label_plural "Кофейни"

      edit do
          field :link do
         label "Ссылка"
         end

         field :body do
         label "Описание"
         end
         field :avatar do
         label "Изображение"
         delete_method  :delete_avatar
         end
         exclude_fields :pic
       end

             list do
          field :link do
         label "Ссылка"
         end

         field :body do
         label "Описание"
         end
         field :avatar do
         label "Изображение"
         end

         field :updated_at do
        label "Обновлено"
      end

      field :created_at do
        label "Создано"
      end
       end

end

config.model Banner  do
  label "Банер"
  label_plural "Банеры"

  edit do
    field :link do
      label "Ссылка"
    end

    field :position do
      label "Позиция"
    end

    field :image_vertical do
      delete_method  :delete_image_vertical
      label "Банер 200х400"
    end

    field :image_horizontal do
      delete_method  :delete_image_horizontal
      label "Банер 200х100"
    end

    field :image_square do
      delete_method  :delete_image_square
      label "Банер 200х200"
    end

    field :main_page do
      label "Главная страница"
    end

    field :fest_page do
      label "Страница фестиваля"
    end

    field :award_page do
      label "Страница чемпионата"
    end

    field :cup_page do
      label "Страница премий"
    end

    field :news_page do
      label "Страница новостей"
    end

    field :gallery_page do
      label "Страница галереи"
    end

    field :organizers_page do
      label "Об организаторе"
    end

    field :contact_page do
      label "Страница контактов"
    end
  end

  list do
    sort_by :position

    field :link do
      label "Ссылка"
    end

    field :position do
      label "Позиция"
    end

    field :image_vertical do
      label "Вертикальное изображение"
    end

    field :image_horizontal do
      label "Горизонтальное изображение"
    end

    field :image_square do
      label "Квадратное изображение"
    end

    field :main_page do
      label "Главная страница"
    end

    field :fest_page do
      label "Страница фестиваля"
    end

    field :award_page do
      label "Страница чемпионата"
    end

    field :cup_page do
      label "Страница премий"
    end

    field :news_page do
      label "Страница новостей"
    end

    field :gallery_page do
      label "Страница галереи"
    end

    field :organizers_page do
      label "Об организаторе"
    end

    field :contact_page do
      label "Страница контактов"
    end
  end
end

config.model Member  do
  parent FestPage
      include_all_fields
             label "Участник" 
  label_plural "Участники"

      edit do

          field :link do
         label "Ссылка"
         end

         field :body do
         label "Описание"
         end
         field :avatar do
         label "Изображение"
         delete_method  :delete_avatar
         end
       end

             list do
          field :link do
         label "Ссылка"
         end

         field :body do
         label "Описание"
         end
         field :avatar do
         label "Изображение"
         end

         field :updated_at do
        label "Обновлено"
      end

      field :created_at do
        label "Создано"
      end
       end

end




config.model Firsttab  do
  parent FestPage
      include_all_fields
             label "Закладка" 
  label_plural "Закладки"

    edit do
          field :title do
         label "Дата"
         end

         field :events do
         label "Расписание"
         end
  end
      list do
          field :title do
         label "Дата"
         end

         field :events do
         label "Расписание"
         end

      field :updated_at do
        label "Обновлено"
      end

      field :created_at do
        label "Создано"
      end
  end

end







config.model Map  do
  parent FestPage

             label "Карта" 
  label_plural "Карты"

  edit do
    field :name_1 do
         label "Имя"
         end
         field :name_2 do
         label "Имя 2"
         end
         field :type_of_shit do
         label "Тип заведения"
         end
         field :name_3 do
         label "Имя 3"
         end
          field :title do
         label "Название"
         end
          field :avatar do
           label "Аватар"
           delete_method  :delete_avatar
         end
         field :picture do
         label "Изображение"
         delete_method  :delete_picture
         end
  end

    list do
      field :type_of_shit do
         label "Тип заведения"
         end
      field :name_1 do
         label "Имя"
         end
         field :name_2 do
         label "Имя 2"
         end
         field :name_3 do
         label "Имя 3"
         end
          field :title do
         label "Название"
         end
          field :avatar do
         label "Аватар"
         end
         field :picture do
         label "Изображение"
         end

                        field :updated_at do
        label "Обновлено"
      end

      field :created_at do
        label "Создано"
      end
  end

end



config.model Event  do
  parent Firsttab
      # include_all_fields
             label "Расписание" 
  label_plural "Расписание"

    edit do

       field :title do
         label "Заголовок"
       end

          field :place do
         label "Место"
         end
         field :body, :ck_editor do
         label "Описание"
         end
         field :avatar do
         label "Изображение"
         delete_method  :delete_avatar
         end
         field :position do
           label "Позиция"
         end
         field :time_range do
         label "Время"
         end
         field :firsttab do
           label "Зкладка"

         end

  end

      list do
        sort_by :position

       field :title do
         label "Заголовок"
       end
        field :position do
          label "Позиция"
        end
        field :time_range do
          label "Время"
        end
        field :firsttab do
          label "Зкладка"
        end
        field :avatar do
          label "Изображение"
        end
          field :place do
         label "Место"
         end
         field :body do
         label "Описание"
         end
        field :updated_at do
        label "Обновлено"
      end

      field :created_at do
        label "Создано"
      end
  end

end



config.model Faq  do
  parent FestPage
      include_all_fields
             label "FAQ" 
  label_plural "FAQ"

  edit do
       field :question do
         label "Вопрос"
         end
          field :answer do
         label "Ответ"
         end
  end

    list do
       field :question do
         label "Вопрос"
         end
          field :answer do
         label "Ответ"
         end

      field :updated_at do
        label "Обновлено"
      end

      field :created_at do
        label "Создано"
      end
  end

end


config.model FestPage  do
  
      include_all_fields
             label "Festival" 
  label_plural "Festival"

  edit do
    field :slider_link_1 do
         label "Ссылка 1го слайда"
         end
         field :slider_link_2 do
         label "Ссылка 2го слайда"
         end
         field :slider_link_3 do
         label "Ссылка 3го слайда"
         end
             field :page_title_seo do
         label "Заголовок страницы (seo)"
         end

         field :keywords_seo do
         label "Заголовок ключевые слова (seo)"
         end

         field :description_seo do
         label "Описание (seo)"
         end
          field :page_title do
         label "Заголовок страницы"
       end

         field :some_text, :ck_editor do
         label "Текст"
       end

         field :adress do
         label "Адрес"
       end

       field :fb_link do
         label "FB ссылка"
       end
       field :vk_link do
         label "ВК ссылка"
       end

       field :first_slide_text, :text do
         label "Текст первого слайда"
      end

            field :first_slide_title do
         label "Заголовок первого слайда"
      end

                field :second_slide_title do
         label "Заголовок второго слайда"
      end

              field :second_slide_text, :text do
         label "Текст второго слайда"
      end

                    field :third_slide_title do
         label "Заголовок третьего слайда"
      end

              field :third_slide_text do
         label "Текст третьего слайда"
      end

       field :slide_1 do
         label "Первый слайд"
         delete_method  :delete_slide_1
      end

       field :slide_2 do
         label "Второй слайд"
         delete_method  :delete_slide_2
      end


        field :slide_3 do
         label "Третий слайд"
         delete_method  :delete_slide_3
      end
      exclude_fields :latitude
      exclude_fields :longitude
  end

  list do
    field :slider_link_1 do
         label "Ссылка 1го слайда"
         end
         field :slider_link_2 do
         label "Ссылка 2го слайда"
         end
         field :slider_link_3 do
         label "Ссылка 3го слайда"
         end
             field :page_title_seo do
         label "Заголовок страницы (seo)"
         end

         field :keywords_seo do
         label "Заголовок ключевые слова (seo)"
         end

         field :description_seo do
         label "Описание (seo)"
         end
          field :page_title do
         label "Заголовок страницы"
       end

         field :some_text do
         label "Текст"
       end

         field :adress do
         label "Адрес"
       end

       field :fb_link do
         label "FB ссылка"
       end
       field :vk_link do
         label "ВК ссылка"
       end

       field :first_slide_text, :text do
         label "Текст первого слайда"
      end

            field :first_slide_title do
         label "Заголовок первого слайда"
      end

                field :second_slide_title do
         label "Заголовок второго слайда"
      end

              field :second_slide_text, :text do
         label "Текст второго слайда"
      end

                    field :third_slide_title do
         label "Заголовок третьего слайда"
      end

              field :third_slide_text do
         label "Текст третьего слайда"
      end

       field :slide_1 do
         label "Первый слайд"
      end

       field :slide_2 do
         label "Второй слайд"
      end


        field :slide_3 do
         label "Третий слайд"
      end
      exclude_fields :latitude
      exclude_fields :longitude
  end

end




config.model Subscription  do
  
      include_all_fields
             label "Подписчик" 
  label_plural "Подписчики"

  list do
        

                               field :updated_at do
        label "Обновлено"
      end

                    field :created_at do
        label "Создано"
      end
  end

end




config.model GaleriePage  do
  
      include_all_fields
             label "Галерея" 
  label_plural "Галерея"

  edit do
    field :page_title_seo do
         label "Заголовок страницы (seo)"
         end

         field :keywords_seo do
         label "Заголовок ключевые слова (seo)"
         end

         field :description_seo do
         label "Описание (seo)"
         end
        field :page_title do
         label "Заголовок страницы"
       end
  end

    list do
      field :page_title_seo do
         label "Заголовок страницы (seo)"
         end

         field :keywords_seo do
         label "Заголовок ключевые слова (seo)"
         end

         field :description_seo do
         label "Описание (seo)"
         end
        field :page_title do
         label "Заголовок страницы"
       end

                               field :updated_at do
        label "Обновлено"
      end

                    field :created_at do
        label "Создано"
      end
  end

end


config.model Galerie  do
  parent GaleriePage
      include_all_fields
             label "Альбом" 
  label_plural "Альбомы"

  edit do
    field :page_title do
         label "Заголовок страницы"
    end
    field :position do
      label "Позиция"
    end
    field :page_title_seo do
         label "Заголовок страницы (seo)"
         end

         field :keywords_seo do
         label "Заголовок ключевые слова (seo)"
         end

         field :description_seo do
         label "Описание (seo)"
         end
           field :title do
         label "Название"
       end

       field :body do
         label "Описание"
       end

       field :photos do
         label "Фото"
       end
  end

    list do
      field :page_title do
         label "Заголовок страницы"
      end
      field :position do
        label "Позиция"
      end
      field :page_title_seo do
         label "Заголовок страницы (seo)"
         end

         field :keywords_seo do
         label "Заголовок ключевые слова (seo)"
         end

         field :description_seo do
         label "Описание (seo)"
         end
           field :title do
         label "Название"
       end

       field :body do
         label "Описание"
       end

       field :photos do
         label "Фото"
       end

                               field :updated_at do
        label "Обновлено"
      end

                    field :created_at do
        label "Создано"
      end
  end

end


config.model Photo  do
  parent Galerie
      include_all_fields
             label "Фотография" 
  label_plural "Фотографии"

  edit do 
                    field :galerie do
        label "Альбом"
      end
      field :avatar do
        label "Фотография"
      end
  end

    list do 
                    field :galerie do
        label "Альбом"
      end
      field :avatar do
        label "Фотография"
      end

      field :updated_at do
        label "Обновлено"
      end

                    field :created_at do
        label "Создано"
      end


  end

end







config.model Cup  do
  
      include_all_fields
             label "Coffee cup" 
  label_plural "Coffee cups"

  edit do
    field :page_title_seo do
         label "Заголовок страницы (seo)"
         end

         field :keywords_seo do
         label "Заголовок ключевые слова (seo)"
         end

         field :description_seo do
         label "Описание (seo)"
         end
    field :year do
         label "год"
         end
       field :page_title do
         label "Заголовок страницы"
       end
        field :photo_1 do
         label "Фото 1"
         delete_method  :delete_photo_1
       end

          field :photo_2 do
         label "Фото 2"
         delete_method  :delete_photo_2
       end

       field :shop_pic do
         label "Фотография л. кофейни"
         delete_method  :delete_shop_pic
       end

       field :shop_pic_2 do
         label "Фотография л. кофейни 2"
         delete_method  :delete_shop_pic_2
       end

       field :shop_logo do
         label "Логотип л. кофейни"
         delete_method  :delete_shop_logo
       end

       field :shop_title do
         label "Название л. кофейни"
       end

       field :name_1 do
         label "Имя участника"
       end

       field :name_2 do
         label "Имя участника 2"
       end

       field :name_3 do
         label "Имя участника 3"
       end

          field :photo_3 do
         label "Фото 3"
         delete_method  :delete_photo_3
       end

          field :photo_4 do
         label "Фото 4"
         delete_method  :delete_photo_4
       end

          field :some_text, :ck_editor do
         label "Текст"
       end
  end


   list do
    field :page_title_seo do
         label "Заголовок страницы (seo)"
         end

         field :keywords_seo do
         label "Заголовок ключевые слова (seo)"
         end

         field :description_seo do
         label "Описание (seo)"
         end
    field :year do
         label "год"
         end

           field :shop_pic do
         label "Фотография л. кофейни"
       end

       field :shop_pic_2 do
         label "Фотография л. кофейни 2"
       end

       field :shop_logo do
         label "Логотип л. кофейни"
       end

       field :shop_title do
         label "Название л. кофейни"
       end

       field :name_1 do
         label "Имя участника"
       end

       field :name_2 do
         label "Имя участника 2"
       end

       field :name_3 do
         label "Имя участника 3"
       end


                        field :updated_at do
        label "Обновлено"
      end

                    field :created_at do
        label "Создано"
      end
       field :page_title do
         label "Заголовок страницы"
       end
        field :photo_1 do
         label "Фото 1"
       end

          field :photo_2 do
         label "Фото 2"
       end

          field :photo_3 do
         label "Фото 3"
       end

          field :photo_4 do
         label "Фото 4"
       end

          field :some_text do
         label "Текст"
       end
  end



end


config.model AwardPage  do
 
      include_all_fields
             label "Coffee Award" 
  label_plural "Coffee Awards"

  edit do

    field :page_title_seo do
         label "Заголовок страницы (seo)"
         end

         field :keywords_seo do
         label "Заголовок ключевые слова (seo)"
         end

         field :description_seo do
         label "Описание (seo)"
         end

        field :page_title do
         label "Заголовок"
        end


         field :pic_title do
         label "Заголовок картинки"
       end

       field :pic_text do
         label "Дата на картинке"
       end

       field :some_text, :ck_editor do
         label "Текст"
       end

       field :pic do
         label "Изображение"
         delete_method  :delete_pic
       end

  end

   list do
    field :page_title_seo do
         label "Заголовок страницы (seo)"
         end

         field :keywords_seo do
         label "Заголовок ключевые слова (seo)"
         end

         field :description_seo do
         label "Описание (seo)"
         end


                            field :updated_at do
        label "Обновлено"
                            end


                    field :created_at do
        label "Создано"
      end

        field :page_title do
         label "Заголовок"
       end

         field :pic_title do
         label "Заголовок картинки"
       end

       field :pic_text do
         label "Дата на картинке"
       end

       field :some_text do
         label "Текст"
       end

       field :pic do
         label "Изображение"
       end

  end

end


config.model Award  do
  parent AwardPage
      include_all_fields
             label "Награды" 
  label_plural "Награды"

  edit do
    field :title do
         label "Название"
      end
      field :winners do
         label "Победители"
      end
      field :description do
        label "Описание"
      end
      field :num do
        label "Позиция"
      end
  end

    list do
                        field :updated_at do
        label "Обновлено"
      end

                    field :created_at do
        label "Создано"
      end

    field :title do
         label "Название"
      end
      field :winners do
         label "Победители"
      end
      field :description do
        label "Описание"
      end
      field :num do
        label "Позиция"
      end
  end

end



config.model Winner  do
  parent Award
      include_all_fields
             label "Победитель" 
  label_plural "Победители"
  edit do

 field :work do
    label "Место работы"

  end

   field :name do
    label "Имя"

  end
    field :avatar do
    label "Изображение"
    delete_method  :delete_avatar

  end
  field :award do
    label "Награда"

  end

end

    list do

 field :work do
    label "Место работы"

  end

   field :name do
    label "Имя"

  end
    field :avatar do
    label "Изображение"

  end
  field :award do
    label "Награда"

  end
    

                        field :updated_at do
        label "Обновлено"
      end

                    field :created_at do
        label "Создано"
      end

end

end



  config.model NewsPage do
           label "Coffee news" 
  label_plural "Coffee news"
  
    include_all_fields
    edit do
      field :slider_link_1 do
         label "Ссылка 1го слайда"
         end
         field :slider_link_2 do
         label "Ссылка 2го слайда"
         end
         field :slider_link_3 do
         label "Ссылка 3го слайда"
         end
      field :page_title_seo do
         label "Заголовок страницы (seo)"
         end

         field :keywords_seo do
         label "Заголовок ключевые слова (seo)"
         end

         field :description_seo do
         label "Описание (seo)"
         end

           field :page_title do
         label "Заголовок страницы"
      end


      field :first_slide_text do
         label "Текст первого слайда"
      end

            field :first_slide_title do
         label "Заголовок первого слайда"
      end

                field :second_slide_title do
         label "Заголовок второго слайда"
      end

              field :second_slide_text do
         label "Текст второго слайда"
      end

                    field :third_slide_title do
         label "Заголовок третьего слайда"
      end

              field :third_slide_text do
         label "Текст третьего слайда"
      end

       field :slide_1 do
         label "Первый слайд"
         delete_method  :delete_slide_1
      end

       field :slide_2 do
         label "Второй слайд"
         delete_method  :delete_slide_2
      end


        field :slide_3 do
         label "Третий слайд"
         delete_method  :delete_slide_3
      end





    end

        list do
          field :slider_link_1 do
         label "Ссылка 1го слайда"
         end
         field :slider_link_2 do
         label "Ссылка 2го слайда"
         end
         field :slider_link_3 do
         label "Ссылка 3го слайда"
         end
          field :page_title_seo do
         label "Заголовок страницы (seo)"
         end

         field :keywords_seo do
         label "Заголовок ключевые слова (seo)"
         end

         field :description_seo do
         label "Описание (seo)"
         end

                        field :updated_at do
        label "Обновлено"
      end

                    field :created_at do
        label "Создано"
      end

           field :page_title do
         label "Заголовок страницы"
      end


      field :first_slide_text do
         label "Текст первого слайда"
      end

            field :first_slide_title do
         label "Заголовок первого слайда"
      end

                field :second_slide_title do
         label "Заголовок второго слайда"
      end

              field :second_slide_text do
         label "Текст второго слайда"
      end

                    field :third_slide_title do
         label "Заголовок третьего слайда"
      end

              field :third_slide_text do
         label "Текст третьего слайда"
      end

       field :slide_1 do
         label "Первый слайд"
      end

       field :slide_2 do
         label "Второй слайд"
      end


        field :slide_3 do
         label "Третий слайд"
      end

    end

  end













  config.model MainPage do
           label "Главная" 
  label_plural "Главная"
  
    include_all_fields
    edit do
      field :slider_link_1 do
         label "Ссылка 1го слайда"
         end
         field :slider_link_2 do
         label "Ссылка 2го слайда"
         end
         field :slider_link_3 do
         label "Ссылка 3го слайда"
         end
      field :page_title_seo do
         label "Заголовок страницы (seo)"
         end

         field :keywords_seo do
         label "Заголовок ключевые слова (seo)"
         end

         field :description_seo do
         label "Описание (seo)"
         end

           field :page_title do
         label "Заголовок страницы"
      end


      field :first_slide_text, :text do
         label "Текст первого слайда"
      end

            field :first_slide_title do
         label "Заголовок первого слайда"
      end

                field :second_slide_title do
         label "Заголовок второго слайда"
      end

              field :second_slide_text, :text do
         label "Текст второго слайда"
      end

                    field :third_slide_title do
         label "Заголовок третьего слайда"
      end

              field :third_slide_text do
         label "Текст третьего слайда"
      end

       field :slide_1 do
         label "Первый слайд"
         delete_method  :delete_slide_1
      end

       field :slide_2 do
         label "Второй слайд"
         delete_method  :delete_slide_2
      end


        field :slide_3 do
         label "Третий слайд"
         delete_method  :delete_slide_3
      end


 exclude_fields :text



    end

        list do
          field :slider_link_1 do
         label "Ссылка 1го слайда"
         end
         field :slider_link_2 do
         label "Ссылка 2го слайда"
         end
         field :slider_link_3 do
         label "Ссылка 3го слайда"
         end
          field :page_title_seo do
         label "Заголовок страницы (seo)"
         end

         field :keywords_seo do
         label "Заголовок ключевые слова (seo)"
         end

         field :description_seo do
         label "Описание (seo)"
         end

                        field :updated_at do
        label "Обновлено"
      end

                    field :created_at do
        label "Создано"
      end

           field :page_title do
         label "Заголовок страницы"
      end


      field :first_slide_text do
         label "Текст первого слайда"
      end

            field :first_slide_title do
         label "Заголовок первого слайда"
      end

                field :second_slide_title do
         label "Заголовок второго слайда"
      end

              field :second_slide_text do
         label "Текст второго слайда"
      end

                    field :third_slide_title do
         label "Заголовок третьего слайда"
      end

              field :third_slide_text do
         label "Текст третьего слайда"
      end

       field :slide_1 do
         label "Первый слайд"
      end

       field :slide_2 do
         label "Второй слайд"
      end


        field :slide_3 do
         label "Третий слайд"
      end

    end

  end





config.model Article do

       label "Новость" 
  label_plural "Новости"
      list do
        sort_by :date_of_event
        field :title do
          label "Заголовок"
        end

        field :date_of_event do
          label "Дата"
        end

        field :avatar do
          label "Изображение"
        end

        field :position do
          label "Позиция"
        end
        field :position_main do
          label "Позиция на главной"
        end
        field :show_on_main do
          label "На главную?"
        end

        field :big do
          label "Прямоугольник?"
        end
        field :big_main do
          label "Прямоугольник на главной?"
        end
        field :short do
          label "Короткое описание"
        end
        field :page_title_seo do
         label "Заголовок страницы (seo)"
         end

         field :pic_for_a do
         label "Изображение для новости"
         end

         field :keywords_seo do
         label "Заголовок ключевые слова (seo)"
         end

         field :description_seo do
         label "Описание (seo)"
         end

        field :body do
        label "Текст"
      end

              field :updated_at do
        label "Обновлено"
      end

                    field :created_at do
        label "Создано"
      end



      end



    edit do

      field :title do
        label "Заголовок"
      end
      field :position do
        label "Позиция"
      end
      field :position_main do
        label "Позиция на главной"
      end
      field :avatar do
        label "Изображение"
        delete_method  :delete_avatar
      end
      field :short do
        label "Короткое описание"
      end

      field :pic_for_a do
         label "Изображение для новости"
         delete_method  :delete_pic_for_a
         end
      field :page_title_seo do
         label "Заголовок страницы (seo)"
         end

         field :keywords_seo do
         label "Заголовок ключевые слова (seo)"
         end

         field :description_seo do
         label "Описание (seo)"
         end


      field :date_of_event do
        label "Дата"
      end


             field :show_on_main do
        label "На главную?"
      end

       field :big do
        label "Прямоугольник?"
       end
      field :big_main do
        label "Прямоугольник на главную?"
      end

      field :body, :ck_editor do
        label "Текст"
      end

    end

  end

  config.model 'Ckeditor/Asset' do
  visible false
end














config.model City do
  parent Cup
       label "Города" 
  label_plural "Города"


    list do
      sort_by :position
      field :title do
        label "Заголовок"
      end

      field :date_range do
        label "Даты"
      end

      field :position do
        label "Позиция"
      end
      field :city_name do
        label "название города"
      end

      field :adress do
        label "Адрес"
      end
      field :page_title_seo do
         label "Заголовок страницы (seo)"
         end

         field :keywords_seo do
         label "Заголовок ключевые слова (seo)"
         end

         field :description_seo do
         label "Описание (seo)"
         end

       field :rules_link do
        label "Правила"
      end

      field :link_vk do
        label "Ссылка ВК"
      end
      field :link_fb do
        label "Ссылка FB"
      end
      field :link_doc do
        label "Ссылка doc"
      end

                     field :page_title do
        label "Заголовок страницы"
      end

                    field :updated_at do
        label "Обновлено"
      end

                    field :created_at do
        label "Создано"
      end

      field :avatar do
        label "Изображение"
      end

      field :icon do
        label "логотип города"
      end

      field :body, :ck_editor do
        label "Текст"
      end

             exclude_fields :latitude
        exclude_fields :longitude
         exclude_fields :rules
     

    end



    edit do
      field :title do
        label "Заголовок"
      end

      field :date_range do
        label "Даты"
      end

      field :city_name do
        label "название города"
      end

      field :adress do
        label "Адрес"
      end
      field :position do
        label "Позиция"
      end
      field :page_title_seo do
         label "Заголовок страницы (seo)"
         end

         field :keywords_seo do
         label "Заголовок ключевые слова (seo)"
         end

         field :description_seo do
         label "Описание (seo)"
         end

       field :rules_link do
        label "Правила"
      end

      field :link_vk do
        label "Ссылка ВК"
      end
      field :link_fb do
        label "Ссылка FB"
      end
      field :link_doc do
        label "Ссылка doc"
      end

      field :page_title do
        label "Заголовок страницы"
      end



      field :avatar do
        label "Изображение"
        delete_method  :delete_avatar
      end

      field :icon do
        label "логотип города"
        delete_method  :delete_icon
      end

        field :city_faqs do
        label "FAQ"
      end

      field :body, :ck_editor do
        label "Текст"
      end
       exclude_fields :latitude
        exclude_fields :longitude
        exclude_fields :rules

    end

  end

  config.model 'Ckeditor/Asset' do
  visible false
end






  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)
  config.authenticate_with do
    warden.authenticate! scope: :admin
  end
  config.current_user_method(&:current_admin)
  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true


  






  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
     dropzone do
      only Galerie 
    end
    export
    bulk_delete
    show
    edit
    delete do
     except ['Map']
    end
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
