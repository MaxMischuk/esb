//Определение переменных
ПустойИдентификатор = "00000000-0000-0000-0000-000000000000";

//Получение тела сообщения
xdtoОбъект = сшпОбщегоНазначения.ПолучитьОбъектXDTO(ФорматСообщения, ОбъектСообщение.Body);

//Поиск объекта
ЗначениеДляПоиска = Новый УникальныйИдентификатор(xdtoОбъект.Ссылка);
СсылкаНаЭлемент = Справочники.Организации.ПолучитьСсылку(ЗначениеДляПоиска);

новыйОбъект = СсылкаНаЭлемент.ПолучитьОбъект();
Если новыйОбъект = Неопределено тогда
		новыйОбъект = Справочники.Организации.СоздатьЭлемент();
		новыйОбъект.УстановитьСсылкуНового(СсылкаНаЭлемент);
КонецЕсли;


////////////////////////////////////////////////////////////////////////////////
//Реквизиты шапки

//Наименование
новыйОбъект.Наименование = xdtoОбъект.Получить("Наименование");

//Код
новыйОбъект.Код = xdtoОбъект.Получить("Код");

//ВалютныйУчет
новыйОбъект.ВалютныйУчет = xdtoОбъект.Получить("ВалютныйУчет");


//Запись объекта
новыйОбъект.ДополнительныеСвойства.Вставить("СШПНеобрабатывать", Истина);
новыйОбъект.Записать();
