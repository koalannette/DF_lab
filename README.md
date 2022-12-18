# How to use it

In any empty directory do

* "git clone <https://github.com/AlexandrRSU/DF_lab.git>"
* "git clone <https://git.akhcheck.ru/TechProgTemplates.git>"
* "cd TechProgTemplates"
* "git checkout task-docker"
* "cd task-docker"
* "cp ../../DF_lab/Dockerfile ."
* "docker build -t lab -f Dockerfile .."
* "docker run -p 8898:8898 lab"

To check that the flask application is working open the <http://localhost:8898> and <http://localhost:8898/app> in your browser
