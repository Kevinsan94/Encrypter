<%-- 
    Document   : encrypterView
    Created on : Mar 22, 2018, 8:41:52 PM
    Author     : kevin
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    <head>
        <title>Encrypter</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
       
        <style>
            body {
                align-content: center;
                text-align: center;
                background-image: url("background.png");
                background-size: 100%
            }
            .title {
                align-content: center;
                font-size: 48px; 
                padding-top: 10px;
                margin-top: 20px;
                margin-left: 80px;
                margin-right: 80px;
                margin-bottom: 40px;
                color: white;   
                }
            .form {
                align-content: center; 
                background-color: #005497;
                padding-top: 30px;
                opacity: .7;
                margin-left: 350px;
                margin-right: 350px;
                border-radius: 20px;
              }
              
            #phrase{
                width: 500px;
                height: 30px;
                font-size: 24px;
                
            }
            #button{
                margin-top: 10px;
                align-content: center;
                width: 100px;
                height: 30px;
            }
            .results{
                text-align: left;
                margin-top: 20px;
                font-size: 24px;
            }
            p{
                background-color: white;
                background: white;
                margin-left: 20px;
                margin-right: 20px;
                width: 500px;
                height: 30px;
                font-size: 22px;
                
            }
            B{
               margin-left: 20px;
            }
        </style>
    </head>
    
    <body>
        <div class="title">
            <a>Encriptador en base a matrices</a>
        </div>
        <div class="form">
            <form method="POST" action="doEncrypt">
                <input id="phrase" type="text" name="phrase" 
                       placeholder="Frase a encriptar o desencriptar"><br/>
				<input id="key" type="text" name="key" 
                       placeholder="LLave para encriptar"><br/>
                <input id="button" type="submit" value= "Submit"/><br/>
            </form>
             <div class="results">
                <B>Texto introducido: </B><p id="m1">${phrase}</p><br/>
				<B>Llave: </B><p id="m1">${key}</p><br/>
                <B>Texto encriptado: </B><p id="m1">${enc}</p><br/>
				<B>Llave inversa: </B><p id="m1">${inv}</p><br/>
			
             </div>
            
        </div>
    </body>
</html>
