# frozen_string_literal: true

questions = [
  {
    question_high: 'Czy bierzesz do serca małe sprawy, o których wiesz, że nie mają żadnego znaczenia? Czy często wytrącają cię z równowagi takie błahostki? [9]',
    example_high: 'Np. sprzeczka z konduktorem, spóźnienie się na tramwaj, zgubienie gazety.',
    question_low: 'A może - i to było by na [1]- poruszają cię tylko ważne zdarzenia?',
    example_low: 'Np. śmierć w rodzinie, spalenie się domu, nie zdanie egzaminu?',
    priority: 1,
    question_type: 'e'
  },

  { question_high: 'Czy łatwo przejmujesz się entuzjazmem albo oburzeniem otoczenia? [9]',
    example_high: 'Np. Przychodzi od kogoś wiadomość, że nie będzie klasówki. Niektórzy "cieszą się do nieprzytomności" - A jeśli okaże się to plotką?',
    question_low: 'Czy też - raczej przyjmujesz zdarzenia spokojnie, takimi jakie one są? [1]',
    example_low: 'Np. Niektórzy spokojnie oczekują potwierdzenia wiadomości.',
    priority: 2,
    question_type: 'e' },

  { question_high: 'Czy jesteś wrażliwy? Czy żywsza krytyka Twojej osoby, niedbała lub drwiąca uwaga, od razu rani cię głęboko? [9]',
    example_high: 'Np. Ktoś usłyszał o sobie: "samolub, słabo pracuje" - bardzo się tym przejął.',
    question_low: 'Czy też - raczej krytykę znosisz bezboleśnie? [1]',
    example_low: 'Np. Ktoś inny usłyszał o sobie to samo; nie przejął się, pomyślał: "on nie wie nic o mnie. A poza tym - czy każdy musi być idealny?"',
    priority: 3,
    question_type: 'e' },

  { question_high: 'Czy niespodziewane wypadki łatwo wprowadzają cię w zamieszanie? Czy cię porusza ostre zwrócenie się do ciebie? Czy prędko bledniesz lub czerwienisz się? [9]',
    example_high: 'Np. Nagłe wezwanie do dyrektora, niespodziewany telegram.',
    question_low: 'A może - niełatwo wyprowadzić cię z równowagi? [1]',
    example_low: nil, priority: 4,
    question_type: 'e' },

  { question_high: 'Czy zapalasz się gdy mówisz? Czy podnosisz głos podczas rozmowy? Czy odczuwasz potrzebę używania wyrazów gwałtownych i dosadnych? [9]',
    example_high: 'Np.  Jesteś podobny do sprawozdawcy sportowego, który dzieli się swoimi wrażeniami "na gorąco"?',
    question_low: 'Czy - mówisz raczej wolno i spokojnie, bez pośpiechu? [1]',
    example_low: 'Np. Jest to podobne do spikera czytającego dziennik telewizyjny?',
    priority: 5,
    question_type: 'e' },

  { question_high: 'Czy niepokoisz się przed rozpoczęciem nowego zadania albo perspektywą jakichś zmian? [9]',
    example_high: 'Np. Pierwszy dzień w nowej pracy, na obozie, pierwszy raz podróżujesz samolotem?',
    question_low: 'Czy - oczekujesz na te zmiany spokojnie? [1]',
    example_low: nil, priority: 6,
    question_type: 'e' },

  { question_high: 'Czy przechodzisz na przemian od samouwielbienia do depresji, od radości do smutku skutkiem jakichś drobiazgów, albo nawet bez żadnych widocznych powodów? [9]',
    example_high: 'Np. Nic się nie zdarzyło, a ktoś jest w fatalnym humorze. Dlaczego? - pyta go kolega. Nie wiem! Ale po niedługim czasie nastrój zmienia mu się bez powodów. Jest zadowolony, szczęśliwy, uśmiechnięty.',
    question_low: 'Czy też - jesteś zwykle w jednakowym usposobieniu? [1]',
    example_low: 'Np. Drugi jest zawsze w jednakowym usposobieniu, chyba, że zdarzy się coś poważnego. Bez powodów jednak nie zmieniają się jego nastroje.',
    priority: 7,
    question_type: 'e' },

  { question_high: 'Czy nawiedzają cię wątpliwości, skrupuły z powodu mało ważnych postępków? Czy zatrzymujesz często w swoim wnętrzu jakieś myśli wyraźnie bezużyteczne i dokuczliwe? [9]',
    example_high: 'Np. W rozmowie niechcący uraziłeś kolegę. Przeprosiłeś go; jednak potem ciągle gnębi Cię to.',
    question_low: 'A może - poza rzadkimi wyjątkami nigdy podobnie bolesnych stanów nie doświadczasz? [1]',
    example_low: 'Np. Ktoś inny - jak nie może pomóc - nie wraca do tego więcej.',
    priority: 8,
    question_type: 'e' },

  { question_high: 'Czy zdarza ci się niekiedy tak gwałtownie być wzruszonym, że absolutnie nie możesz wykonać tego, czego pragnąłeś (strach, który nie pozwala się poruszać, nieśmiałość, która całkowicie odbiera mowę)? [9]',
    example_high: 'Np. Nagłe wezwanie do wypowiedzi publicznej (wywiad z dziennikarzem).',
    question_low: 'A może - nie zdarza ci się to nigdy? [1]<br/>A może zdarza ci się to tylko bardzo rzadko? [5]',
    example_low: nil,
    priority: 9,
    question_type: 'e' },

  { question_high: 'Czy często czujesz się nieszczęśliwy? [9]',
    example_high: 'Np. Jest to nastrój pesymistyczny bez specjalnych powodów',
    question_low: 'Czy też - jesteś na ogół zadowolony ze swego losu? [1]',
    example_low: nil, priority: 10,
    question_type: 'e' },

  { question_high: 'W jaki sposób wykorzystujesz swoje wolne chwile? Czy podczas odpoczynku zajmujesz się czymś <font style="text-decoration: underline;">intensywnie</font> (prace uboczne, działalność społeczna i w ogóle wszelkie prace nie narzucone). [9]',
    example_high: 'Np. Dwaj sąsiedzi rozmawiają: "Ja najlepiej wypoczywam pracując w ogrodzie, albo konserwując narzędzia..."',
    question_low: 'A może - pozostajesz przez długie chwile <font style="text-decoration: underline;">nic nie robiąc</font>, marząc o czymś albo oddając się rozrywkom (przyjemna lektura, radio)?[1]',
    example_low: 'Drugi sąsiad na to: "Kto by mi kazał tak się męczyć! Ja najlepiej odpoczywam gdy położę się na kanapie i przeglądam gazetę..."',
    priority: 11,
    question_type: 'a' },

  { question_high: 'Czy zwykle bezpośrednio i bez trudności wypełniasz to, co postanowiłeś? [9]',
    example_high: 'Np. "Postanowione to znaczy wykonane" Poza wyjątkowymi sytuacjami nie odczuwasz żadnych trudności i oporów wewnętrznych przy realizacji planów.',
    question_low: 'A może - potrzebujesz uciążliwego wysiłku, by przejść od myśli do czynu, od decyzji do wykonania? [1]',
    example_low: 'Np. Postanawiasz odwiedzić kolegę po południu, ale gdy przyjdzie czas wyjścia - nie chce ci się zupełnie zamiaru wykonać. Przychodzi myśl: "może go nie ma w domu? może jest czymś zajęty?"',
    priority: 12,
    question_type: 'a' },

  { question_high: 'Czy pojawiające się trudności i potrzeba wysiłku pobudzają cię do działania? [9]',
    example_high: 'Np. Spadłeś z roweru: Po upadku masz tym więcej energii: "Muszę się na tym rowerze utrzymać. Nie ustąpię!"',
    question_low: 'A może przeciwnie - łatwo tracisz odwagę wobec trudności lub przed zadaniem, które wydaje się zbyt uciążliwe? [1]',
    example_low: 'Np. Po upadku: "Więcej na niego nie wsiądę".',
    priority: 13,
    question_type: 'a' },

  { question_high: 'Czy wolisz działać, albo przynajmniej obmyślać dokładne plany, które przygotowują realną przyszłość? [9]',
    example_high: 'Np. Ktoś chce mieć samochód i myśli, co zrobić, by kupić dostępny samochód.',
    question_low: 'Czy też - lubisz marzyć o minionej przeszłości, bądź o przyszłości, która może być, lub o czymś będącym w sferze czystej wyobraźni? [1]',
    example_low: 'Np. Ktoś inny też chce mieć samochód i marzy o zagranicznym samochodzie; wyobraża sobie, że już siedzi za kierownicą.',
    priority: 14,
    question_type: 'a' },

  { question_high: 'Czy to, co masz wykonać, spełniasz natychmiast i bez wielkiego wysiłku [9]',
    example_high: 'Np. napisać list, odrobić lekcje, załatwić jakąś sprawę, itd.',
    question_low: 'Czy - raczej wolisz opóźniać, odwlekać? [1]',
    example_low: 'Długo „przymierzam się” do takich spraw, jak napisanie listu czy też wykonanie swoich zadań.',
    priority: 15,
    question_type: 'a' },

  { question_high: 'Czy podejmujesz decyzje natychmiast, nawet w trudnych sprawach? [9]',
    example_high: nil,
    question_low: 'Czy - raczej jesteś niezdecydowany i wahasz się długo? [1]',
    example_low: nil,
    priority: 16,
    question_type: 'a' },

  { question_high: 'Czy jesteś żywy i ruchliwy (gestykulacja, żywe wstawanie z krzesła, chodzenie po pokoju) nie będąc w stanie uczuciowego wzruszenia? [9]',
    example_high: nil,
    question_low: 'Czy - raczej trwasz w spokoju i pewnym bezruchu, gdy nie jesteś pod wpływem wzruszenia? [1]',
    example_low: nil,
    priority: 17,
    question_type: 'a' },

  { question_high: 'Czy nie ociągasz się nigdy z powzięciem jakiegoś ulepszenia, które byłoby pożyteczne, ale wymaga wielkiego wysiłku? [9]',
    example_high: 'Np. Masz nieład na półce z książkami. Trzeba posegregować książki i wynieść niepotrzebne do piwnicy. Czy poniósł byś te wszystkie trudy, aby tylko mieć na półce porządek?',
    question_low: 'Czy też - cofasz się raczej przed powzięciem tej pracy i wolisz zadowolić się takim stanem, jaki jest? [1]',
    example_low: 'Np. A zatem - upychasz tylko mocniej książki na półce?',
    priority: 18,
    question_type: 'a' },

  { question_high: 'Czy po zleceniu komu innemu jakiejś pracy czuwasz nad wykonaniem z bliska upewniając się, że wszystko jest wykonane w odpowiednich warunkach i w odpowiednim czasie? [9]',
    example_high: 'Np. A zatem cały czas doglądasz pracy, dopilnowujesz, aby wszystko było po twojej myśli.',
    question_low: 'Czy też - nie interesujesz się jej wykonaniem, mając uczucie, że pozbyłeś się już troski? [1]',
    example_low: nil,
    priority: 19,
    question_type: 'a' },

  { question_high: 'Wolisz obserwować, czy działać? Wolisz brać udział niż przyglądać się, gdyż przypatrywanie się szybko cię nudzi, albo też podnieca do włączenia się w akcję? [9]',
    example_high: nil,
    question_low: 'Czy też - masz przyjemność w długim przyglądaniu się grze, w której nie bierzesz udziału? A może obserwacja ci w zupełności wystarcza? [1]',
    example_low: nil,
    priority: 20,
    question_type: 'a' },

  { question_high: 'Czy przyświeca ci w twoim działaniu myśl o dalekiej przyszłości (oszczędzać na samochód, zbierasz materiały do pracy na daleką metę), czy zwracasz uwagę na następstwa, jakie kiedyś mogą mieć twoje czyny? [9]',
    example_high: 'Np. Gdy dostanę parę złotych, lubię je odkładać lub inwestować (np. na samochód).',
    question_low: 'Czy - raczej interesują cię przede wszystkim bezpośrednie wyniki? [1]',
    example_low: 'Np. Gdy mam parę złotych, coś mnie kusi, by od razu wydać.',
    priority: 21,
    question_type: 'r' },

  { question_high: 'Czy rozważasz wszystko, co może się stać i przygotowujesz się do tego starannie (dokładny ekwipunek na drogę, przewodnik, rozkłady jazdy, itd.) [9]',
    example_high: 'Np. Spisuję na kartce rzeczy, które mam zabrać ze sobą w podróż, muszę dokładnie znać połączenia kolejowe, itd.',
    question_low: 'Albo może - liczysz na natchnienie chwili? [1]',
    example_low: 'Np. Jadę "na wariata"',
    priority: 22,
    question_type: 'r' },

  { question_high: 'Czy masz ścisłe zasady, do których starasz się dostosować? [9]',
    example_high: 'Np. "Gdy mnie ktoś zaczepi - delikatnie zwracam mu uwagę, gdy powtórzy zaczepkę - drugi raz coś mu powiem spokojnie, ale jeśli zaczepia znowu - wtedy walę go i już. Taką mam zasadę"',
    question_low: 'Czy wolisz raczej elastycznie dopasować się do okoliczności? [1]',
    example_low: 'Np. "Ja specjalnie zasad pod tym względem nie mam - mówi ktoś inny. Zależy wszystko, czy jestem w dobrym humorze, następnie, czy zaczepka jest poważna. Różnie reaguję. Trudno te sprawy z góry przewidzieć',
    priority: 23,
    question_type: 'r' },

  { question_high: 'Czy jesteś stały w swoich zamiarach? Czy zawsze kończysz rozpoczęte zadanie? [9]',
    example_high: 'Np. Przypomnij sobie swoje kółka zainteresowań, do których zapisywałeś się. Czy lubiłeś zawsze kończyć to wszystko?',
    question_low: 'A może - często porzucasz pracę przed jej zakończeniem (zaczynając wszystko, nie kończąc nic)? [1]',
    example_low: 'Np. Czy może twoje zajęcia były przerywane w toku, w połowie?',
    priority: 24,
    question_type: 'r' },

  { question_high: 'Czy jesteś stały w swoich sympatiach (podtrzymujesz przyjaźnie z lat dziecinnych, odwiedzasz regularnie te same osoby, bywasz w tych samych towarzystwach)? [9]',
    example_high: nil, question_low: 'A może - często zmieniasz przyjaciół, np. przestajesz bez ważniejszych powodów odwiedzać osoby, u których często bywałeś? [1]',
    example_low: nil,
    priority: 25,
    question_type: 'r' },

  { question_high: 'Czy po ataku gniewu (a jeśli nie wpadasz nigdy w gniew, to po doznaniu poważnej obrazy lub przykrości) trudno ci przychodzi pogodzenie się z winowajcą - uraza pozostaje? [9]',
    example_high: nil,
    question_low: 'A może - łatwo ci się pogodzić z winowajcą? [1]<br/>Albo - pozostajesz pewien czas w złym humorze? [5]',
    example_low: nil,
    priority: 26,
    question_type: 'r' },

  { question_high: 'Czy masz jakieś bardzo utarte, osobiste przyzwyczajenia, których lubisz ściśle przestrzegać? Czy jesteś przywiązany do regularnego powrotu pewnych wydarzeń? [9]',
    example_high: 'Np. Przyzwyczajenia i przywiązania: do starego ubrania - mimo, że zostało kupione nowe, do dawnych rzeczy, np. laski, do zwierząt.',
    question_low: 'A może - masz wstręt do wszystkiego, co jest we zwyczaju i co z góry da się przewidzieć, natomiast niespodzianki są dla ciebie zasadniczym elementem przyjemności? [1]',
    example_low: nil,
    priority: 27,
    question_type: 'r' },

  { question_high: 'Czy lubisz porządek, symetrię, prawidłowość? [9]',
    example_high: nil,
    question_low: 'A może - porządek wydaje się nudny i czujesz potrzebę wymyślenia wszystkiego z fantazji? [1]',
    example_low: nil,
    priority: 28,
    question_type: 'r' },

  { question_high: 'Czy przewidujesz z góry, jaki użytek zrobisz ze swego czasu i swoich sił? Czy lubisz robić plany, rozkłady godzin, programy? [9]',
    example_high: nil,
    question_low: 'A może - zaczynasz działać bez dyrektyw podjętych uprzednio? [1]',
    example_low: nil,
    priority: 29,
    question_type: 'r' },

  { question_high: 'Czy do opinii raz przyjętych przywiązujesz się nieustępliwie? [9]',
    example_high: 'Np.  Jednego wcale nie można przekonać. W dyskusji broni do upadłego swego zdania. Gdy brakuje argumentów, mówi: "Ja wiem swoje, wy wiecie swoje"',
    question_low: 'A może - dajesz się łatwo przekonać i ulegasz nowości jakiejś idei? [1]',
    example_low: 'Np. Inny łatwo zmienia przekonanie. najpierw jednemu przyznaje rację, a potem przychodzi drugi i mówi coś przeciwnego. Wystarczy trochę wymowy i już zmienia zdanie.',
    priority: 30, question_type: 'r' }
]

Question.delete_all
questions.each do |question|
  Question.create!(question)
end
