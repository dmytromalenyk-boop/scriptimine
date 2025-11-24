
*root kasutajana:
install - apt-get install git
* tavakasutajana:
esmakordselt:

a) seadista - määra kasutajanimi, email, editor
git config --global user.name "Ess Perenimi"
git config --global user.email kasutaja@nimi
git config --global core.editor nano

b) loo kasaloog, kus hakkad skriptima
mkdir skriptimine
b) git remote kontroll
git remote -v

a) pane fall jälgimisele:
git add fallinimi

c) sisene antud kausta
cd skriptimine

d) tekida lokaalne repositiipium git süsteemi jaols antud kaust:
git init

remote seadistamine:
e) git remoto add nimi github:aasress
git remote add skriptimine git@github.com:kasutajanimi/reponimi.git

f) git remote kontroll
git remote -v
