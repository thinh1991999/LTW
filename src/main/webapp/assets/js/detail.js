/**
 * 
 */
var addCart=function(){
	var btn=document.querySelector('.product-detail-add-cart')
    btn.onclick=function(){
	 	console.log(checkValidDelivery())
		var urlImg=document.querySelector('.product-image_main').style.backgroundImage
	    var urlImg=urlImg.replace("url(","")
	    var urlImg=urlImg.replace(")","")
	    var title=document.querySelector('.product-detail-title').textContent
	    var price=document.querySelector('.product-detail-price_new').textContent 
		var id,size,color,count,locDe
	    var inputsColor=document.getElementsByName('color')
	    var inputsSize=document.getElementsByName('size')
	 	var deliveryPrice=document.querySelector('.product-detail-delivery__price')
		var count=document.querySelector('.product-detail-amount-control_amount').value
	    var mess=document.querySelector('.product-detail-mess')
		var modalAdd=document.querySelector('.modal')
		var checkBox=document.querySelector('.header__navbar-user')
     	var btn=document.querySelector('.product-detail-add-cart')
     	if(checkBox===null){
     		var url= "http://localhost:8080/Project--3/signUp.jsp";
    		window.location = url;
     	}
       	if(checkValidSize() && checkValidColor() && checkValidDelivery()){
			 var cartBox=document.querySelector('.header__cart-list-cart')
          		cartBox.innerHTML+=`<li class="header__cart-item-cart">
                                <img src=${urlImg} alt="" class="header__cart-item-img">
                                <div class="header__cart-info">
                                    <div class="header__cart-info-header">
                                        <h4 class="header__cart-info-name">${title}</h4>
                                        <div class="header__cart-price-wrap">
                                            <span class="header__cart-item-price">${price}</span>
                                            <span class="header__cart-item-mutiply">x</span>
                                            <span class="header__cart-item-quanlity">${count}</span>
                                        </div>
                                    </div>
                                    <div class="header__cart-info-body">
                                        <h4 class="header__cart-item-style">Phân loại hàng: Bạc</h4>
                                        <span class="header__cart-item-remove">Xóa</span>
                                    </div>
                                </div>
                            </li>`
			var cartProducts=document.querySelectorAll('.header__cart-item-cart')
			console.log(cartProducts)
			for(var i=0;i<inputsColor.length;i++){
	            if(inputsColor[i].checked){
					color=inputsColor[i].defaultValue
					break;
	               }
	        }
			for(var j=0;j<inputsSize.length;j++){
				            if(inputsSize[j].checked){
								size=inputsSize[j].defaultValue
								break;
				               }
				        }
			id=document.querySelector('.product-detail-id').textContent
			count=document.querySelector('.product-detail-amount-control_amount').value
			locDe=document.querySelector('.product-detail-delivery__value').textContent
			countProductCartHandle()
           var http=new XMLHttpRequest
           http.open("GET","./addCart?id="+id+"&size="+size+"&color="+color+"&count="+count+"&locDe="+locDe,true)
			http.send()
			mess.innerHTML=""
            modalAdd.style.display="flex"
			closeModal()
            setTimeout(()=>{
                modalAdd.style.display="none"
            },1500)
			cartHandle()
       }else{
           console.log(mess)
           
           mess.style.display="block"
       }
    }
}

var countProductCartHandle=()=>{
	var items=document.getElementsByClassName('header__cart-item-cart')
	var countProductCart=document.querySelector('.header_cart-notice')
	countProductCart.innerHTML=items.length
}

var checkValidColor=function(){
    var inputsColor=document.getElementsByName('color')
    for(var i=0;i<inputsColor.length;i++){
        if(inputsColor[i].checked){
            return true
        }
    }
    return false
}

var checkValidSize=function(){
    var inputssize=document.getElementsByName('size')
    for(var i=0;i<inputssize.length;i++){
        if(inputssize[i].checked){
            return true
        }
    }
    return false
}

var checkValidDelivery=function(){
    var deliveryPrice=document.querySelector('.product-detail-delivery__price')
    if(deliveryPrice.textContent.trim()=="Chưa xác định"){
        return false
    }else{
        return true
    }

}

var closeModal=function(){
    var layer=document.querySelector('.modal__layer')
    var modalAdd=document.querySelector('.modal')
    if(modalAdd.style.display=='flex'){
        layer.onclick=(e)=>{
                modalAdd.style.display="none"
        }
    }
}

var cartHandle=()=>{
   	var cartProducts=document.querySelectorAll('.header__cart-item-cart')
    var removeCartBtn=document.querySelectorAll('.header__cart-item-remove')
    var count=cartProducts.length
    Array.prototype.forEach.call(removeCartBtn,(btn,index)=>{
        btn.onclick=()=>{		
          	
        }
    })
}
countProductCartHandle()
addCart()