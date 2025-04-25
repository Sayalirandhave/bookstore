const buyButton = document.querySelectorAll('.buyButton');
const bkid = document.querySelector('.book-id-included').getAttribute('data-id'); 
const updateCartCount1 = document.querySelector('.cart-count');
const updateCartCount2 = document.querySelector('.cart-count-mb');
// console.log(bkid)
buyButton.forEach((buy=>{
    buy.addEventListener('click',()=>{
        if(CheckUserStatus())
        {
            // updateCartCount1 = for desktop cart
            // updateCartCount2 = for mobile cart 
            fetchData(bkid,updateCartCount1,updateCartCount2);
            
                const msg = document.createElement('div');
                msg.classList.add('success-msg','py-2','px-4','bg-black','text-white','rounded-md','w-fit','fixed','top-28','left-1/2','translate-x-[-50%]','translate-y-[-50%]');
                msg.innerHTML = "Product added into cart";
                // console.log(msg)
                document.querySelector('body').append(msg);
                setTimeout(()=>{
                    document.querySelector('body').removeChild(document.querySelector('.success-msg'));
                },4000);
         }
       
        });

}))
// console.log(id,bkName)

    function fetchData(id=0,newcCart1="",newcCart2="")
    {
    // Using XMLHttpRequest
    const url = 'http://localhost/bookstore/ajaxPhp/addToCart.php';
    const data = id;

    const xhr = new XMLHttpRequest();
    xhr.open('POST', url, true);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

    xhr.onreadystatechange = function () {
    if (xhr.readyState === 4 && xhr.status === 200) {
        // Handle the response data
        const responseData = xhr.responseText;
        // this shows the error
        newcCart1.innerHTML = responseData;
        newcCart2.innerHTML = responseData;
        // console.log('Response:', responseData);
    } else if (xhr.readyState === 4) {
        // Handle errors
        console.error('Error:', xhr.status, xhr.statusText);
    }
    };

    xhr.send("id="+data);

    }
  