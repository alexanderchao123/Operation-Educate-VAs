document.addEventListener("DOMContentLoaded", function(event) {
    let tab1 = document.getElementById("tab-1")
    let tab2 = document.getElementById("tab-2")
    let tab3 = document.getElementById("tab-3")
    let next1 = document.getElementById('next-1')
    let next2 = document.getElementById('next-2')
    let back1 = document.getElementById('back-1')
    let back2 = document.getElementById('back-2')

    next1.addEventListener('click',function(e){
        e.preventDefault()
        tab2.classList.remove('hide')
        tab1.classList.add('hide')
    } )

    next2.addEventListener('click',function(e){
        e.preventDefault()
        tab2.classList.add('hide')
        tab3.classList.remove('hide')
    } )

    back1.addEventListener('click', function(e){
        e.preventDefault()
        tab2.classList.add('hide')
        tab1.classList.remove('hide')
    })

    back2.addEventListener('click', function(e){
        e.preventDefault()
        tab2.classList.remove('hide')
        tab3.classList.add('hide')
    })

})
