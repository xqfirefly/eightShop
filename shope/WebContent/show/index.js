/*
* @Author: yanglinru
* @Date:   2017-09-13 14:29:37
* @Last Modified by:   yanglinru
* @Last Modified time: 2017-09-14 11:14:33
*/

window.onload=function(){

       var odiv1=document.getElementById('main-slider');
       var oqian=document.getElementById('arrow-left');
       var ohou=document.getElementById('arrow-right');
       var oul=document.getElementById('oul');
       var oimg=document.getElementById('img1');
       var oli=oul.getElementsByTagName('li');
       var arrimg=['images/silder1.jpg','images/silder2.jpg','images/silder3.jpg','images/silder4.jpg','images/silder5.jpg','images/silder6.jpg'];
       var num=0;



       var odiv2=document.getElementById('site-nav-send');
       var odiv3=document.getElementById('site-nav-city');
       var odiv4=document.getElementById('site-nav-r-hide');
       var oli2=document.getElementById('oli2');
       var odiv5=document.getElementById('shortcut-nav-menu-one1');
       var odiv6=document.getElementById('shortcut-nav-menu-one11');
       var odiv7=document.getElementById('shortcut-nav-menu-one2');
       var odiv8=document.getElementById('shortcut-nav-menu-one22');
       var odiv9=document.getElementById('shortcut-nav-menu-one3');
       var odiv10=document.getElementById('shortcut-nav-menu-one33');
       var odiv11=document.getElementById('shortcut-nav-menu-one4');
       var odiv12=document.getElementById('shortcut-nav-menu-one44');
       odiv2.onmouseover=function(){
           odiv3.style.display='block';
       }
       odiv2.onmouseout=function(){
           odiv3.style.display='none';
       }
       odiv3.onmouseover=function(){
          odiv3.style.display='block';
       }
       odiv3.onmouseout=function(){
          odiv3.style.display='none';
       }
       oli2.onmouseover=function(){
        odiv4.style.display='block';
       }
       oli2.onmouseout=function(){
        odiv4.style.display='none';
       }
       odiv4.onmouseover=function(){
          odiv4.style.display='block';
       }
       odiv4.onmouseout=function(){
          odiv4.style.display='none';
       }
       odiv5.onmouseover=function(){
          odiv6.style.display='block';
       }
       odiv5.onmouseout=function(){
          odiv6.style.display='none';
       }
      odiv6.onmouseover=function(){
        odiv6.style.display="block";
      }
      odiv6.onmouseout=function(){
        odiv6.style.display="none";
      }
       odiv7.onmouseover=function(){
          odiv8.style.display='block';
       }
       odiv7.onmouseout=function(){
          odiv8.style.display='none';
       }
      odiv8.onmouseover=function(){
        odiv8.style.display="block";
      }
      odiv8.onmouseout=function(){
        odiv8.style.display="none";
      }
      odiv9.onmouseover=function(){
          odiv10.style.display='block';
       }
       odiv9.onmouseout=function(){
          odiv10.style.display='none';
       }
      odiv10.onmouseover=function(){
        odiv10.style.display="block";
      }
      odiv10.onmouseout=function(){
        odiv10.style.display="none";
      }
      odiv11.onmouseover=function(){
          odiv12.style.display='block';
       }
       odiv1.onmouseout=function(){
          odiv12.style.display='none';
       }
      odiv12.onmouseover=function(){
        odiv12.style.display="block";
      }
      odiv12.onmouseout=function(){
        odiv12.style.display="none";
      }



       oimg.src=arrimg[num];
       oli[num].style.background='#ea7c1c';

      
      //点击
           oqian.onclick=function(){
               num--;
               if(num==-1){
                num=arrimg.length-1;
               }
               oimg.src=arrimg[num];
               for(var i=0;i<oli.length;i++){
                oli[i].style.background='';
                oli[num].style.background='#ea7c1c';
               }

           };

          //点击
           ohou.onclick=function(){
                 num++;
                 if(num==arrimg.length){
                    num=0;
                 } 
                 oimg.src=arrimg[num];
                 for(var i=0;i<oli.length;i++){
                  oli[i].style.background='';
                  oli[num].style.background='#ea7c1c';
                 }
           };

         for(var i=0;i<oli.length;i++){
            oli[i].index=i;
              oli[i].onmouseover=function(){
                oli[this.index].innerHTML='<img class="mini" src=" '+arrimg[this.index]+ ' " />';
              }
              oli[i].onmouseout=function(){
                oli[this.index].innerHTML='';
              }
              oli[i].onclick=function(){
               for(var j=0;j<oli.length;j++){
                oli[j].style.background='';
               }
              oli[this.index].style.background='#ea7c1c';
              oimg.src=arrimg[this.index];
              num=this.index;
            }
       }
   }





   