#include<stdio.h>
#include<string.h>
#include<stdlib.h>

int check(char in,char l){

   return in==l;
}
int caracter(char *in,char *l){

    int aux=0;
    for (int i = 0;i < strlen(in); i++)
    {
        if (in[i]==l[i])
            aux=1;
    
    }
    return aux;

    
}
int insert(char **linhas, int d, int final){


    char *in=malloc(90);
    int aux=d;

    while (1)
    {
        fgets(in,100,stdin);
        
        if (check(in[0],'.'))
            break;
        
        for (int i = final; i >= d; i--)    //Faz o deslocamento do array para a direita até ficar pronto para receber o novo texto
            strcpy(linhas[i+1],linhas[i]);

        strcpy(linhas[d],in);

        final++;
        d++;
        

        
    }

    //printf("%d\n",d);
    //printf("%s\n",linhas[d]);

    return final;


}
void change(char **linhas, int atual){

    char *in=malloc(90);

    while (1)
    {
        //scanf("%s",in);
        fgets(in,100,stdin);

        if (check(in[0],'.'))
            break;
        
        strcpy(linhas[atual],in);

    }
    

}
int append(char **linhas, int d, int final){

    char *in=malloc(90);

    while (1)
    {
        fgets(in,90,stdin);

        if(check(in[0],'.')){  
                  
            break;
            
        }
        else{

            for (int i = final; i >= d; i--)
                strcpy(linhas[i+1],linhas[i]);

            strcpy(linhas[d],in);
            
            d++;
        }
        
    }

    
    return d;
}
void write(char *namef, char **linhas, int d){

    int count=0;

    FILE *f;

    f=fopen(namef,"w");

    for (int i = 0; i < d+1; i++)       
    {
        fprintf(f,"%s",linhas[i]);
        count+=strlen(linhas[i]);
        
    }

    fclose(f);

    printf("%d\n",count);


}


int main (){

    char chamada[100];//comando
    char *linhas[90];//textos guardados
    char *c=".";
    int final=0;// ultima palavra do char *linhas
    int d=-1;// indica que o char *linha esta vazio
    int z=0;// Indica se o texto escrito no terminal esta guardado no ficheiro
    int abs=0;// guarda d para o atualizar na append


    char *fname=malloc(90);
    char ficheiro[100];
    

    for (int i = 0; i < 90; i++)
        linhas[i]=malloc(90);
    
    while (1)
    {

        fgets(chamada,100,stdin);

        if (caracter(chamada,"a")){    //append 

            d++;
            abs=d;                   
            d=append(linhas,d, final);
            final=final+(d-abs);
            d--;
            //printf("%d\n",d);
            

        }
        else if (caracter(chamada,"$a"))    //cifrao
        {
            d=append(linhas,final, final);
        }
        
        else if (caracter(chamada,"%p"))    //print total
        {
            for (int i = 0; i <= final; i++)        //mudei <
            {
                if (d==-1)
                    break;

                printf("%s",linhas[i]);

            }
            
        }
        else if (caracter(chamada,"c")){    //change

            //int atual=d;
            change(linhas,d);

        }
        else if (caracter(chamada,"Q"))     //Quit
            break;

        else if (caracter(chamada,"i"))     //insert
        {
            if (d==-1){                                       
                d=insert(linhas,d, final);
            }
            final=insert(linhas,d, final);
            
        }
        else if (caracter(chamada,"p"))     //print
        {
            //int atual=d;                  
            printf("%s",linhas[d]);
        }
        else if (caracter(chamada,"d"))     //delete
        {
            if (d==-1)
                break;
            
            strcpy(linhas[d],"");
            d-=1;
            
        }
        else if (caracter(chamada,"f"))     //file
        {
            int j=2;
            int k=0;

            if (d==-1){
                break;

            }
            
            while (chamada[j]!='\0')
            {
                ficheiro[k]=chamada[j];
                j++;
                k++;
            }

            printf("%s",ficheiro);
            strcpy(fname,ficheiro);
            
        }
        else if (caracter(chamada,"w"))     //write
        {
            if (d==-1){
                break;

            }

            write(fname,linhas,d);

            z=1;
        }
        else if (caracter(chamada,"q"))     //quit
        {
            if (z!=1)
            {
                printf("?\n");
            }
            else
                break;
            
        }
       
    }

   
    return 0;
}