/**
 * 
 */

var countHandle=()=>{
    var leftBtns=document.querySelectorAll('.product-bought--item__left-count')
    var rightBtns=document.querySelectorAll('.product-bought--item__right-count')
    var countProducts=document.querySelectorAll('.product-bought--item__value-count')
    if(leftBtns!=null){
        Array.prototype.forEach.call(leftBtns,(btn,index)=>{
            btn.onclick=()=>{
                countProducts[index].defaultValue--
                if( countProducts[index].defaultValue==0){
                    countProducts[index].defaultValue=1
                }
                pricePerProduct()
                finalPrice()
            }
        })
    }
    if(rightBtns!=null){
        Array.prototype.forEach.call(rightBtns,(btn,index)=>{
            btn.onclick=()=>{
                countProducts[index].defaultValue++
                pricePerProduct()
                finalPrice()
            }
        })
    }
}

var load=()=>{
    var checkItemBtn=document.querySelectorAll('.product-bought--item__check-box')
    var count=0
    var countAll=document.querySelector('.product-bought-count-all')
    Array.prototype.forEach.call(checkItemBtn,(item,index)=>{
        console.log(item.parentNode.style.display)
       if(item.parentNode.style.display!='none'){
        count++
       }
    })
    var avail=document.querySelector('.product-bought-avail')
    var isVail=document.querySelector('.product-bought-no-avail')
    countAll.innerHTML=count
    if(count!=0){
        avail.style.display="block"
        isVail.style.display="none"
    }else{
        avail.style.display="none"
        isVail.style.display="flex"
    }
}

var checkForEach=()=>{
    var checkItemBtn=document.querySelectorAll('.product-bought--item__check-box')
    Array.prototype.forEach.call(checkItemBtn,(item,index)=>{
        item.onclick=()=>{
            finalPrice()
        }
    })
}

var checkBoxAll=()=>{
    var checkAllBtn=document.querySelectorAll('.check-box-select-all')
    var checkItemBtn=document.querySelectorAll('.product-bought--item__check-box')
    var isCheckAll=false
    if(checkAllBtn!=null){
        Array.prototype.forEach.call(checkAllBtn,(itemBtn,index)=>{
            itemBtn.onclick=()=>{
                isCheckAll=!isCheckAll
                console.log(isCheckAll)
                if(isCheckAll){
                    checkAll(true)
                    Array.prototype.forEach.call(checkItemBtn,(item,index)=>{
                        item.checked=true
                        item.onclick=()=>{
                            if(!isCheckedAll()){
                                isCheckAll=false
                                checkAll(false)
                            }
							finalPrice()
                        }
                    })
                    finalPrice()
                }else{
                    checkAll(false)
                    Array.prototype.forEach.call(checkItemBtn,(item,index)=>{
                        item.checked=false
                    })
                    finalPrice()
                }
            }
        })
    }
    var checkAll=(a)=>{
        Array.prototype.forEach.call(checkAllBtn,(itemBtn,index)=>{
            itemBtn.checked=a
        })
    }
}

var isCheckedAll=()=>{
    var checkItemBtn=document.querySelectorAll('.product-bought--item__check-box')
    var count=0
    Array.prototype.forEach.call(checkItemBtn,(item,index)=>{
        if(item.checked==true) count++
    })
    if(count==checkItemBtn.length){
        return true
    }
    return false
}

var isCheckedOut=()=>{
    var checkItemBtn=document.querySelectorAll('.product-bought--item__check-box')
    var count=0
    Array.prototype.forEach.call(checkItemBtn,(item,index)=>{
        if(item.checked==true) count++
    })
    if(count>=1){
        return true
    }
    return false
}

var submitEvent=()=>{
    var submitBtn=document.querySelector('.product-bought--check-out__comfirm')
    console.log(submitBtn)
    var modal=document.querySelector('.modal-bought')
    var modalOkBtn=document.querySelector('.bought-error-ok')
    var checkItemBtn=document.querySelectorAll('.product-bought--item__check-box')
    var idProducts=document.querySelectorAll('.product-bought-id')
    var sizeProducts=document.querySelectorAll('.product-bought-size')
    console.log(sizeProducts)
    var colorProducts=document.querySelectorAll('.product-bought-color')
    var countProducts=document.querySelectorAll('.product-bought--item__value-count')
	var priceProducts=document.querySelectorAll('.product-bought--item__new-price')
	
    console.log(idProducts[0].innerHTML)
    if(submitBtn!=null){
        submitBtn.onclick=()=>{
            if(!isCheckedOut()){
                modal.style.display="flex"
                modalOkBtn.onclick=()=>{
                    modal.style.display="none"
                }
            }else{
                var urlString="./checkout?"
                Array.prototype.forEach.call(checkItemBtn,(item,index)=>{
                    if(item.checked){
						var price=priceProducts[index].innerHTML
					    var nPrice=price.replace(",",'')
						var newPrice=Number.parseInt(nPrice)*Number.parseInt(countProducts[index].defaultValue)
                        var mess=document.querySelector('.bought-error-title')
                        mess.innerHTML="Mua Hàng Thành Công"
                        item.parentNode.style.display="none"
                        var http=new XMLHttpRequest
                        urlString+='id'+index+"="+idProducts[index].innerHTML.trim()+"--"+sizeProducts[index].innerHTML.trim()+
                                    "--"+colorProducts[index].innerHTML.trim()+"--"+countProducts[index].defaultValue.trim()+"--"+newPrice+"&" 
                        modal.style.display="flex"
                        modalOkBtn.onclick=()=>{
                            modal.style.display="none"
                        }

                    }
                })
               var http=new XMLHttpRequest
                http.open("GET",urlString)
                http.send()
                console.log(urlString)
                load()
            }
        }
       
    }
    
}

var finalPrice=()=>{
    var finalPriceLabel=document.querySelector('.product-bought--check-out__price')
    var priceProducts=document.querySelectorAll('.product-bought--item__new-price')
    var countProducts=document.querySelectorAll('.product-bought--item__value-count')
    var checkedProduct=document.querySelectorAll('.product-bought--item__check-box')
    var price=0
     var count=0
    var countCheckOut=document.querySelector('.product-bought-count-checkout')
    Array.prototype.forEach.call(checkedProduct,(item,index)=>{
        if(item.checked==true){
            var pricee=priceProducts[index].innerHTML
            var nPrice=pricee.replace(",",'')
            count++
           price=price+Number.parseInt(nPrice)*Number.parseInt(countProducts[index].defaultValue)
        }
    })
    var nnPrice=new Intl.NumberFormat('it-IT', {style : 'currency', currency : 'VND'}).format(price)
    finalPriceLabel.innerHTML=nnPrice
    countCheckOut.innerHTML=count
}

var pricePerProduct=()=>{
    var priceLabels=document.querySelectorAll('.product-bought--item__final-price')
    var countProducts=document.querySelectorAll('.product-bought--item__value-count')
    var priceProducts=document.querySelectorAll('.product-bought--item__new-price')
    Array.prototype.forEach.call(priceLabels,(item,index)=>{
        var price=priceProducts[index].innerHTML
        var nPrice=price.replace(",",'')
        var nnPrice=new Intl.NumberFormat('it-IT', {style : 'currency', currency : 'VND'}).format(Number.parseInt(nPrice)*Number.parseInt(countProducts[index].defaultValue))
        item.innerHTML= nnPrice
    })
}
load()
checkBoxAll()
submitEvent()
countHandle()
finalPrice()
checkForEach()
pricePerProduct()