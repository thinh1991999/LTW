var chooseColor = function (){
    var colors=document.getElementsByClassName('product-detail-color-box');
    Array.prototype.forEach.call(colors,(color,index)=>{
        color.onclick=function(){
            removeChoose(colors)
            color.classList.add('product-detail-box__choosed')
        }
    })
}

var removeChoose=function(n){
    Array.prototype.forEach.call(n,(color,index)=>{
        color.classList.remove('product-detail-box__choosed')
    })
}

var chooseSize= function (){
    var sizes=document.getElementsByClassName('product-detail-size-box');
    Array.prototype.forEach.call(sizes,(size,index)=>{
        size.onclick=function(){
            removeChoose(sizes)
            size.classList.add('product-detail-box__choosed')
        }
    })
}

var amountControl=function(){
    var reduceBtn=document.querySelector('.product-detail-amount-control_reduce')
    var addBtn=document.querySelector('.product-detail-amount-control_add')
   	if(reduceBtn!=null){
	 reduceBtn.onclick= function(){
        var amount=document.querySelector('.product-detail-amount-control_amount')
        amount.value--
        if(amount.value==0){
            amount.value=1
        }
    }
}
   	if(addBtn!=null){
	 addBtn.onclick= function(){
        var amount=document.querySelector('.product-detail-amount-control_amount')
        amount.value++
    }
}
}

var imageHover=function(){
    var imgList=document.getElementsByClassName('product-image_child-item')
    Array.prototype.forEach.call(imgList,(item, index)=>{
        item.onmouseover= function(){
            var imgMain=document.querySelector('.product-image_main')
            var url=item.style.backgroundImage
            imgMain.style.backgroundImage=url
        }
    })
}

var changeSlideDetailProduct=function(){
    var indexshow=0;
    var imgList=document.getElementsByClassName('product-image_child-item')
    var max=imgList.length-5
    var backBtn=document.querySelector('.product-image_child-back-btn')
    var goBtn=document.querySelector('.product-image_child-go-btn')
   if(backBtn!=null){
	 backBtn.onclick= function(){
        indexshow--
        if(indexshow<=0){
            indexshow=0
        }
        displayImgChild(imgList,indexshow,5)
    }
	}

    if(goBtn!=null){
	goBtn.onclick= function(){
        indexshow++
        if(indexshow>=max){
            indexshow=max
        }
        displayImgChild(imgList,indexshow,5)
    }
	}
    displayImgChild(imgList,indexshow,5)
}

var changeSlideProduct=function(){
    var distance=0;
    var imgList=document.getElementsByClassName('product-slide-all')
    var listProduct=document.querySelectorAll('.product-slide-box')
    var max=imgList.length-6
    var backBtn=document.querySelector('.product-slide-left-btn')
    var goBtn=document.querySelector('.product-slide-right-btn')
    if(goBtn){
		goBtn.onclick= function(){
	        if(distance==-((listProduct.length-6)*200)){
	            distance=-((listProduct.length-6)*200)
	        }else{
	            distance-=200
	        }
	        console.log(distance)
	       imgList[0].style.transform="translateX("+distance+"px)"
	       imgList[0].style.transition="all 0.3s"
	       if(distance==-((listProduct.length-6)*200)){
	        goBtn.style.visibility="hidden"
	        }else{
	            goBtn.style.visibility="unset"
	        }
	        if(distance!=0){
	            backBtn.style.visibility="unset"
	        }else{
	            backBtn.style.visibility="hidden"
	        }
	    }
	}
    
    if(backBtn){
		backBtn.onclick= function(){
	        if(distance>=0){
	            distance=0
	        }else{
	            distance+=200
	        }
	        console.log(distance)
	       imgList[0].style.transform="translateX("+distance+"px)"
	       imgList[0].style.transition="all 0.3s"
	        if(distance==-((listProduct.length-6)*200)){
	        goBtn.style.visibility="hidden"
	        }else{
	            goBtn.style.visibility="unset"
	        }
	        if(distance!=0){
	            backBtn.style.visibility="unset"
	        }else{
	            backBtn.style.visibility="hidden"
	        }
	    }
	}
     
}

var displayImgChild=function(n,indexshow,count){
    Array.prototype.forEach.call(n,(item, index)=>{
        if(index>=indexshow && (index-indexshow)<count){
            item.style.display="block"
        }else{
            item.style.display="none"
        }
    })
}

var showDeliveryOption=function(){
    var isChecked=false;
    var btn=document.querySelector('.product-detail-delivery__title')
    var optionsBox=document.querySelector('.product-detail-delivery__content')
    if(btn!=null){
	btn.onclick=function(){
        isChecked=!isChecked
        if(isChecked){
            optionsBox.style.display="block"
        }else{
            optionsBox.style.display="none"
        }
    }
}
}

var chooseDeliveryOption=function(){
    var options=document.getElementsByClassName('delivery-item')
    var v=document.querySelector('.product-detail-delivery__value')
    var optionsBox=document.querySelector('.product-detail-delivery__content')
    Array.prototype.forEach.call(options,(option,index)=>{
        option.onclick=function(){
            var vl=option.textContent
            v.textContent=vl
            showDeliveryPrice(option.textContent)
            optionsBox.style.display="none"
        }
    })
}

var showDeliveryPrice=function(loc){
    var show=document.querySelector('.product-detail-delivery__price')
    switch (loc){
        case "Tp.HCM":
            show.textContent="10.000 đ"
            break;
        case "Hà Nội":
            show.textContent="15.000 đ"
            break;
        case "Nha Trang":
            show.textContent="12.000 đ"
            break;
        case "Vũng Tàu":
            show.textContent="11.000 đ"
            break;
        case "Tây Nguyên":
            show.textContent="8.000 đ"
        break;      
    }
}

var searchHandle=()=>{
    const searchInput=document.querySelector('.header__search-input')
    const searchHistory=document.querySelector('.header__search-history')
    const itemHistory=document.querySelectorAll('.header__search-history-item')
    console.log(itemHistory);
    if(searchInput){
        searchInput.onfocus=()=>{
            searchHistory.style.display='block'
        }
        searchInput.onblur=()=>{
            setTimeout(()=>{
                searchHistory.style.display='none'
            },100)
        }
    }
}


chooseDeliveryOption()
showDeliveryOption()
changeSlideProduct()
changeSlideDetailProduct()
imageHover()
amountControl()
chooseColor()
chooseSize()
searchHandle()