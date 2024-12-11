        document.getElementById('encbutton').addEventListener('click',function () {
            
        var Sourcestring   = document.getElementById('originalstring').value;
        var Password = document.getElementById('password').value;
        var encrypted = CryptoJS.AES.encrypt(Sourcestring, Password);
        document.getElementById("encryptedtext").innerHTML = encrypted;
        })
        document.getElementById('decbutton').addEventListener('click',function () {
            var encrypted = document.getElementById('encryptedstoragetext').value
            var Password = document.getElementById('password1').value;
            var decrypted = CryptoJS.AES.decrypt(encrypted, Password);
            document.getElementById("decryptedtext").innerHTML = decrypted.toString(CryptoJS.enc.Utf8);
            })