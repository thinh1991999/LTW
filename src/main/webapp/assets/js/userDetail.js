var loadDate=()=>{
    var dayBox=document.querySelector('.user-detail-form-day-options')
    for(var i=1;i<32;i++){
        dayBox.innerHTML+=`<li class="user-detail-form-day-item">${i}</li>`
    }
    var monthBox=document.querySelector('.user-detail-form-month-options')
    for(var i=1;i<13;i++){
        monthBox.innerHTML+=`<li class="user-detail-form-month-item">Tháng ${i}</li>`
    }
    var yearBox=document.querySelector('.user-detail-form-year-options')
    for(var i=1970;i<2030;i++){
        yearBox.innerHTML+=`<li class="user-detail-form-year-item">${i}</li>`
    }
}

var click=()=>{
    var dayBox=document.querySelector('.user-detail-form-day-options')
    var monthBox=document.querySelector('.user-detail-form-month-options')
    var yearBox=document.querySelector('.user-detail-form-year-options')
    var dayEle=document.querySelector('.user-detail-form-day-box')
    var monthEle=document.querySelector('.user-detail-form-month-box')
    var yearEle=document.querySelector('.user-detail-form-year-box')
    var userControlls=document.querySelectorAll('.user-control-item')
    var userDetail=document.querySelector('.user-detail')
    var userCredit=document.querySelector('.user-credit')
    var userAddress=document.querySelector('.user-address')
    var userChPW=document.querySelector('.user-change-password')
    var userDetailWrap=document.querySelector('.user-detail--wrap')
    var userBoughtListHandle=document.querySelector('.user-list-bought-handle')
    var userBoughtListBtn=document.querySelector('.user-bought-list')
    var userDetailItems=document.querySelectorAll('.user-control-item')
    userBoughtListHandle.style.display="none"
    userDetail.style.display="block"
    userCredit.style.display="none"
    userAddress.style.display="none"
    userChPW.style.display="none"
    clickEvent(dayEle,dayBox,'user-detail-form-day-box--active')
    clickEvent(monthEle,monthBox,'user-detail-form-month-box--active')
    clickEvent(yearEle,yearBox,'user-detail-form-year-box--active')
    var body=document.querySelector('body')
    body.onclick=(e)=>{
        if(e.target==dayEle || e.target.parentNode==dayEle || e.target==monthEle || 
            e.target.parentNode==monthEle || e.target==yearEle || e.target.parentNode==yearEle){
            console.log(true)
        }else{
            dayBox.style.display='none'
            monthBox.style.display='none'
            yearBox.style.display='none'
            dayEle.classList.remove('user-detail-form-day-box--active')
            monthEle.classList.remove('user-detail-form-month-box--active')
            yearEle.classList.remove('user-detail-form-year-box--active')
        }
    }

    var arr=[userDetail,userCredit,userAddress,userChPW]
    Array.prototype.forEach.call(userControlls,(item,index)=>{
        item.onclick=()=>{
            userChooseHandle(userControlls,item,index)
            if(index==1){
                userHandleEle(arr,userDetail)
            }else if(index==2){
                userHandleEle(arr,userCredit)
            }
            else if(index==3){
                userHandleEle(arr,userAddress)
            }
            else if(index==4){
                userHandleEle(arr,userChPW)
            }
        }
    })
    userBoughtListBtn.onclick=()=>{
        userBoughtListHandle.style.display="block"
        userDetailWrap.style.display="none"
        userBoughtListBtn.classList.add('user-bought-list__title--active')
        Array.prototype.forEach.call(userDetailItems,(item,index)=>{
            if(index!=0){
                item.style.display="none"
            }
            if(index==0){
                item.style.cursor='pointer'
                item.onclick=()=>{
                    userBoughtListHandle.style.display="none"
                    userDetailWrap.style.display="block"
                    displayItem()
                    userBoughtListBtn.classList.remove('user-bought-list__title--active')
                }
            }
        })
    }
    var displayItem=()=>{
        Array.prototype.forEach.call(userDetailItems,(item,index)=>{
                item.style.display="block"
        })
    }       
}

var userHandleEle=(arr,eShow)=>{
    eShow.style.display='block'
    for(var i=0;i<arr.length;i++){
        if(arr[i]!=eShow){
            arr[i].style.display='none'
        }
    }
}   

var userChooseHandle=(arr,eShow,index)=>{
    if(index!=0){eShow.classList.add('user-control-item__active')}
    for(var i=0;i<arr.length;i++){
        if(i!=index && index!=0){
            arr[i].classList.remove('user-control-item__active')
        }
    }
}

var clickEvent=(eClick,eShow,modu)=>{
    eClick.onclick=()=>{
        var dayIsClicked=false
        if(eShow.style.display=='block'){
            dayIsClicked=true
        }else{
            dayIsClicked=false
        }
        dayIsClicked=!dayIsClicked
        if(dayIsClicked){
            console.log('block')
            eShow.style.display='block'
            eClick.classList.add(modu)
        }else{
            console.log('none')
            eShow.style.display='none'
            eClick.classList.remove(modu)
        }
    } 
}

var chooseOption=()=>{
    var dayItems=document.querySelectorAll('.user-detail-form-day-item')
    var dayValue=document.querySelector('.user-detail-form-date-wrap__day-value')
    var monthItems=document.querySelectorAll('.user-detail-form-month-item')
    var monthValue=document.querySelector('.user-detail-form-date-wrap__month-value')
    var yearItems=document.querySelectorAll('.user-detail-form-year-item')
    var yearValue=document.querySelector('.user-detail-form-date-wrap__year-value')
    choose(dayItems,dayValue)
    choose(monthItems,monthValue)
    choose(yearItems,yearValue)
}

var choose=(items,vl)=>{
    Array.prototype.forEach.call(items,(item,index)=>{
        item.onclick=()=>{
            vl.innerHTML=item.innerHTML
        }
    })
}

var submit=()=>{
    var submitBtn=document.querySelector('.user-detail-form--submit')
    var dayInput=document.querySelector('.user-detail-form-day-input')
    var monthInput=document.querySelector('.user-detail-form-month-input')
    var yearInput=document.querySelector('.user-detail-form-year-input')
    var dayValue=document.querySelector('.user-detail-form-date-wrap__day-value')
    var monthValue=document.querySelector('.user-detail-form-date-wrap__month-value')
    var yearValue=document.querySelector('.user-detail-form-date-wrap__year-value')
    submitBtn.onclick=(e)=>{
        dayInput.value=dayValue.innerHTML
        monthInput.value=monthValue.innerHTML
        yearInput.value=yearValue.innerHTML
    }
}
var loadBoughtList=()=>{
    var items=document.querySelectorAll('.user-list-bought-item-wrap')
    var nullE=document.querySelector('.user-list-bought--null')
    var boughtList=document.querySelector('.user-list-bought-wrap')
    if(items!=null && boughtList!=null){
        nullE.style.display="none"
        boughtList.style.display="block"
    }
}


loadBoughtList()
loadDate()
click()
chooseOption()
submit()