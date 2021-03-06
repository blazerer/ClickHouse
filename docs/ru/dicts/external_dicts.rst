.. _dicts-external_dicts:

***************
Внешние словари
***************

Существует возможность подключать собственные словари из различных источников данных. Источником данных для словаря может быть локальный текстовый/исполняемый файл, HTTP(s) ресурс или другая СУБД. Подробнее смотрите в разделе ":ref:`dicts-external_dicts_dict_sources`".

ClickHouse может полностью или частично хранить словари в оперативной памяти, периодически обновлять их и динамически подгружать отсутствующие значения.

Конфигурация внешних словарей находится в одном или нескольких файлах. Путь к конфигурации указывается в параметре :ref:`server_settings-dictionaries_config`.

Периодически ClickHouse обновляет конфигурацию словарей и словари. Т.о. словари можно подгружать динамически.

Словари могут загружаться при старте сервера или при первом использовании, в зависимости от настройки :ref:`server_settings-dictionaries_lazy_load`.

Конфигурационный файл словарей имеет вид:

.. code-block:: xml

  <dictionaries>
      <comment>Необязательный элемент с любым содержимым. Полностью игнорируется.</comment>
  
      <dictionary>
          <!-- Конфигурация словаря -->
      </dictionary>

      ...

      <dictionary>
          <!-- Конфигурация словаря -->
      </dictionary>
  </dictionaries>

В одном файле можно :ref:`сконфигурировать <dicts-external_dicts_dict>` произвольное количество словарей. Формат файла сохраняется даже если словарь один (т.е. ``<dictionaries><dictionary> <!--configuration--> </dictionary></dictionaries>``).

Смотрите также ":ref:`ext_dict_functions`" .

.. attention:: Вы можете преобразовать значения по небольшому словарю, описав его в запросе ``SELECT`` (см. функцию ":ref:`other_functions-transform`"). Эта функциональность не связана с внешними словарями.

.. toctree::
    :glob:
   
    external_dicts_dict*
