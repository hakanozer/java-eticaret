$(document).ready(function () {
    $('#gonder').click(function () {
        var adi = $('#adi').val().trim();
        var yolu = $('#yolu').val().trim();
        var url = $('#url').val().trim();
        if (adi == "") {
            $('#adi').css({
                border: "1px solid red"
            });
            $('#url').css({
                border: "1px solid"
            });
            $('#yolu').css({
                border: "1px solid"
            });
            return false;
        } else if (yolu == "") {
            $('#yolu').css({
                border: "1px solid red"
            });
            $('#adi').css({
                border: "1px solid"
            });
            $('#url').css({
                border: "1px solid"
            });
            return false;
        } else if (url == "") {
            $('#url').css({
                border: "1px solid red"
            });
            $('#adi').css({
                border: "1px solid"
            });
            $('#yolu').css({
                border: "1px solid"
            });
            return false;
        } else {
            return true;

        }
    })

    var _URL = window.URL || window.webkitURL;
    $('#foto').change(function () {
        var file, img;
        if ((file = this.files[0])) {
            img = new Image();
            img.onload = function () {
                $('#photoWidth').val(this.width);
                $('#photoHeight').val(this.height);

            };
            img.src = _URL.createObjectURL(file);
        }
        if (this.files[0].size > 3240000) {
            alert("Dosya maximum 3 mb olmalı");
            return false;
        }
        var strAdi = $('#foto').val();
        var strYolu = "C:\\Users\\aykut\\Desktop\\hoca\\UploadImage-son\\img\\";
        strAdi = strAdi.substring(strAdi.lastIndexOf("\\") + 1, strAdi.length);
        strYolu += strAdi;
        $('#adi').val(strAdi);
        $('#yolu').val(strYolu);

    })
    $('#foto').click(function () {
        $('#adi').val("");
        $('#yolu').val("");
        $('#photoWidth').val("");
        $('#photoHeight').val("");
        $('#url').val("");
    })
});




