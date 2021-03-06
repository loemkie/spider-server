<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="zh-hans">
<head>
<meta charset="UTF-8">
<meta content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0, width=device-width" name="viewport">
<meta content="telephone=no" name="format-detection">
<meta content="email=no" name="format-detection">
<meta content="yes" name="apple-mobile-web-app-capable">
<meta content="black" name="apple-mobile-web-app-status-bar-style">
<title>杭州手机靓号助手</title>
<style>
body,div,a,ul,li {
	margin: 0;
	padding: 0;
	
}
ul,li {
	list-style:none; 
}
img {
	vertical-align:top;
	border: 0;
	margin:0;
}
#body-bg {
	overflow:hidden;
	position:relative;
}
#body-wp {
	position:absolute;
	width:100%;
}
.tra{
	width:5.4%;
	margin-left:-2.7%;
	position:fixed;
	left:50%;
	bottom:1%;
	opacity:1;
	z-index:99;
	-webkit-animation:udom 1.5s linear 0.5s infinite;

}
@-webkit-keyframes udom
{
	0%   {bottom:1.8%;}
	25%  {bottom:3.5%;opacity:1;}
	26%  {bottom:3.5%;opacity:0;}
	30%  {bottom:1.0%;opacity:0;}
	75%  {bottom:1.0%;opacity:0;}
	100% {bottom:1.8%;opacity:1; }
}
.tra .dom {
	width:100%;
}
.bg{ 
	width:100%;
	overflow:hidden;
	position:relative;
}
.bg-c1 {
	background:#ffffff;
}
.warp1-big {
	width:74%;
	margin:9% auto 0;
}
.warp1-text {
	position:absolute;
	opacity:0;
	top:15%;
	left:50%;
	width:60%;
	transition: all 1s ease 0s;
}
.warp1-text img {
	width:100%;
}
.active .warp1-text {
	margin-left:-30%;
	opacity: 1;
	transition-delay: 1s
}
.warp1-big .big1 {
	width:100%;
}
.warp2-big {
	width:82.5%;
	margin:15% auto 0;
}
.warp2-dp {
	width: 46.54%;
	position:absolute;
	top:15%;
	margin-top:210px;
	left:13.5%;
	z-index:2;
}
.active .warp2-dp {
	-webkit-animation:warp-dp 1s 1;
}
@-webkit-keyframes warp-dp
{
	0%   {opacity:0;}
	5%  {opacity:0.5;}
	10%  {opacity:0;}
	15%  {opacity:0.6;}
	20%  {opacity:0;}
	25%  {opacity:0.7;}
	35% {opacity:0;}
	100% {opacity:1; }
}
.bg-c2 img {
	width:100%;
}

