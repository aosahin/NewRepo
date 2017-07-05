<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/awesome-bootstrap-checkbox/0.3.5/awesome-bootstrap-checkbox.min.css" />
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" />
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        body {
            font: 20px Montserrat, sans-serif;
            line-height: 1.8;
            color: #f5f6f7;
        }
        p {font-size: 16px;}
        .margin {margin-bottom: 45px;}
        .bg-1 {
            background-color: #1abc9c; /* Green */
            color: #ffffff;
        }
        .bg-2 {
            background-color: #474e5d; /* Dark Blue */
            color: #ffffff;
        }
        .bg-3 {
            background-color: #ffffff; /* White */
            color: #555555;
        }
        .bg-4 {
            background-color: #2f2f2f; /* Black Gray */
            color: #fff;
        }
        .container-fluid {
            padding-top: 70px;
            padding-bottom: 70px;
        }

        .navbar-nav  li a:hover {
            color: #1abc9c !important;
        }
        input[type="radio"].styled:checked+label:after {
            font-family: 'FontAwesome';
            content: '';
        }
        #dateRangeForm .form-control-feedback {
            top: 0;
            right: -15px;
        }
    </style>
</head>
<body>



<!-- First Container -->
<div class="container-fluid bg-3 text-center">

    <h1>LOKUMCU BABA</h1>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">

            <div class="item active">
                <img class="img-responsive center-block" src="assets\images\safran.jpg" alt="LOKUMCU BABA" style="width:100%;">
                <div class="carousel-caption">
                    <h3>BİRLİKTE BÜYÜYELİM</h3>
                    <p>İlk adımımızı atıyoruz!</p>
                </div>
            </div>

            <div class="item">
                <img class="img-responsive center-block" src="assets\images\safran1.jpg" alt="LOKUMCU BABA" style="width:90%;">
                <div class="carousel-caption">
                    <h3>BİRLİKTE BÜYÜYELİM</h3>
                    <p>90 yıllık deneyim</p>
                </div>
            </div>

            <div class="item">
                <img class="img-responsive center-block" src="assets\images\safran1.png" alt="LOKUMCU BABA" style="width:100%;">
                <div class="carousel-caption">
                    <h3>BİRLİKTE BÜYÜYELİM</h3>
                    <p>Hedefimiz Tüm Türkiye</p>
                </div>
            </div>

        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>


<!-- Second Container -->


<div class="container-fluid bg-2 text-center">
    <h2>BAYİLİK BAŞVURU FORMU</h2>
    <p> </p>
    <p> </p>
    <form   action="ekle" method="POST" name="form" >
        <div class="form-group">
            <label class="control-label" for="name" >İSİM SOYİSİM:</label>
            <input type="text" class="form-control" id="name" placeholder="İsim giriniz" name="name" required
                   data-fv-notempty-message="The username is required">
        </div>
        <div class="form-group">
            <label class="control-label" for="tc">TC KİMLİK NUMARASI:</label>
            <input type="text"  maxlength="11" minlength="11" class="form-control" id="tc" placeholder="TC kimlik numarası giriniz..." name="tc" required
                   data-fv-notempty-message="The username is required">
        </div>
        <div class="form-group">
            <label class="control-label" for="adres">ADRES:</label>
            <input type="text" class="form-control" id="adres" placeholder="Adres giriniz..." name="adres" required
                   data-fv-notempty-message="The username is required">
        </div>
        <div class="form-group">
            <label class="control-label" for="tel">TELEFON NO:</label>
            <input type="tel" class="form-control" id="tel" placeholder="Telefon numarası giriniz..." name="tel" required
                   data-fv-notempty-message="The username is required">
        </div>
        <div class="form-group">
            <label class="control-label" for="email">EMAİL:</label>
            <input type="email" class="form-control" id="email" placeholder="Email giriniz..." name="email" required
                   data-fv-notempty-message="The username is required">
        </div>
        <div class="form-group">
            <label class="control-label" for="dtarih">DOĞUM TARİHİ:</label>
            <input type="date" class="form-control" id="dtarih" value="YYYY-AA-GG" name="dtarih" required
                   data-fv-notempty-message="The username is required"/>
        </div>
        <div class="form-group">
            <label class="control-label" for="per">PERAKENDE TİCARETİ İLE UĞRAŞTINIZ MI? </label>
            <input type="text" class="form-control" id="per" placeholder="Perakende ile uğraştınız mı?" name="per" required
                   data-fv-notempty-message="The username is required">

        </div>
        <div class="form-group">
            <label class="control-label" for="tercih">LOKUMCU BABA’YI TERCİH ETMENİZİN SEBEBİ NEDİR?</label>
            <input type="text" class="form-control" id="tercih" placeholder="tercih sebebiniz nedir?" name="tercih" required
                   data-fv-notempty-message="The username is required">
        </div>

        <div class="form-group">
            <label class="control-label" for="il">HANGİ İL/İLÇE/SEMT İÇİN LOKUMCU BABA İŞLETMECİLİĞİ DÜŞÜNÜYORSUNUZ? </label>
            <input type="text" class="form-control" id="il" placeholder="Lütfen il/ilçe giriniz..." name="il" required
                   data-fv-notempty-message="The username is required">
        </div>


        <div class="form-group">
            <label class="control-label" for="yat">YATIRIM MİKTARINIZ NEDİR? </label>
            <input type="text" class="form-control" id="yat" placeholder="Yatırım miktrınızı giriniz..." name="yat" required
                   data-fv-notempty-message="The username is required">
        </div>
        <div class="form-group">
            <label  for="ek">EKLEMEK İSTEDİKLERİNİZ</label>
            <textarea class="form-control" id="ek" placeholder="Eklemek istedikleriniz..." rows="10" name="ek"></textarea>
        </div>

        <div class="form-group">
            <div class="checkbox">
                <label>
                    <input type="checkbox" id="terms" data-error="Before you wreck yourself" required>
                    Check yourself
                </label>
                <div class="help-block with-errors"> </div>
            </div>
        </div>


        <a href="#section1"><input type="submit" class="btn btn-primary" data-toggle="modal" value="EKLE" />	</a>


        <!-- Modal -->
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Modal Header</h4>
                    </div>
                    <div class="modal-body">
                        <p>${info} ${message} Info!</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>



                </div>

            </div>
        </div>


    </form>



    <!-- Third Container (Grid) -->
    <div class="container-fluid bg-3 text-center">

        <div class="row">
            <div class="col-sm-6">
                <h2>ADRES</h2>
                <p>Mavi bahçeli cad.Köşeli sok.No:126</p>
                <p>Çorlu/TEKİRDAĞ</p>
            </div>
            <div class="col-sm-6">
                <h2>İLETİŞİM</h2>
                <p>TELEFON:0 (282) 245-87-46</p>
                <p>FAKS:0 (266) 243-52-73</p>
                <p>E-MAİL:lokumcubaba@gmail.com</p>
            </div>
        </div>
        <img class="img-responsive center-block" src="assets\images\contact.jpg"  style="width:50%" >
    </div>

    <!-- Footer -->
    <footer class="container-fluid bg-4 text-center">
        <p>ALPTUĞ OĞUZHAN ŞAHİN                 ® 2017</p>
    </footer>

</body>

</html>