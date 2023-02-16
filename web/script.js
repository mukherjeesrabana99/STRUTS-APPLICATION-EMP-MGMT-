/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

//GIVE A CALL TO THE API TO FETCH DATA AND DISPLAY THEM ON DOM LOAD
fetchUser = async() => {
    const url = "https://jsonplaceholder.typicode.com/users";
    const response = await fetch(url);
    const data = await response.json();
    console.log(data);
}
fetchUser();
console.log("script loaded");
