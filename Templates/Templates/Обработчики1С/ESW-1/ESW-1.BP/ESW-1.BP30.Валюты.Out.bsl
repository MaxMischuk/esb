РезультатОбработки.ClassId = 53;

Данные = Новый Структура;
Данные.Вставить("Ссылка", ОбъектОбработки.Ссылка);
Данные.Вставить("ПометкаУдаления", ОбъектОбработки.ПометкаУдаления);
Данные.Вставить("Наименование", ОбъектОбработки.Наименование);
Данные.Вставить("Код", ОбъектОбработки.Код);

РезультатОбработки.Body = сшпОбщегоНазначения.ПреобразоватьСтруктуруПоФормату(ФорматСообщения, Данные);