.bg-c3 {
	background:#fff;
}
.warp3-big {
	width:91%;
	margin:0 auto 0;
	padding-top:15%;
	opacity:1;
	background:#fff;
	-webkit-transition: all 0.3s ease 0.2s;
}
.warp3-sm {
	width:85%;
	position:absolute;
	background-size:100%;
	z-index:1;
	top:30%;
	left:50%;
	margin-left:-42.5%;
	opacity:0;
	-webkit-transition: all 0.5s ease 0.2s;
}
.active .warp3-sm {
	opacity:1;
	-webkit-transition-delay: 2.5s;
}
.active .warp3-big{
	position:relative;
	opacity:0;
	-webkit-transition: all 0.5s ease 1.8s;
}
.warp3-sm img {
	width:100%;
}
.active .warp3-big{ 
	opacity:0;
	-webkit-transition-delay: 2s;
}
.active .warp3-t1{
	-webkit-animation:warpt1 1s 2;
}
@-webkit-keyframes warpt1
{
	0%   {-webkit-transform:rotate(0deg);}
	10%  {-webkit-transform:rotate(10deg);}
	15%  {-webkit-transform:rotate(5deg);}
	25%  {-webkit-transform:rotate(10deg);}
	40%  {-webkit-transform:rotate(0deg);}
	35% {-webkit-transform:rotate(10deg);}
	45% {-webkit-transform:rotate(4deg);}
	65% {-webkit-transform:rotate(10deg);}
	75% {-webkit-transform:rotate(4deg);}
	100% {-webkit-transform:rotate(0deg);}
}
.active .warp3-t2{
	-webkit-animation:warpt2 1s 2 0.3s;
}
@-webkit-keyframes warpt2
{
	0%   {-webkit-transform:rotate(0deg);}
	10%  {-webkit-transform:rotate(11deg);}
	15%  {-webkit-transform:rotate(3deg);}
	25%  {-webkit-transform:rotate(12deg);}
	40%  {-webkit-transform:rotate(2deg);}
	35% {-webkit-transform:rotate(3deg);}
	65% {-webkit-transform:rotate(8deg);}
	75% {-webkit-transform:rotate(0deg);}
	85% {-webkit-transform:rotate(7deg);}
	100% {-webkit-transform:rotate(0deg);}
}
.active .warp3-t3{
	-webkit-animation:warpt3 1s 2 0.4s;
	
}
@-webkit-keyframes warpt3
{
	0%   {-webkit-transform:rotate(0deg);}
	10%  {-webkit-transform:rotate(-10deg);}
	15%  {-webkit-transform:rotate(-5deg);}
	25%  {-webkit-transform:rotate(-10deg);}
	40%  {-webkit-transform:rotate(0deg);}
	35% {-webkit-transform:rotate(-10deg);}
	45% {-webkit-transform:rotate(0deg);}
	65% {-webkit-transform:rotate(-7deg);}
	75% {-webkit-transform:rotate(0deg);}
	85% {-webkit-transform:rotate(-9deg);}
	100% {-webkit-transform:rotate(0deg);}
}
.active .warp3-t4{
	-webkit-animation:warpt4 1s 2 0.5s;
}
@-webkit-keyframes warpt4
{
	0%   {-webkit-transform:rotate(0deg);}
	10%  {-webkit-transform:rotate(10deg);}
	15%  {-webkit-transform:rotate(3deg);}
	25%  {-webkit-transform:rotate(10deg);}
	40%  {-webkit-transform:rotate(4deg);}
	35% {-webkit-transform:rotate(13deg);}
	45% {-webkit-transform:rotate(0deg);}
	65% {-webkit-transform:rotate(8deg);}
	75% {-webkit-transform:rotate(0deg);}
	85% {-webkit-transform:rotate(10deg);}
	100% {-webkit-transform:rotate(0deg);}
}
.active .warp3-t5{
	-webkit-animation:warpt5 1s 2 0.6s;
}
@-webkit-keyframes warpt5
{
	0%   {-webkit-transform:rotate(0deg);}
	10%  {-webkit-transform:rotate(-8deg);}
	15%  {-webkit-transform:rotate(-6deg);}
	25%  {-webkit-transform:rotate(-12deg);}
	40%  {-webkit-transform:rotate(0deg);}
	35% {-webkit-transform:rotate(-9deg);}
	45% {-webkit-transform:rotate(0deg);}
	65% {-webkit-transform:rotate(-8deg);}
	75% {-webkit-transform:rotate(0deg);}
	85% {-webkit-transform:rotate(-10deg);}
	100% {-webkit-transform:rotate(0deg);}
}
.warp3-big img{
	width:100%;
}
.bg-c4 {
	background:url(images/3XD3mx4JIL.jpg) no-repeat center;
	background-size:100%;
}
.bg-c5 {
   background:#fff;
}
 .bg-c5 img {
	width:100%;
}
.warp5-t1 {
	position:absolute;
	top:25%;
	left:50%;
	width:51.25%;
	margin-left:-25.5%;
	-webkit-transition: all 0.5s ease 1.8s;  
}
.active .warp5-t1{
	opacity:0;
	transition-delay: 2s;
	/*-webkit-animation:warp5-t1 3s;*/
}
@-webkit-keyframes warp5-t1
{
	0%   {opacity:1;}
	75% {opacity:1;}
	100% {opacity:0;}
}
.warp5-t3 {
	position:absolute;
	top:25%;
	left:50%;
	width:51.25%;
	margin-left:-25.5%;
	opacity:1;
	-webkit-transition: all 0.5s ease 1.8s;  
}
.active .warp5-t3{
	opacity:0;
	-webkit-animation:warp5-t1 3.5s;
}
@-webkit-keyframes warp5-t3
{
	0%   {opacity:0;}
	70% { opacity:1;}
	85% {opacity:1;}
	100% {opacity:0;}
}
.warp5-t4 {
	position:absolute;
	top:22%;
	left:50%;
	width:68.6%;
	margin-left:-34.3%;
	margin-top:59px;
	opacity:0;
	-webkit-transition: all 1.2s ease 0s;  
}
.active .warp5-t4{
	opacity: 1;
	-webkit-transition-delay: 3.5s
}
.bg-c6 {
	background:#ff7d26;
}
.bg-c6 img {
	width:100%;
}
.warp6-bc {
	width:100%;
	height:100%;
	position:relative;
	overflow:hidden;
}
.active .warp6-bc{
	animation:bg-c6 12s linear 0.2s infinite;
	-webkit-animation:bg-c6 12s linear 0.2s infinite;
}
@keyframes bg-c6
{
	0%   {background:#ff7d26;}
	33% {background:#00adfe; }
	66% {background:#00ae1d;}
	100% {background:#ff7d26;}
}
@-webkit-keyframes bg-c6
{
	0%   {background:#ff7d26;}
	33% {background:#00adfe; }
	66% {background:#00ae1d;}
	100% {background:#ff7d26;}
}
.warp6-t {
	width:90.625%;
	margin:0 auto 0;
}
.warp6-wp {
	width:90.62%;
	top:18%;
	left:50%;
	margin-left:-45.31%;
	opacity:0; 
	position:absolute;
}
.warp6-wp img {
	width:100%;
	opacity:1;
}
.warp6-t1 {
	opacity:1;
}
.active .warp6-t1{
	animation:warp6-t1 12s linear 0.2s infinite;
	-webkit-animation:warp6-t1 12s linear 0.2s infinite;
}
@keyframes warp6-t1
{
	0%   {opacity:1;}
	28% {opacity:1; }
	32% {opacity:0; }
	66% {opacity:0;}
	99% {opacity:0;}
	100% {opacity:1;}
}
@-webkit-keyframes warp6-t1
{
	0%   {opacity:1;}
	28% {opacity:1; }
	33% {opacity:0; }
	66% {opacity:0;}
	99% {opacity:0;}
	100% {opacity:1;}
}
.active .warp6-t2{
	animation:warp6-t2 12s linear 0.2s infinite;
	-webkit-animation:warp6-t2 12s linear 0.2s infinite;
}
@keyframes warp6-t2
{
	0%   {opacity:0;}
	32% {opacity:0; }
	33% {opacity:1; }
	61% {opacity:1; }
	65% {opacity:0;}
	100% {opacity:0;}
}
@-webkit-keyframes warp6-t2
{
	0%   {opacity:0;}
	32% {opacity:0; }
	33% {opacity:1; }
	61% {opacity:1; }
	65% {opacity:0;}
	100% {opacity:0;}
}
.active .warp6-t3{
	animation:warp6-t3 12s linear 0.2s infinite;
	-webkit-animation:warp6-t3 12s linear 0.2s infinite;
}
@keyframes warp6-t3
{
	0%   {opacity:0;}
	33% {opacity:0; }
	65% {opacity:0;}
	66% {opacity:1;}
	95% {opacity:1; }
	97% {opacity:0;}
	100% {opacity:0;}
}
@-webkit-keyframes warp6-t3
{
	0%   {opacity:0;}
	33% {opacity:0; }
	65% {opacity:0;}
	66% {opacity:1;}
	95% {opacity:1; }
	97% {opacity:0;}
	100% {opacity:0;}
}
.dom_zhub { display:block; width:100%; height:50%;  position:absolute; top:50%; left:0;}
</style>
</head>
<body>
<div id="body-bg">
    <div class="tra" id="up"><img class="dom" src="images/3Wv2Nu9PfR.png"/></div>
    <ul id="body-wp">
        <li class="bg-c1 bg" data-name="bg">
            <div class="warp1-big">
                <img class="big1" src="images/3XD3kyMpP3.png" />
                <div class="warp1-text">
                    <img src="images/3WuwYFJT0f.png" />
                </div>
            </div>
        </li>
        <li class="bg-c2 bg" data-name="bg">
            <div class="warp2-big">
                <img src="images/3XD3lwTQpZ.png">
            </div>
            <div class="warp2-dp">
                <img src="images/3Wv2OhfpQr.png">
            </div>
        </li>
        <li class="bg-c3 bg" data-name="bg" >
             <div class="warp3-big">
                <img class="warp3-t1" src="images/3Wv2qssHHp.png">
                <img class="warp3-t2" src="images/3Wv2rSmV2b.png">
                <img class="warp3-t3" src="images/3Wv2rSmV2b.png">
                <img class="warp3-t4" src="images/3Wv3I5ugOT.png">
                <img class="warp3-t5" src="images/3Wv3MIT1an.png">
            </div>
            <div class="warp3-sm"> 
                <img src="images/3XD3lfBwCz.jpg"/>
            </div>
        </li>
        <li class="bg-c4 bg" data-name="bg" >
            
        </li>
        <li class="bg-c5 bg" data-name="bg" >
            <div class="warp5-t1">
                <img src="images/3Wv3MraYcH.png">
            </div>
            <div class="warp5-t3">
                <img src="images/3Wv3hi29pF.png">
            </div>
            <div class="warp5-t4">
                <img src="images/3XD3lfPUDd.png">
            </div>
        </li>
        <li class="bg-c6 bg" data-name="bg" >
            <div class="warp6-bc">
                <div class="warp6-t"><img src="images/3XD3mQsRnZ.png" /></div>
                <div class="warp6-t1 warp6-wp"><img src="images/3Wv3ph2ju1.png" /></div>
                <div class="warp6-t2 warp6-wp"><img src="images/3Wv3o7Ps4D.png" /></div>
                <div class="warp6-t3 warp6-wp"><img src="images/3Wv3pPl3Zd.png" /></div>
            </div>
            <a class="dom_zhub" href="https://mp.weixin.qq.com/s/gVgnvFhNvPyR6PvUlPycRA"></a>
        </li>
    </ul>
</div>


</body>
<script type="text/javascript">
var app = {
    init:function(json){
        this.main(json);
        this.touch.touchMove();
    },
    main:function (json) {
        this.tag.dom = this.findDom(json.dom);
        this.mainHg(json.dom);
        this.dom.addClass(this.tag.dom,0);
    },
    findDom: function (typeName){
        var _a = document.getElementsByTagName(typeName[0]),
            _num = [];
        for (var i = 0; i<_a.length; i++){
            if(_a[i].getAttribute(typeName[1]) == typeName[2]){
                _num.push(_a[i]);
            }
        }
        return _num;
    },
    tag:{
        time:true,
        dom:null
    },
    dom:{
        addClass:function (div,sum) {
            var classN;
            for(var i = 0; i<div.length; i++){
                classN = div[i].className;
                div[i].className = classN.replace(" active","");
                if(i == sum){
                   div[sum].className = classN+" active";
                }
                if(sum == div.length-1){
                    document.getElementById("up").style.display="none";
                }else {
                    document.getElementById("up").style.display="inline-block";
                }  
            }
        }
    },
    mainHg: function (dom) {
        var _dom = this.findDom(dom),
            _body = document.getElementById("body-bg"),
            _height = document.documentElement.clientHeight;

        if(_height<350){
            _height = _height*2;
        }
        for(var i=0;i<_dom.length;i++){
            _dom[i].style.height = _height +"px";
        }
        _body.style.height = _height + "px";

    },
    move:{
        main:function(div,i,top){
            var sum =0,
                _div = div;

            if(top<0){
                i < (app.tag.dom.length-1)&& i++;
                sum = -1;
            }else {
                i >0&& i--;
                sum = 1;
            }
            app.move.moves(_div,sum,i);
            return i;
        },
        moves:function(div,sum,i){
            var time,
                des = 1*sum,
                maxT,
                maxHe
                _height = document.getElementById("body-bg").clientHeight,
                div_li = app.tag.dom;
            app.tag.time = false;
            time = setInterval(function () {
                maxT = div.offsetTop;
                maxHe = (_height - Math.abs(maxT%_height))*sum;
                if( maxHe > des && sum == -1){

                    des = maxHe;
                    div.style.top = maxT + des +"px";
                    app.tag.time = true;
                    clearInterval(time);
                }else if ((_height-maxHe) < des && sum == 1 && Math.abs(maxT%_height) !=0) {
                    des = Math.abs(maxT%_height);
                    div.style.top = maxT + des +"px";
                    app.tag.time = true;
                    clearInterval(time);
                }else{
                    des = des+1*sum;
                    div.style.top = maxT + des +"px";
                }
            },10);
            setTimeout(function(){
                app.dom.addClass(app.tag.dom,i);
            },800)
            
            
        }
    },
    touch:{
        touchMove:function(){
            var _div = document.getElementById("body-bg"),
                _wp = document.getElementById("body-wp"),
                _wp_li = app.tag.dom.length-1,
                _strat,_end,_move,i=0,
                _top = _wp.offsetTop,
                _height = document.getElementById("body-bg").clientHeight;
            _div.addEventListener("touchstart", function (event){
                var touch = event.touches[0];
                _strat = touch.pageY;

            }, false);
            _div.addEventListener("touchmove", function (event){
                var touch = event.touches[0];
                _end = touch.pageY;
                _move = _end-_strat;
                _top = _wp.offsetTop;

                if(_top >= 0&&_move>0){
                    return false;
                }else if (_top <= -_height*_wp_li&&_move<0){
                    return false;
                }else if(_top== 0 || _top%_height  == 0){
                    
                    if(app.tag.time){
                        i = app.move.main(_wp,i,_move);
                    }      
                }
            }, false);
            
        }
    }
}
app.init({
    dom:["li","data-name","bg"],
    mouse:"body-wp"
});
</script>

</html>