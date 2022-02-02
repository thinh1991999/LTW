/**
 * 
 */
var pagination=function(){
    var activePage=1;
    var allProduct=document.getElementsByClassName('home-product-wrap')
    var numberPage=10;
    var countPage=Math.floor(allProduct.length / numberPage);
    var paginationUl=document.querySelector('.home-product__pagination');
    var paginatonHtml=``
    if(allProduct.length%numberPage !=0){
        countPage=countPage+1;
    }
    if(countPage<=5){
        paginatonHtml+=`<li class="pagination-item  pagination-item--left">
                            <div href="" class="pagination-item__link">
                                <i class="pagination-item__icon fas fa-angle-left"></i>
                            </div>
                        </li>`
        for(var i=1;i<=countPage;i++){
            paginatonHtml+=` <li class="pagination-item pagination-item-number">
                                <div href="" class="pagination-item__link">${i}</div>
                            </li>`
        }
        paginatonHtml+=`
        <li class="pagination-item pagination-item--right">
            <div href="" class="pagination-item__link">
                <i class="pagination-item__icon fas fa-angle-right"></i>
            </div>
        </li>
        `
    }else{
        paginatonHtml+=`<li class="pagination-item  pagination-item--left">
                            <div href="" class="pagination-item__link">
                                <i class="pagination-item__icon fas fa-angle-left"></i>
                            </div>
                        </li>`
        for(var i=1;i<=countPage;i++){
            paginatonHtml+=` <li class="pagination-item pagination-item-number">
                                <div href="" class="pagination-item__link">${i}</div>
                            </li>`
        }
        paginatonHtml+=`
                        <li class="pagination-item">
                            <div href="" class="pagination-item__link">...</div>
                        </li>
                        <li class="pagination-item pagination-item--right">
                            <div href="" class="pagination-item__link">
                                <i class="pagination-item__icon fas fa-angle-right"></i>
                            </div>
                        </li>
                        `
    }

    paginationUl.innerHTML=paginatonHtml

    var paginationNumber=document.getElementsByClassName('pagination-item-number')
    
    var loadPag=function(){
        if(activePage<1){
            activePage=1
        }
        if(activePage>=paginationNumber.length){
            activePage=paginationNumber.length
        }
        Array.prototype.forEach.call(allProduct,(product,index)=>{
            if((numberPage*(activePage-1))<=index && index<(numberPage*activePage)){
                product.style.display="block"
            }else{
                product.style.display="none"
            }
        })
     } 
     loadPag()
    Array.prototype.forEach.call(paginationNumber,(pag,index)=>{
       if((index+1)==activePage){
        pag.classList.add('pagination-item--active')
       }
       pag.onclick=function(){
        pag.classList.add('pagination-item--active')
        activePage=index+1
        // console.log(activePage)
        loadPagNumber(activePage)
        loadPag()
       }
    })
    
    var loadPagNumber=function(n){
        if(n<1){
            n=1
        }
        var paginationNumber=document.getElementsByClassName('pagination-item-number')
        if(n>=5 && n<paginationNumber.length){
            paginationNumber[n].style.display="block"
            for(var i=1;i<=(n-5);i++){
                paginationNumber[i].style.display="none"
            }

        }
        Array.prototype.forEach.call(paginationNumber,(pag,index)=>{
        if((index+1)==n){
            pag.classList.add('pagination-item--active')
        }
        else{
            pag.classList.remove('pagination-item--active')
        }
        if((index+1)>5 && n<=4){
            pag.style.display="none"
        }
        if(n<5){
            if(index<=5){
                pag.style.display="block"
            }
        }
        
        })
    }
    

    var leftBtn=document.querySelector('.pagination-item--left')
    var rightBtn=document.querySelector('.pagination-item--right')
    leftBtn.onclick=function(){
        activePage--
        loadPag()
        loadPagNumber(activePage)
        console.log(activePage)
    }
    rightBtn.onclick=function(){
        activePage++
        loadPag()
        loadPagNumber(activePage)
        console.log(activePage)
    }
    loadPagNumber(activePage)
}

var noItemHandle=function(){
    const itemList=document.querySelectorAll('.home-product-item')
    const noItem=document.querySelector('.home__no-item')
    const homeMenu=document.querySelector('.home__menu')
    const homeNavSearch=document.querySelector('.home__nav-search')
    const homePag=document.querySelector('.home-product__pagination')
    if(itemList.length===0) {
        noItem.style.display='flex'
        homeMenu.style.display='none'
        homeNavSearch.style.display='none'
        homePag.style.display='none'
		console.log(123)
    }
}

pagination()
noItemHandle()