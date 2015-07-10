int a[][]=new int[50][50];
int time=0;
int i=0,j=0;
color c= color(255);
int count=0;
int pause=1;
int mx=0,my=0;
void setup(){
  size(500,500);
  background(255);
  for(i=0;i<50;i++){
    for(j=0;j<50;j++){
      a[i][j]=int(random(0,2));
    }
  }
  
}
//*************************************
void visual(){
  for(int i=0;i<50;i++){
    for(int j=0;j<50;j++){
      noStroke();
      if(a[i][j]==0){
        c=color(255);
      }
      if(a[i][j]!=0){
        c=color(0);
      }
      fill(c);
      rect(10*i,10*j,10,10);
    }
  }
}
//**************************************
void process(){
  for(i=1;i<49;i++){
    for(j=1;j<49;j++){
      cou();
      if((count==2)||(count==5))
      {a[i][j]=1;}
      else
      {a[i][j]=0;}
      }
  }
    
}
//****************************************
void cou(){
  count =0;
  if(a[i+1][j+1]!=0){ count++;}  
  if(a[i][j+1]!=0){ count++;} 
  if(a[i-1][j+1]!=0){ count++;} 
  if(a[i+1][j]!=0){ count++;} 
  if(a[i-1][j]!=0){ count++;} 
  if(a[i+1][j-1]!=0){ count++;} 
  if(a[i][j-1]!=0){ count++;} 
  if(a[i-1][j-1]!=0){ count++;} 
}

//*****************************************
void draw(){
  if(pause==1){  
    process();
    visual();
    time=millis();
    while(millis()<time+200){
    }
  }
  mouseClicked();
}


//******************************************
void keyPressed(){
  pause=-1*pause;
}

void mouseClicked(){
  if(pause==-1){
    mx=floor(mouseX/10);
    my=floor(mouseY/10);
    if(a[mx][my]==1){a[mx][my]=0;}
    if(a[mx][my]==0){a[mx][my]=1;}
  }
}
