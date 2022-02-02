var loadPage=function(){
    var mess=document.querySelector('.form-mess')
    var btnRegister=document.querySelectorAll('.form-sigup-btn')
    
}

var changeFormSigupStyle=function(){
    var signup=document.querySelector('.form-register-to-signup')
    var register=document.getElementsByClassName('form-sigup-to-reg')
    var qrChange=document.querySelector('.form-sigup-style-change')
    var sigChange=document.querySelector('.form-qr-style-change')
    var qrFrom=document.querySelector('.sigup-qr-form-wrap')
    var sigupFrom=document.querySelector('.signup-form-wrap')
    var registerFrom=document.querySelector('.register-form-wrap')
    var headerTitle=document.querySelector('.header-signup-title')
 	var mess=document.querySelector('.form-mess') 
					        
    signup.onclick=function(){
        sigupFrom.style.display="block"
        registerFrom.style.display="none"
        headerTitle.innerHTML=`${title1}`
		mess.innerHTML=""
    }

    Array.prototype.forEach.call(register,(item,index)=>{
        item.onclick=function(){
            sigupFrom.style.display="none"
            qrFrom.style.display="none"
            registerFrom.style.display="block"
            headerTitle.innerHTML=`${title2}`
        }
    })

    qrChange.onclick=function(){
        qrFrom.style.display="block"
        registerFrom.style.display="none"
        sigupFrom.style.display="none"
    }

    sigChange.onclick=function(){
        qrFrom.style.display="none"
        registerFrom.style.display="none"
        sigupFrom.style.display="block"
    }
}

var clearMess= ()=> {
    var inputs=document.querySelectorAll('.form-signup-input')
    var mess=document.querySelector('.form-mess') 
    Array.prototype.forEach.call(inputs,(input,index)=>{
        input.onclick=()=>{
            mess.innerHTML=""
        }
    })
}

clearMess()
loadPage()
changeFormSigupStyle()