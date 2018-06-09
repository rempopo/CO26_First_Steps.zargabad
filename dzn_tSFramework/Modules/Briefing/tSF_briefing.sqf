//     tSF Briefing
// Do not modify this part
#define BRIEFING		_briefing = [];
#define TOPIC(NAME) 	_briefing pushBack ["Diary", [ NAME,
#define END			]];
#define ADD_TOPICS	for "_i" from (count _briefing) to 0 step -1 do {player createDiaryRecord (_briefing select _i);};
//
//
// Briefing goes here

BRIEFING

TOPIC("I. Обстановка:")
"Уже довольно долгое время власть поддерживаемая армией терроризирует свой народ. Города пустуют, кругом развалины и все это в то время, когда практически вся наша нефть выкачивается западом за бесценок. Большая часть населения свыклась с этим, но пора поднять народ, сегодня мы попытаемся хоть что-то изменить. Нашей целью является убийство местного офицера, отвечающего за контроль данного региона, а также необходимо освободить арестованных старейшин. Офицер сейчас находится в своей вилле, которую помимо местной армии охраняют западные наемники, старейшины в данный момент находятся там же.
<br />"
END

TOPIC("А. Враждебные силы:")
"Армия Такистана - регулярные силы
<br />        до 2 взводов.
<br />Западные наемники - регулярные силы
<br />        около 2 отделений.
<br />Возможные подкрепления из соседних районов."
END

TOPIC("Б. Дружественные силы:")
"Силы повстанцев.
<br />    1'1 - 8 чел.
<br />    1'2 - 8 чел.
<br />    1'3 - 8 чел.
<br />    1'0 - 2 чел."
END

TOPIC("II. Задание:")
"1. Ликвидировать местного офицера.
<br />2. Освободить арестованных старейшин и доставить их в Shahbaz.
<br />3. Вывезти оружие с военной базы в Shahbaz (опционально). 
<br />"
END

TOPIC("III. Выполнение:")
"- На данный момент у нас нет рабочих раций, скорее всего их можно будет забрать с трупов кафиров или на военной базе.
<br />- Предварительный рейд на военную базу выглядит крайне выгодным - мы сможем значительно увеличить нашу огневую мощь и, если повезет, уничтожим возможные подкрепления противника при штурме виллы. По возможности - вывезите все снаряжение в поселок Shahbaz, оттуда его заберут наши люди.
<br />- У нас имеется несколько взрывпакетов, по желанию можем выбрать человека готового пожертвовать своей жизнью, во имя благой цели.
<br />"
END

TOPIC("IV. Поддержка:")
"2x грузовик Praga V3S (невооруженный)
<br />2x пикап Datsun 620 Pickup (невооруженный)
<br />1x фургон Skoda 1203 (невооруженный)
<br />"
END

TOPIC("V. Сигналы:")
""
END

TOPIC("VI. Замечания:")
"Powered by Tactical Shift Framework"
END

if ((serverCommandAvailable '#logout') || !(isMultiplayer) || isServer) then {
TOPIC("VII. Замечания для GSO:")
"- Будут два реинфорса, они заскриптованы и работают, одно подлетит на military base (иногда высаживает подкерпы далеко, после чего пустой следует по маршруту), другое подъедет на виллу.
<br />- Если игроки будт возиться на территории вилы (минут 5-7), но так и не зайдут в здание с офицером, надо будет помочь ему уехать/улететь , для этого есть вертолет и машинки на территории."
END
};

ADD_TOPICS