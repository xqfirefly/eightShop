/*
* @Author: yanglinru
* @Date:   2017-09-13 16:02:17
* @Last Modified by:   yanglinru
* @Last Modified time: 2017-09-13 18:23:19
*/

  
  /* var oUl = document.getElementsByTagName('ul')[0];*/
   var  oUl = document.getElementById('oul');
   var aStrong = oUl.getElementsByTagName('strong');
   var aSpan = oUl.getElementsByTagName('span');
   var aEm = oUl.getElementsByTagName('em');
   var aLi = oUl.getElementsByTagName('li');
   var oP = document.getElementsByTagName('op');
   var arrPrice = [];

// arrPrice[2] = 10;

for (var i=0; i<aLi.length; i++) {
    arrPrice.push(0);
}

//alert(aStrong.length);

for ( var i=0; i<aLi.length; i++ ) {
    count( aLi[i] );
}

function sum() {
    var num = 0;
    var price = 0;
    var iMax = 0;
    
    for (var i=0; i<aStrong.length; i++) {
        num += Number( aStrong[i].innerHTML );
        price += parseFloat( aSpan[i].innerHTML );
        
        if ( aStrong[i].innerHTML > 0  ) {
            arrPrice[i] = parseFloat( aEm[i].innerHTML );
        }
        else {
            arrPrice[i] = 0;
        }
    }
    
    for (var i=0; i<arrPrice.length; i++) {
        if ( iMax < arrPrice[i] ) {
            iMax = arrPrice[i];
        }
    }

    oP.innerHTML = '共购买了 <strong>' + num + '</strong> 件商品，单价最贵是：<strong>'+ iMax +'</strong>元，合计 <strong>' + price + '</strong> 元；';
}

function count( li ) {
    var aInp = li.getElementsByTagName('input');
    var oStrong =li.getElementsByTagName('strong')[0];
    var oEm = li.getElementsByTagName('em')[0];
    var oSpan = li.getElementsByTagName('span')[0];
    var num = Number(oStrong.innerHTML);    // '0' typeof string
    var price = parseFloat( oEm.innerHTML );
    
    aInp[0].onclick = function () {
        if ( num > 0 ) {
            num--;
        }
        oStrong.innerHTML = num;
        oSpan.innerHTML = num*price + '元';
        
        sum();
    };
    aInp[1].onclick = function () {
        num++;
        oStrong.innerHTML = num;
        oSpan.innerHTML = num*price + '元';
        
        sum();
    };
}



