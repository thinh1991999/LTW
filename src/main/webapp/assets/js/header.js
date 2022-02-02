/**
 * 
 */
var cartHandle=()=>{
   	var cartProducts=document.querySelectorAll('.header__cart-item-cart')
    var removeCartBtn=document.querySelectorAll('.header__cart-item-remove')
    var count=cartProducts.length
	for(var i=0;i<cartProducts.length;i++){
		if(cartProducts[i].style.display=="none"){
			removeCartBtn[i].remove
		}
	}
    Array.prototype.forEach.call(removeCartBtn,(btn,index)=>{
        btn.onclick=()=>{		
			var noticeCart=document.querySelector('.header_cart-notice')
            cartProducts[index].style.display="none"
           countProductCartHandle()
			var http=new XMLHttpRequest
			http.open("GET","./removeCart?index="+index)
			http.send()
        }
    })
}


var countProductCartHandle=()=>{
	var count=0
	var items=document.getElementsByClassName('header__cart-item-cart')
	for(var i=0;i<items.length;i++){
		if(items[i].style.display!="none"){
			count++
		}
	}
	var countProductCart=document.querySelector('.header_cart-notice')
	countProductCart.innerHTML=count
}

countProductCartHandle()
cartHandle()