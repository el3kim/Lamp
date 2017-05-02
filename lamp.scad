n=50;       //sono il numero di cubi
seed=43;    //il seme è il numero da cui si genera la sequenza randomica
random_vect=rands(0,150,n,seed); //(limite minimo, limite massimo, valori da restituire,seme)
echo( "Random Vector: ",random_vect); //mostra a terminale la matrice di valori generata
for(i=[0:n]) {      //per N volte ripete il ciclo
 rotate(360*i/n) {  //ruota i cubi in modo da allinearli al centro
   translate([10-random_vect[i],0,0])   //trasla i cubi rispetto al centro in funzione del vettore randomico generato
     rotate([45,45,45]) //dispone i cubi con uno spigolo verso l'osservatore
        cube(random_vect[i]/2); //definisce il lato del cubo come metà del valore egnerato random
     //quindi allontanandosi dal centro i cubi risultano di maggiori dimensioni
 }
}
translate([0,0,50])sphere (r=30);