# GitHub_dz2
GitHub. HW_2
1. На локальном репозитории сделать ветки для:
- Postman	<====>	git branch Postman
- Jmeter	<====>	git branch Jmeter
- CheckLists	<====>	git branch CheckLists
- Bag Reports	<====> 	git branch Bug_Reports
- SQL		<====>	git branch SQL
- Charles	<====>	git branch Charles
- Mobile testing<====>	git branch Mobile_testing

2. Запушить все ветки на внешний репозиторий	<====> 	git push -u origin --all
3. В ветке Bag Reports сделать текстовый документ со структурой баг репорта	<====>
 git checkout Bug_Reports
 touch  str_bug.txt
 vim  str_bug.txt
	1) ID
	2) Summary
	3) Description
	4) Steps to reproduce
	5) Actual result
	6) Expected result
	7) Attachments
	8) Severity
	9) Priority
	10) Status
	11) Environment
 
4. Запушить структуру багрепорта на внешний репозиторий		<====>
 git add  str_bug.txt
 git commit -m "file str_bug.txt"
 git push 

5. Вмержить ветку Bag Reports в Main	<====> 
 git checkout main
 git merge Bug_Reports
6. Запушить main на внешний репозиторий.	<====> git push 
7. В ветке CheckLists набросать структуру чек листа.	<====>
 git checkout CheckLists
 touch check.txt
 vim check.txt
        1) Изменение размера шрифтов из настроек устройства
        2) Смена темы из настроек устройства
	3) Изменение языка из настроек устройства
	4) Смена времени из настроек устройства
	5) Использование кастомной клавиатуры Android (в частности, для полей и поисковой строки)
	6) Входящий звонок/смс во время прохождения флоу фичи
	7) Поворот устройства
	8) Выход из приложения двойным «Назад» на Android
	9) Свернуть приложение и запустить снова
	10) Свернуть приложение во время ожидания ответа на запрос
	11) Отключить интернет во время ожидания ответа на запрос
8. Запушить структуру на внешний репозиторий	<====>  
 git add check.txt
 git commit -m "file check.txt"
 git push 
9. На внешнем репозитории сделать Pull Request ветки CheckLists в main	<====> Merge pull request
10. Синхронизировать Внешнюю и Локальную ветки Main	<====> git pull


