<%@ page pageEncoding="UTF-8" %>
<header>

    <div id="topnav">
        <h1><img src="../img/logo_square.PNG" style="height: 75px;"> </h1>
        <div>
            <div class="combi_filters">
                <div class="styles_filter">
                    <h3>Styles</h3>
                    <input type="checkbox" id="styleall" name="styleall" value="*">
                    <span class="box"></span>
                    <label for="styleall">All</label>

                    <input type="checkbox" id="basic" name="basic" value="basic">
                    <span class="box"></span>
                    <label for="basic">basic</label>

                    <input type="checkbox" id="lovely" name="lovely" value="lovely">
                    <span class="box"></span>
                    <label for="lovely">lovely</label>

                    <input type="checkbox" id="unique" name="unique" value="unique">
                    <span class="box"></span>
                    <label for="unique">unique</label>

                    <input type="checkbox" id="elegant" name="elegant" value="elegant">
                    <span class="box"></span>
                    <label for="elegant">elegant</label>

                    <input type="checkbox" id="sexy" name="sexy" value="sexy">
                    <span class="box"></span>
                    <label for="sexy">sexy</label>

                    <input type="checkbox" id="comfortable" name="comfortable" value="comfortable">
                    <span class="box"></span>
                    <label for="comfortable">comfortable</label>




                </div>
            </div>

        </div><!--//헤더 중앙 필터-->
        <ul id = "hmenu" style="font-weight: bold;">
            <li><a href="#"> 마이페이지 | </a></li>
            <li><a href="mycart.do">&nbsp;장바구니 | </a></li>
            <li><a href="myorder.do">&nbsp;주문내역 | </a></li>
            <li><a href="#">&nbsp;로그아웃 </a></li>
        </ul>
    </div>
    <!--헤더 감싸기-->
    <div class="row" style="margin-top: 80px;">
        <!--로고-->
        <div class="col-md-3" style="/*border: 1px solid red;*/">
            <span><a href="main.do"><img src="../img/logo_circle.PNG" style="width: 200px; opacity: 0.7; margin-top: 10px; margin-left: 40px;"></a></span>
        </div><!--//헤더 좌측-->

        <div class="col-md-9" style="/*border: 1px solid blue;*/">

            <div style="/*border: 1px solid green;*/ height:100px; padding-left: 100px; padding-top: 50px;">
                <input type="text" id="searchbar" placeholder="&nbsp;Best For You" style="width: 500px; height: 35px; float: left; border: 2px solid #b391d6; margin-top: 2px; margin-right: 5px;">
                <button type="button" class="btn" style="background-color: #b391d6; color: white; opacity: 0.7; float: left;" ><i class="fa fa-search"></i> 검색</button>

            </div>

            <hr style="clear: both;">

            <div style="/*border: 1px solid yellow;*/ height: 100px;  clear: both; ">
                <ul style="list-style: none; font-weight: bold; padding-top: 30px;">
                    <li style="float: left;"><a href="#">베스트 | </a></li>
                    <li style="float: left;"><a href="#">&nbsp;신상 |</a></li>
                    <li><a href="#">&nbsp;이벤트</a></li>
                </ul>
            </div>

        </div><!--//헤더 우측-->

    </div>
</header>

