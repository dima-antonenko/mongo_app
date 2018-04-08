class Post
  include Mongoid::Document

  include Mongoid::Attributes::Dynamic # разная структура полей у каждой записи
  include Mongoid::Denormalize # не обязательно
  include Cck::Cckable # подключение cck forms

  field :city,  type: CckForms::ParameterTypeClass::String


    # GENERATED CODE START
    configure_cck do
      category id: 'hookah',
               title: 'Кальян'

      add_parameter id: :hookah_misc,
                    type: :checkboxes,
                    valid_values: {'tea_card' => 'чайная карта', 'coffee_card' => 'кофейная карта', 'draft_beer' => 'разливное пиво',
                                   'wine_map' => 'винная карта', 'cocktails' => 'коктейли'},
                    title: 'Особенности'
    end




end