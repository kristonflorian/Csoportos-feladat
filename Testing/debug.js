        // INIT
        var myString   = "blablabla Card game bla";
        var myPassword = "myPassword";
        
        // PROCESS
        document.getElementById('encbutton').addEventListener('click',function () {
            
        var myString   = document.getElementById('originalstring').value;
        var myPassword = document.getElementById('password').value;
        var encrypted = CryptoJS.AES.encrypt(myString, myPassword);
        document.getElementById("encryptedtext").innerHTML = encrypted;
        })
        document.getElementById('decbutton').addEventListener('click',function () {
            var encrypted = document.getElementById('encryptedstoragetext').value
            var myPassword = document.getElementById('password1').value;
            var decrypted = CryptoJS.AES.decrypt(encrypted, myPassword);
            document.getElementById("decryptedtext").innerHTML = decrypted.toString(CryptoJS.enc.Utf8);
            })