#include <iostream>
#include <fstream>
#include <sstream>
#include <cstdlib>
#include <string>
#include <cstring>

using namespace std;

class Player{
    private:
        int score;
        string name;

    public:
        Player(string n){
            this->name = n;
            this->score = 0;
        }

        int getScore(){
            return score;
        }

        void addScore(){
            score++;
        }

        string getName(){
            return name;
        }

        void printScore(){
            ofstream punteggio;
            stringstream score;
            punteggio.open("punteggio.txt", ios::app);
            if(!punteggio.is_open()){
                cout << "Errore nell'apertura del file dei punteggi\n";
            }
            score << this->getScore();
            string sc;
            score >> sc;
            string pnt = "Punteggio di " + this->getName() + " : " + sc + "\n";
            punteggio << pnt;
            punteggio.close();
        }
};

void leggi(ifstream&, ifstream&, Player*);

int main(){
    string n;
    cout << "Inserisci il tuo nome" << endl;
    cin >> n;
    Player* p = new Player(n);
    ifstream fdDomande;
    ifstream fdRisposte;   
    leggi(fdDomande, fdRisposte, p);
    cout << p->getScore() << endl;
    p->printScore();
}

void leggi(ifstream& fdD, ifstream& fdR, Player* p){
    fdD.open("Domande.txt");
    fdR.open("Risposte.txt");
    int righe = 0;
    int i = 0;
    char risposta;
    string bufferDomande[5];
    string domanda;
    string bufferRisposte;
    if(!fdD.is_open()){
        cerr << "Errore nell'apertura file" << endl;
        return;
    }

    while(getline(fdD, bufferDomande[i])){
        righe++;
        cout << bufferDomande[i] << endl;
        i++;
        if(righe % 5 == 0){
            cout << "\n\nScegli una risposta \n";
            cin >> risposta;
            getline(fdR, bufferRisposte);
            switch(risposta){
                case 'a' :
                    domanda = bufferDomande[1].substr(3);
                    cout << domanda << endl << bufferRisposte << endl;
                    if(domanda == bufferRisposte){
                        p->addScore();
                    }
                    break;

                case 'b' :
                    domanda = bufferDomande[2].substr(3);
                    cout << domanda << endl << bufferRisposte << endl;
                    if(domanda == bufferRisposte){
                        p->addScore();
                    }
                    break;

                case 'c' :
                    domanda = bufferDomande[3].substr(3);
                    cout << domanda << endl << bufferRisposte << endl;
                    if(domanda == bufferRisposte){
                        p->addScore();
                    }
                    break;

                case 'd' :
                    domanda = bufferDomande[4].substr(3);
                    cout << domanda << endl << bufferRisposte << endl;
                    if(domanda == bufferRisposte){
                        p->addScore();
                    }
                    break;

                default:
                    break;
            }

        i = 0;
        system("clear");
        }
    }
    fdD.close();
    fdR.close();
}