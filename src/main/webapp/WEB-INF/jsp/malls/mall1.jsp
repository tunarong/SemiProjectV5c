<%@ page pageEncoding="UTF-8" %>


<!DOCTYPE html>
<head lang="ko">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link href="css/normalize.css" rel="stylesheet">
    <link rel="stylesheet" href="tj/css/bootstrap.min.css">
    <link rel="stylesheet" href="tj/fa47/css/font-awesome.min.css">
    <link rel="stylesheet" href="tj/css/malls.css">

    <style>

        #topnav {height: 75px; padding: 1rem; color: white; background: teal;  font-weight: bold; display: flex; justify-content: space-between;
            align-items: center; position: fixed; top: 0; width: 100%; left: 0; right: 0; opacity: 0.3;
            background: #641180; z-index: 2;}


        #logo{width : 200px; height: 200px; margin:0px; padding:0; float: left; padding-top: 75px;}
        #topmenu {width: 900px; height: 120px; float: right; margin: 0; padding: 0; padding-top: 75px;}
        #search {margin-left: 0px; margin-top:50px; top:100px; left: -100px; }
        #searchbar {width: 350px; height: 35px; }

        #hmenu { list-style-type: none; float: right; margin-top: 0px; margin-top:20px;}
        #hmenu li {float: left;}

        #hr1 {width: 1300px; float: right; margin-top:70px; padding: 0; }
        #nav {margin: 0px;}
        #nmenu {list-style-type: none; top: 20px; float: left; margin-top: 0px; margin-left: 200px;}
        #nmenu li {float: left;}


        #main {clear: both; float: left; }
        .malls { width: 1600px; height: 500px; margin-left: 20px; margin-top: 50px; }
        .shoplogo {width: 1425px; height: 100px; float: left; margin-top: 80px; margin-bottom: 30px; margin-left: 50px;}
        .introimg {width: 320px; height: 450px; }
        .product {float: left; margin-left: 30px; margin-right: 20px; margin-bottom: 50px;}
        .product span {display: table-row;}

        .pagingnum {clear: both; margin-top: 50px; padding-top: 50px;}
        .pagination justify-content-center { margin-top: 50px; padding-top: 50px;}



        @import url(https://fonts.googleapis.com/css?family=Oswald);
        @import url(https://fonts.googleapis.com/css?family=Quattrocento);
        .snip1361 {
            font-family: 'Quattrocento', Arial, sans-serif;
            position: relative;
            overflow: hidden;
            margin: 0px;
            min-width: 230px;
            max-width: 315px;
            width: 100%;
            color: #141414;
            text-align: left;
            line-height: 1.4em;
            font-size: 16px;
        }
        .snip1361 * {
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            -webkit-transition: all 0.35s ease;
            transition: all 0.35s ease;
        }
        .snip1361 img {
            max-width: 100%;
            vertical-align: top;
        }
        .snip1361 figcaption {
            position: absolute;
            top: calc(110%);
            width: 100%;
            background-color: #ffffff;
            padding: 15px 25px 65px;
        }
        .snip1361 figcaption:before {
            position: absolute;
            content: '';
            z-index: 2;
            bottom: 100%;
            left: 0;
            width: 100%;
            height: 80px;
            background-image: -webkit-linear-gradient(top, transparent 0%, #ffffff 100%);
            background-image: linear-gradient(to bottom, transparent 0%, #ffffff 100%);
        }
        .snip1361 h3,
        .snip1361 p {
            margin: 0 0 10px;
        }
        .snip1361 h3 {
            font-weight: 300;
            font-size: 1.4em;
            line-height: 1.2em;
            font-family: 'Oswald', Arial, sans-serif;
            text-transform: uppercase;
        }
        .snip1361 p {
            font-size: 0.9em;
            letter-spacing: 1px;
            opacity: 0.9;
        }
        .snip1361 a {
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            z-index: 2;
        }
        .snip1361:hover figcaption,
        .snip1361.hover figcaption {
            top: 320px;
        }

    </style>

    <title>main</title>


</head>
<body>


<header>

    <div id="topnav">
        <h1>Brand</h1>
        <nav>
            <span>Menu1</span>
            <span>Menu2</span>
            <span>Menu3</span>
        </nav>
    </div>

    <span id="logo"><a href="main.html"><img src="" style="width: 200px;"></a></span>
    <div id="topmenu">
        <ul id = "hmenu">
            <li>마이페이지 | </li>
            <li>장바구니 | </li>
            <li>주문내역 | </li>
            <li>로그아웃 </li>
        </ul>

        <div id ="search"><input type="text" id="searchbar" placeholder="검색어를 입력하세요">
            <button>검색</button></div>
    </div>
</header>
<hr id="hr1">
<nav id="nav">
    <ul id = "nmenu">
        <li>베스트 | </li>
        <li>신상 | </li>
        <li>이벤트 |</li>
    </ul>
</nav>

<main id="main">
    <img src="img/shoplogo1.png" id="shoplogo1" class="shoplogo">
    <div id="malls1" class="malls">

        <!--반복-->
        <div class="product">
            <body onload="showImage()">
            <figure class="snip1361">
                <img id="introimg1" border="0" class="introimg" data-toggle="modal" data-target="#modal1">
                <figcaption>
                    <h3>양승혁</h3>
                    <p>Weekends don't count unless you spend them doing something completely pointless.</p>
                </figcaption>
            </figure>

            <span>이름</span>
            <span>할인율</span>
            <span>가격</span>
            </body>
        </div>



    </div>
</main>

<%--페이지네비--%>
<div class="pagingnum">
    <div class="col-12">
        <nav>
            <ul class="pagination justify-content-center">
                <li class="page-item disabled">
                    <a href="#" class="page-link">이전</a></li>
                <li class="page-item active">
                    <a href="#" class="page-link">1</a></li>
                <li class="page-item">
                    <a href="#" class="page-link">2</a></li>
                <li class="page-item">
                    <a href="#" class="page-link">3</a></li>
                <li class="page-item ">
                    <a href="#" class="page-link">4</a></li>
                <li class="page-item ">
                    <a href="#" class="page-link">5</a></li>
                <li class="page-item ">
                    <a href="#" class="page-link">6</a></li>
                <li class="page-item ">
                    <a href="#" class="page-link">7</a></li>
                <li class="page-item ">
                    <a href="#" class="page-link">8</a></li>
                <li class="page-item ">
                    <a href="#" class="page-link">9</a></li>
                <li class="page-item ">
                    <a href="#" class="page-link">10</a></li>
                <li class="page-item ">
                    <a href="#" class="page-link">다음</a></li>
            </ul>
        </nav>
    </div>
</div>

<!--modal-->
<!--모달 대화상자-->
<div class="modal fade" role="dialog" id="modal1" >
    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">★댕댕이 원피스★</h5>
                <button class="btn btn-light" type="button"
                        data-dismiss="modal"><i class="fa fa-remove"></i></button>
            </div>
            <div class="modal-body">

                <nav class="navbar navbar-expand-md navbar-light bg-light">
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav nav-fill w-100">
                            <li class="nav-item">
                                <a href="#select">옵션선택</a></li>
                            <li class="nav-item">
                                <a href="#iteminfo">제품상세</a></li>
                            <li class="nav-item">
                                <a href="#review">리뷰</a></li>
                            <li class="nav-item">
                                <a href="#qna">문의사항</a></li>
                        </ul>
                    </div>
                </nav>

                <div class="row">
                    <div>
                        <article class="modal_article" >
                            <div class="modal_select">
                                <a name="select"></a>
                                <div class="img_info col-md-4">
                                    <img src="../img/arong1.jpg" class="item_img">
                                </div>
                                <div class="img_info col-md-8">
                                    <table class="table">
                                        <thead class="thead">
                                        <th><td colspan="3">댕댕이 원피스</td></th>
                                        </thead>
                                        <tbody>
                                        <tr><td class="tbody_list">가격</td><td class="tbody_space"></td><td>35000원</td></tr>
                                        <tr><td class="tbody_list">상품코드</td><td class="tbody_space"></td><td>m000001</td></tr>
                                        <tr><td class="tbody_list">색상</td><td class="tbody_space"></td>
                                            <td><select name="color">
                                                <option value="ivory">아이보리</option>
                                                <option value="black">블랙</option>
                                                <option value="orange">오렌지</option>
                                                <option value="blue">블루</option>
                                            </select></td></tr>
                                        <tr><td class="tbody_list">사이즈</td><td class="tbody_space"></td>
                                            <td><select name="size">
                                                <option value="s">s</option>
                                                <option value="m">M</option>
                                                <option value="l">L</option>
                                                <option value="xl">XL</option>
                                            </select></td></tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <p class="modal_iteminfo"><a name="iteminfo"></a>멍멍아 밥먹어라 멍멍아 밥먹어라 멍멍아 밥먹어라
                               상세정보
                            </p>
                            <p><a name="review"></a>
                                리뷰게시판
                            </p>
                            <p><a name="qna"></a>
                                문의사항
                            </p>
                        </article>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger"><i class="fa fa-shopping-cart"></i> 장바구니</button>
                <button type="button" class="btn btn-primary" data-dismidd="modal"><i class="fa fa-calculator"></i> 구매하기</button>
            </div>
        </div>
    </div>
</div>


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script src="tj/js/bootstrap.min.js"></script>

<script type="text/javascript">
    var imgArray=new Array();
    imgArray[0]="../img/arong1.jpg";
    imgArray[1]="../img/arong3.jpg";
    imgArray[2]="../img/arong4.jpg";
    imgArray[3]="../img/arong5.jpg";

    function showImage(){
        var imgNum=Math.round(Math.random()*3);
        var objImg=document.getElementById("introimg1");
        objImg.src=imgArray[imgNum];
        setTimeout(showImage,500); }
</script>

<script>

    $(".hover").mouseleave(
        function () {
            $(this).removeClass("hover");
        }
    );
</script>


</body>
</html>