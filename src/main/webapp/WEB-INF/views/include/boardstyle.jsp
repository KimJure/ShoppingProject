
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>

@charset "utf-8";

/*사이트 포인트색*/
.wset {background:#f33e31;border:1px solid #f33e31;color:#fff !important;}
.wset:hover {background:#de372c;border:1px solid #de372c;color:#fff !important;}

table .spr,.total_price .spr {display:inline-block;}

/*타이틀강조*/
.anc_tit {padding:0 0 7px 10px;font-size:13px;font-weight:600;position:relative;}
.anc_tit:after {width:4px;height:14px;background-color:#f33e31;display:inline-block;position:absolute;left:0;top:1px;content:'';}

/*인트로*/
#intro {width:1000px;height:570px;margin:-285px 0 0 -500px;position:absolute;top:50%;left:50%;}
#intro .int_copy {color:#888;text-align:center;margin:10px 0 0;line-height:1.6em;}
#int_wrap {padding:40px;border:5px solid #f1f1f1;overflow:hidden;}
#int_wrap .rbanner {width:410px;height:410px;padding-left:40px;border-left:1px solid #eee;float:right;}
#int_wrap .rbanner .bx-wrapper {position:relative;}
#int_wrap .lcont {width:419px;float:left;}
#int_wrap .lcont .tit {font-size:37px;font-weight:400;color:#666;margin:20px 0 3px;}
#int_wrap .lcont .tit b {font-weight:800;color:#333;}
#int_wrap .int_login {margin:20px 0 0 0;}
#int_wrap .int_login dt {width:95px;float:right;}
#int_wrap .int_login dt .btn_large {width:100%;height:80px;}
#int_wrap .int_login dd {width:318px;float:left;}
#int_wrap .int_login dd input {height:37px;width:100%;border:1px solid #ddd;padding:0 12px;margin-bottom:6px;line-height:35px;}
#int_wrap .int_btn {padding:20px 0 0;border-top:1px dotted #ddd;}
#int_wrap .int-txt {padding:10px 0 0 0;}
#int_wrap .int-txt li {font-size:11px;color:#888;padding:5px 0 0 5px;background:url('/img/ic_dot3.gif') no-repeat left 9px;}

/*layout*/
#wrapper {width:100%;min-width:1000px;height:100%;}
#container {width:100%;position:relative;}
.cont_wrap {width:1000px;margin:0 auto;overflow:hidden;}
.cont_bg {background-color:#f5f5f5;padding:50px 0 65px;}
.cont_bg .mtit span {background-color:#f5f5f5;}
.cont_inner {width:1000px;min-height:520px;padding:20px 0;margin:0 auto;}

/*header*/
#hd_banner{text-align:center;position:relative;}
#hd_banner a {height:100%;display:block;text-decoration:none !important;}
#hd_close{width:26px;height:26px;position:absolute;top:50%;right:17px;margin-top:-13px;cursor:pointer;}

#tnb {height:29px;border-bottom:1px solid #ddd;background-color:#fafafa;}
#tnb_inner {width:1000px;padding:7px 0 0;margin:0 auto;}
#tnb_inner li {float:left;}
#tnb_inner li:first-child:before {display:none;}
#tnb_inner li:before {width:1px;height:9px;margin:3px 10px 0;background-color:#ddd;display:inline-block;float:left;content:'';}
#tnb_inner li a {color:#888;}
#tnb_inner li .ic_num {font-size:10px;font-weight:600;margin:0 0 2px 4px;padding:2px 5px;border-radius:50%;background-color:#333;color:#fff;letter-spacing:0;text-align:center;vertical-align:middle;display:inline-block;}

#hd {position:relative;}
#hd:after {display:block;clear:both;content:'';}
#hd_inner {width:1000px;height:100px;margin:0 auto;position:relative;}
#hd_inner .hd_logo {display:table;margin:0 auto;}
#hd_inner .hd_logo a {height:100px;display:table-cell;vertical-align:middle;}
#hd_inner .hd_bnr {position:absolute;left:0;top:0;display:table;}
#hd_inner .hd_bnr span {height:100px;display:table-cell;vertical-align:middle;}
#hd_sch {position:absolute;top:50%;right:0;margin-top:-15px;}
#hd_sch .sch_frm {width:170px;padding:0 35px 0 5px;border-bottom:1px solid #222;position:relative;}
#hd_sch .sch_frm .sch_stx {width:100%;height:30px;line-height:30px;font-size:14px;background:#fff;border:none;outline:none;}
#hd_sch .sch_frm .sch_submit {width:30px;height:30px;padding-bottom:2px;color:#222;font-size:20px;position:absolute;border:none;top:0;right:0;}

#gnb {width:100%;border-top:1px solid #ddd;border-bottom:1px solid #222;background-color:rgba(255,255,255,1);position:relative;}
#gnb.gnd_fixed {position:fixed;top:0;left:0;right:0;z-index:999;}
#gnb_inner {width:820px;height:45px;padding-left:180px;margin:0 auto;position:relative;}
#gnb_inner a {text-decoration:none !important;}
#gnb_inner .all_cate {position:absolute;top:-1px;left:0;z-index:999;}
#gnb_inner .all_cate .allc_bt {width:130px;height:47px;font-size:15px;line-height:48px;padding:0 25px;color:#fff;background-color:#222;display:inline-block;text-align:left;cursor:pointer;position:relative;}
#gnb_inner .all_cate i {width:15px;font-size:18px;margin-right:15px;vertical-align:middle;}
#gnb_inner .all_cate .ionicons {font-size:40px;}
#gnb_inner .all_cate .con_bx {width:1000px;max-height:700px;overflow-x:hidden;overflow-y:auto;padding:10px 20px;border:1px solid #222;background-color:#fff;display:none;position:absolute;top:46px;left:0;z-index:1000;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;}
#gnb_inner .all_cate .con_bx ul {width:100%;display:table;background:#fff;}
#gnb_inner .all_cate .con_bx .c_box {width:20%;padding:15px 5px;display:table-cell;}
#gnb_inner .all_cate .con_bx .c_box .cate_tit {line-height:1em;font-size:13px;font-weight:600;color:#000;text-align:left;padding:10px 15px;background-color:#f1f1f1;display:block;}
#gnb_inner .all_cate .con_bx .c_box ul {margin:12px 0;}
#gnb_inner .all_cate .con_bx .c_box li {width:100%;height:20px;line-height:1.666;text-align:left;}
#gnb_inner .all_cate .con_bx .c_box li a {padding:0 15px;display:block;}
#gnb_inner .all_cate .con_bx .c_box li a:hover {background-color:#f5f5f5;}
#gnb_inner .gnb_li {width:100%;}
#gnb_inner .gnb_li > ul {text-align:center;overflow:visible;}
#gnb_inner .gnb_li > ul > li {display:inline-block;position:relative;overflow:visible;vertical-align:middle;}
#gnb_inner .gnb_li > ul > li:first-child:before {display:none;}
#gnb_inner .gnb_li > ul > li:before {width:1px;height:13px;margin:0 20px 3px;background-color:#ddd;display:inline-block;vertical-align:middle;content:'';}
#gnb_inner .gnb_li > ul > li > a {height:45px;line-height:45px;font-size:15px;font-weight:600;color:#333;display:inline-block;position:relative;transition:All 0.3s ease;-webkit-transition:All 0.3s ease;-moz-transition:All 0.3s ease;-o-transition:All 0.3s ease;}
#gnb_inner .gnb_li > ul > li > a:hover {color:#f33e31;}
#gnb_inner .gnb_li > ul > li > a:after {height:4px;background-color:#f33e31;position:absolute;bottom:-1px;left:50%;right:50%;content:'';transition:All 0.3s ease;-webkit-transition:All 0.3s ease;-moz-transition:All 0.3s ease;-o-transition:All 0.3s ease;}
#gnb_inner .gnb_li > ul > li > a:hover:after {left:-30px;right:-30px;}
#gnb_inner .gnb_li > ul > li ul {width:148px;padding:15px 0;margin-left:-50px;border-width:0 1px 1px;border-style:solid;border-color:#222;background-color:#fff;position:absolute;top:45px;left:50%;z-index:9100;display:none;}
#gnb_inner .gnb_li > ul > li:first-child ul {margin-left:-70px;}
#gnb_inner .gnb_li > ul > li ul a {line-height:23px;padding:0 15px;font-size:12px;display:block;}
#gnb_inner .gnb_li > ul > li ul a:hover {background-color:#f8f8f8;}
#gnb_inner .gnb_li > ul > li:hover ul {display:block;}

/*quick*/
#qcl {width:80px;margin-right:520px;position:absolute;top:20px;right:50%;z-index:997;}
#qcl li {margin-top:5px;}
#qcl li:first-child {margin-top:0 !important;}
#qcr {width:80px;margin-left:520px;position:absolute;top:20px;left:50%;z-index:997;}
#qcr ul {border-bottom:1px solid #ddd;}
#qcr li {padding:0 9px 9px;border-width:0 1px;border-style:solid;border-color:#ddd;background-color:#fff;text-align:center;}
#qcr li:first-child {padding:0 !important;border:0 !important;}
#qcr .tit {width:80px;height:28px;line-height:2.3;color:#fff;background-color:#666;}
#qcr li p {margin-top:9px;}
#qcr .stv_wrap {height:15px;font-size:11px;font-weight:600;position:relative;text-align:center;}
#qcr .stv_wrap #up {position:absolute;left:9px;top:0;cursor:pointer;}
#qcr .stv_wrap #down {position:absolute;right:9px;top:0;cursor:pointer;}
#qcr .no_item {margin:22px 0 !important;color:#ddd !important;font-size:11px;}
.qbtn_bx {position:fixed;bottom:30px;right:30px;z-index:997;}
.qbtn_bx.active {position:absolute;bottom:0;}
.qbtn_bx #anc_up,
.qbtn_bx #anc_dw {width:45px;height:45px;font-size:10px;font-weight:600;color:#aaa;margin-top:-1px;background-color:#fff;border:1px solid #ddd;display:block;outline:none;}
.qbtn_bx #anc_up:before,
.qbtn_bx #anc_dw:after {font-size:17px;font-family:'FontAwesome';line-height:10px;color:#bbb;display:block;}
.qbtn_bx #anc_up:before {margin-bottom:3px;content:'\f106';}
.qbtn_bx #anc_dw:after {margin-top:3px;content:'\f107';}

/*메인 슬라이드배너*/
#mbn_wrap {width:100%;height:400px;overflow:hidden;display:block;position:relative;}
#mbn_wrap .mbn_img {width:100%;height:400px;display:block;text-align:center;}
#mbn_wrap .slick-slide a {height:400px;display:block;}
#mbn_wrap .slick-slide {text-align:center;}
#mbn_wrap .slick-dots {width:1000px;margin-left:-500px;left:50%;}
#mbn_wrap .slick-dots span {height:35px;line-height:35px;color:#222;background-color:#fff;border-width:1px 1px 1px 0;border-style:solid;border-color:#ddd;text-align:center;display:block;cursor:pointer;}
#mbn_wrap .slick-dots li:first-child span {border-left:1px solid #ddd !important;}
#mbn_wrap .slick-dots li.slick-active span {background-color:#222;border-color:#222;color:#fff;}

/*slick 아이콘*/
.slick-arrow {margin-top:-40px;font-size:0;color:rgba(0,0,0,0.15);position:absolute;top:50%;z-index:900;outline:none;}
.slick-arrow:before {font-family:'FontAwesome';font-size:80px;font-weight:600;}
.slick-next {right:30px;}
.slick-next:before {content:'\f105';}
.slick-prev {left:30px;}
.slick-prev:before {content:'\f104';}
.slick-dots {position:absolute;bottom:15px;width:100%;text-align:center;z-index:900;}
.slick-dots li {display:inline-block;}
.slick-dots button {width:15px;height:15px;border-radius:50%;margin:0 4px;font-size:0;background-color:rgba(0,0,0,0.3);display:block;outline:none;}
.slick-dots li.slick-active button {background-color:rgba(0,0,0,0.9);}/* 롤링  색상*/

/*메인*/
.best_wrap {height:400px;margin-top:30px;position:relative;overflow:hidden;}
.best_wrap:after {clear:both;content:'';}
.best_wrap .bnr1 {width:280px;height:400px;position:absolute;top:0;left:0;}
.best_wrap .bnr2 {width:400px;height:195px;position:absolute;top:0;left:290px;}
.best_wrap .bnr3 {width:400px;height:195px;position:absolute;bottom:0;left:290px;}
.best_rol_slide {width:190px;height:330px;padding:35px 45px;background-color:#f1f1f1;position:absolute;top:0;right:0;}
.best_rol_slide h2 {font-size:22px;font-weight:600;color:#222;line-height:1em;text-align:center;}
.best_rol_slide h2:after {width:20px;height:1px;margin:15px auto 25px;background-color:#222;display:block;content:'';}
.best_rol_slide dl {width:190px;text-align:left;float:left;position:relative;outline:none;}
.best_rol_slide dl a {display:block;text-decoration:none !important;outline:none;}
.best_rol_slide dl .sale {width:50px;height:50px;font-size:15px;font-weight:600;line-height:50px;color:#fff;border-radius:30px;background-color:#f33e31;text-align:center;position:absolute;top:0;left:0;z-index:50;}
.best_rol_slide dl .pimg {width:190px;height:190px;border-radius:50%;overflow:hidden;position:relative;}
.best_rol_slide dl .pimg img {width:100%;height:auto;}
.best_rol_slide dl dd {text-align:center;}
.best_rol_slide dl .pname {height:32px;font-size:13px;margin:17px 0 9px;line-height:1.3em;overflow:hidden;}
.best_rol_slide dl .price .mpr {font-size:18px;font-weight:800;color:#000;letter-spacing:-1px;}
.best_rol_slide dl .price .mpr span {font-weight:normal;margin-left:2px;}
.best_rol_slide dl .price .spr {margin-right:5px;font-size:13px !important;font-weight:normal;color:#999;margin-right:7px;text-decoration:line-through;}
.best_rol_slide dl .ic_bx {width:86px;margin-left:-43px;position:absolute;top:77px;left:50%;right:0;z-index:20;text-align:center;display:none;}
.best_rol_slide dl .pimg:before {background-color:rgba(0,0,0,0.2);border-radius:50%;position:absolute;top:0;left:0;right:0;bottom:0;z-index:10;opacity:0;content:'';transition:All 0.3s ease;-webkit-transition:All 0.3s ease;-moz-transition:All 0.3s ease;-o-transition:All 0.3s ease;}
.best_rol_slide dl:hover .pimg:before {opacity:1;}
.best_rol_slide dl:hover .ic_bx {display:block;}
.best_rol_slide .slick-slider {position:initial !important;}
.best_rol_slide .slick-arrow {width:15px;height:50px;margin-top:-25px;font-size:0;color:rgba(0,0,0,0.15);position:absolute;top:50%;outline:none;}
.best_rol_slide .slick-arrow:before {font-family:'FontAwesome';font-size:50px;font-weight:600;}
.best_rol_slide .slick-next {right:15px;}
.best_rol_slide .slick-next:before {content:'\f105';}
.best_rol_slide .slick-prev {left:15px;}
.best_rol_slide .slick-prev:before {content:'\f104';}

.wide_bn img {width:100%;height:auto;}

.mask_bn {width:100%;min-width:1000px;height:350px;margin-top:50px;position:relative;}
.mask_bn:before {background-color:rgba(0,0,0,0.1);position:absolute;top:0;left:0;bottom:0;right:0;display:block;content:'';}
.mask_bn a {display:block;}
.mask_bn p {width:600px;margin-left:-300px;text-align:center;display:table;position:absolute;left:50%;top:0;bottom:0;z-index:10;}
.mask_bn span {height:350px;font-size:33px;font-weight:600;line-height:1.4em;color:#fff;display:table-cell;vertical-align:middle;}

.mmd_bn {width:1000px;height:500px;margin:0 auto;position:relative;}
.mmd_bn li {position:absolute;}
.mmd_bn li.bnr1 {width:480px;height:290px;top:0;left:0;}
.mmd_bn li.bnr2 {width:200px;height:290px;top:0;left:490px;}
.mmd_bn li.bnr3 {width:690px;height:200px;bottom:0;left:0;}
.mmd_bn li.bnr4 {width:300px;height:500px;top:0;right:0;}

.mtit {height:25px;text-align:center;position:relative;clear:both;}
.mtit:after {width:400px;height:1px;margin:-13px auto 0;background-color:#222;display:block;content:'';}
.mtit span{font-size:25px;font-weight:600;line-height:1em;color:#222;margin:0 auto;padding:0 25px;background-color:#fff;display:inline-block;}

/*메인 카테고리별 베스트*/
.bestca_tab {height:40px;margin:35px 0 25px;text-align:center;overflow:visible;clear:both;}
.bestca_tab li {font-size:14px;padding:0 20px;color:#888;border-width:1px 1px 1px 0;border-style:solid;border-color:#e1e1e1;text-align:center;float:left;cursor:pointer;position:relative;overflow:visible;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;}
.bestca_tab li:first-child {border-left:1px solid #ddd;}
.bestca_tab li span {height:40px;line-height:38px;overflow:hidden;display:block;}
.bestca_tab li.active {background-color:#222;border-color:#222;color:#fff;}
.bestca_tab li.active:after {width:0;height:0;border:8px solid transparent;border-bottom:none;border-top-color:#222;display:inline-block;position:absolute;bottom:-8px;left:50%;margin-left:-8px;content:'';}
.bestca ul {height:420px;display:none;}
.bestca li {width:25%;height:420px;border-width:1px 0 1px 1px;border-style:solid;border-color:#e1e1e1;position:relative;float:left;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;}
.bestca li:first-child {border-left-color:#fff;}
.bestca li > a {padding:35px 20px;text-decoration:none !important;display:block;}
.bestca li p {overflow:hidden;}
.bestca li dd {text-align:center;}
.bestca li .pimg {overflow:hidden;position:relative;margin-bottom:15px;}
.bestca li .pimg:after {background-color:rgba(0,0,0,0);border-radius:50%;position:absolute;top:41px;left:0;right:0;bottom:0;z-index:10;content:'';transition:All 0.3s ease;-webkit-transition:All 0.3s ease;-moz-transition:All 0.3s ease;-o-transition:All 0.3s ease;}
.bestca li .pimg img {width:209px;height:209px;border-radius:50%;}
.bestca li .pimg:before {width:20px;height:1px;margin:20px auto;background-color:#bbb;display:block;content:'';}
.bestca li .pname {height:40px;padding:0 10px;font-size:15px;font-weight:600;line-height:1.4em;text-align:center;}
.bestca li .price .mpr {font-size:18px;font-weight:800;color:#000;letter-spacing:-1px;}
.bestca li .price .mpr span {font-weight:normal;margin-left:2px;}
.bestca li .price .spr {margin-right:5px;font-size:13px !important;font-weight:normal;color:#999;margin-right:7px;text-decoration:line-through;}
.bestca li .petc {margin-top:10px;}
.bestca li .ic_bx {width:86px;margin:3px 0 0 -43px;opacity:0;position:absolute;top:50%;left:50%;right:0;z-index:20;text-align:center;transition:All 0.3s ease;-webkit-transition:All 0.3s ease;-moz-transition:All 0.3s ease;-o-transition:All 0.3s ease;}
.bestca li:hover .pimg:after {background-color:rgba(0,0,0,0.2);}
.bestca li:hover .ic_bx {opacity:1;}
.bestca li.empty_list {width:100%;line-height:300px;font-size:13px;color:#bbb;}

/*공통*/
.nwin,.zzim {width:36px;height:36px;line-height:1.9em;border-radius:50%;margin:0 2px;color:#222;background-color:rgba(255,255,255,0.9);font-family:"Ionicons";font-size:20px;text-align:center;display:inline-block !important;vertical-align:middle;cursor:pointer;text-decoration:none !important;}
.zzim:before {content:"\f387";}
.zzim.on:before {content:"\f388";color:#f33e31;}
.nwin:before {content:"\f218";}
.soldout,.memopen {line-height:1em;font-size:13px;font-weight:normal;padding:4px 10px 5px;border-radius:3px;color:#fff;display:inline-block;}
.soldout {background-color:#ed3636;}
.memopen {background-color:#1680d9;}

/*상품리스트*/
.pr_desc {overflow:hidden;}
.pr_desc ul {}
.pr_desc li {float:left;position:relative;}
.pr_desc li a {display:block;text-decoration:none !important;}
.pr_desc li dt {position:relative;}
.pr_desc li dt:after {background-color:rgba(0,0,0,0);position:absolute;top:0;left:0;right:0;bottom:0;z-index:10;content:'';transition:All 0.3s ease;-webkit-transition:All 0.3s ease;-moz-transition:All 0.3s ease;-o-transition:All 0.3s ease;}
.pr_desc li dt img {width:100%;height:auto;}
.pr_desc li dd {position:relative;text-align:center;}
.pr_desc li .pname {height:38px;color:#000;line-height:1.4em;margin:12px 3px 0;font-size:13px;text-align:left;}
.pr_desc li .price {margin:12px 0 10px;font-size:18px;font-weight:600;color:#111;}
.pr_desc li .price .mpr {font-weight:800;color:#000;}
.pr_desc li .price .mpr span {font-weight:600;margin-left:2px;}
.pr_desc li .price .spr {margin-right:5px;font-size:13px !important;font-weight:normal;color:#aaa;margin-bottom:3px;text-decoration:line-through;}
.pr_desc li .petc {margin-bottom:10px;}
.pr_desc li .ic_bx {width:86px;margin:0 0 0 -43px;opacity:0;position:absolute;left:50%;right:0;z-index:20;text-align:center;transition:All 0.3s ease;-webkit-transition:All 0.3s ease;-moz-transition:All 0.3s ease;-o-transition:All 0.3s ease;}
.pr_desc li:hover dt:after {background-color:rgba(0,0,0,0.2);}
.pr_desc li:hover .ic_bx {opacity:1;}

.pr_desc.wli3 li{width:312px;margin:20px 0 0 32px;}
.pr_desc.wli3 li dt {width:312px;height:312px;}
.pr_desc.wli3 li:nth-child(3n+1){margin-left:0 !important;clear:both;}
.pr_desc.wli3 li .pname {height:42px;font-size:15px;}
.pr_desc.wli3 li .ic_bx {top:138px;}

.pr_desc.wli4 li{width:235px;margin:20px 0 0 20px;}
.pr_desc.wli4 li dt {width:235px;height:235px;}
.pr_desc.wli4 li:nth-child(4n+1){margin-left:0 !important;clear:both;}
.pr_desc.wli4 li .ic_bx {top:99px;}

.pr_desc.wli5 li{width:184px;margin:20px 0 0 20px;}
.pr_desc.wli5 li dt {width:184px;height:184px;}
.pr_desc.wli5 li:nth-child(5n+1){margin-left:0 !important;clear:both;}
.pr_desc.wli5 li .ic_bx {top:74px;}

/*상품리스트_롤오버*/
.pr_desc2 {width:1000px;margin:0 auto;overflow:hidden;}
.pr_desc2 ul {}
.pr_desc2 li {width:188px;height:188px;margin:15px 0 0 15px;float:left;position:relative;}
.pr_desc2 li:first-child {width:391px;height:391px;margin-left:0 !important;}
.pr_desc2 li a {display:block;text-decoration:none !important;}
.pr_desc2 li dt {width:100%;height:auto;position:relative;}
.pr_desc2 li dt img {width:100%;height:auto;}
.pr_desc2 li dd {padding:25px 10px 0;opacity:0;position:absolute;top:0;left:0;bottom:0;right:0;border:1px solid #ddd;background-color:rgba(255,255,255,0.95);text-align:center;z-index:20;transition:All 0.3s ease;-webkit-transition:All 0.3s ease;-moz-transition:All 0.3s ease;-o-transition:All 0.3s ease;}
.pr_desc2 li:first-child dd {padding:70px 30px 0;}
.pr_desc2 li:first-child .pname {max-height:42px;line-height:1.4em;font-size:15px;}
.pr_desc2 li:first-child .ic_bx {bottom:70px;}
.pr_desc2 li:first-child .ic_bx .nwin,
.pr_desc2 li:first-child .ic_bx .zzim {width:36px;height:36px;font-size:20px;line-height:1.95em;margin:0 1px;}
.pr_desc2 li .pname {max-height:32px;line-height:1.3em;margin:0 5px 10px;font-size:13px;color:#000;overflow:hidden;}
.pr_desc2 li .petc {margin-top:10px;}
.pr_desc2 li .mpr {font-size:16px;font-weight:800;color:#000;}
.pr_desc2 li .mpr span {font-weight:normal;margin-left:2px;}
.pr_desc2 li .spr {margin-right:5px;font-size:12px !important;font-weight:normal;color:#bbb;margin-bottom:3px;text-decoration:line-through;}
.pr_desc2 li .ic_bx {width:86px;margin:0 0 0 -43px;opacity:0;position:absolute;left:50%;bottom:25px;z-index:25;text-align:center;transition:All 0.3s ease;-webkit-transition:All 0.3s ease;-moz-transition:All 0.3s ease;-o-transition:All 0.3s ease;}
.pr_desc2 li .ic_bx .nwin,
.pr_desc2 li .ic_bx .zzim {width:23px;height:23px;font-size:15px;line-height:1.65em;border-radius:0;margin:0;color:#fff;background-color:rgba(150,150,150,0.4);}
.pr_desc2 li:hover dd,
.pr_desc2 li:hover .ic_bx {opacity:1;}

/*상품상세보기*/
.vi_info {width:100%;display:table;overflow:hidden;}
.vi_img_bx {padding-right:40px;overflow:hidden;display:table-cell;vertical-align:top;}
.vi_img_bx .bimg {overflow:hidden;}
.vi_img_bx .simg_li {margin-top:15px;overflow:hidden;}
.vi_img_bx .simg_li ul {width:100%;font-size:0;font-style:normal;text-align:center;}
.vi_img_bx .simg_li li {width:calc(20% - 5.6px);padding:7px 0 0 7px;display:inline-block;white-space:nowrap;word-break: break-all ;}
.vi_img_bx .simg_li li:nth-child(5n+1) {padding-left:0;}
.vi_img_bx .simg_li li img {width:calc(100% - 2px);height:auto;border:1px solid #eee;cursor:pointer;}

.vi_txt_bx {overflow:hidden;display:table-cell;vertical-align:top;}
.vi_txt_bx dt,
.vi_txt_bx dd,
.vi_txt_li dt,
.vi_txt_li dd {-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;}
.vi_txt_bx .tit {font-size:27px;font-weight:600;padding:10px 0 25px;border-bottom:1px solid #666;line-height:1.3em;position:relative;}
.vi_txt_bx .tit .btn_small {position:absolute;bottom:0;right:0;}
.vi_txt_bx .stxt {font-size:12px;font-weight:normal;line-height:1.3em;color:#999;padding:15px 0 0;}
.vi_txt_bx .price_bx {padding:17px 0;border-bottom:1px solid #ddd;background-color:#fafafa;}
.vi_txt_bx .price_bx dl {width:100%;padding:4px 0;display:table;}
.vi_txt_bx .price_bx dt,
.vi_txt_bx .price_bx dd {font-size:14px;text-align:left;display:table-cell;vertical-align:middle;}
.vi_txt_bx .price_bx dt {width:27%;padding:0 0 0 20px;font-weight:600;}
.vi_txt_bx .price_bx dd {width:73%;padding:0 20px 0 0;}
.vi_txt_bx .price_bx dd.price {font-size:20px !important;font-weight:bold;color:#222;}
.vi_txt_bx .price_bx dd.price .mpr span {font-size:16px;font-weight:normal;margin-left:3px;}
.vi_txt_bx .price_bx dd.pay {font-weight:bold;line-height:140% !important;}
.vi_txt_li {padding:15px 0;border-bottom:1px solid #ddd;}
.vi_txt_li dl {width:100%;margin-top:10px;display:table;}
.vi_txt_li dl:first-child {margin-top:0 !important;}
.vi_txt_li dt,
.vi_txt_li dd {line-height:1.4em;display:table-cell;vertical-align:top;}
.vi_txt_li dt {width:27%;font-size:13px;padding:0 0 0 20px;}
.vi_txt_li dt.op_vi_tit {width:57% !important;}
.vi_txt_li dd {width:73%;font-size:13px;padding:0 20px 0 0;}
.vi_txt_li dd.op_vi_txt {width:40% !important;margin-left:3%;position:relative;}
.vi_txt_li td {font-size:13px;}

.vi_tab {height:35px;border-bottom:2px solid #333;}
.vi_tab ul {overflow:visible;}
.vi_tab li {width:245px;height:34px;margin-left:4px;color:#888;font-size:14px;font-weight:600;line-height:2.5;text-align:center;border-width:1px 1px 0 1px;border-style:solid;border-color:#ddd;background-color:#f8f8f8;cursor:pointer;float:left;}
.vi_tab li:first-child, .m_event li:first-child {margin-left:0 !important;}
.vi_tab li.on {width:243px;height:35px;margin-bottom:-2px;color:#333;border-width:2px 2px 0 2px;border-color:#333;background-color:#fff;z-index:50;}

/*상품 상세보기 (관련상품)*/
.vi_rel{margin:50px 0 0;padding:0 14px;border-width:1px;border-style:solid;border-color:#999 #ddd #ddd;position:relative;}
.vi_rel h3 {text-align:center;position:relative;clear:both;margin-top:-11px;}
.vi_rel h3 span{font-size:22px;font-weight:600;line-height:1em;color:#222;margin:0 auto;padding:0 20px;background-color:#fff;display:inline-block;}
.vi_rel dl a {display:block;text-decoration:none !important;outline:none;}
.vi_rel dl{width:194px;padding:25px 10px 15px;float:left;position:relative;}
.vi_rel dl dt {width:100%;height:auto;position:relative;}
.vi_rel dl dt img {width:100%;height:auto;}
.vi_rel dl dd {position:relative;text-align:center;}
.vi_rel dl .pname {height:38px;color:#000;line-height:1.4em;margin:12px 5px 0;font-size:13px;}
.vi_rel dl .price {margin:12px 0 10px;font-size:20px;font-weight:600;color:#111;}
.vi_rel dl .price .mpr {font-size:16px;font-weight:800;color:#000;}
.vi_rel dl .price .mpr span {font-weight:normal;margin-left:2px;}
.vi_rel dl .price .spr {margin-right:5px;font-size:12px !important;font-weight:normal;color:#aaa;margin-bottom:3px;text-decoration:line-through;}
.vi_rel dl:hover dt:after {background-color:rgba(0,0,0,0.2);position:absolute;top:0;left:0;right:0;bottom:0;z-index:10;display:block;content:'';}
.vi_rel .slick-arrow {width:25px;height:50px;line-height:48px;margin-top:-25px;background-color:rgba(180,180,180,0.8);text-align:center;position:absolute;top:50%;}
.vi_rel .slick-arrow:before {font-family:'FontAwesome';font-size:30px;color:#fff;}
.vi_rel .slick-next {right:-15px;}
.vi_rel .slick-next:before {content:'\f105';}
.vi_rel .slick-prev {left:-15px;}
.vi_rel .slick-prev:before {content:'\f104';}

/*sns*/
.t_socia0 {border:none;margin-top:10px;width:100%}
.t_social {background-color:#222;color:#fff;padding:15px 0;font-size:14px;width:100%;text-align:center;}
.t_social span {font-weight:600;color:#ff9019;}

.vi_box_hd {background:url('/img/sub/tit_view_bg.gif');width:964px;height:16px;padding-right:40px;text-align:right;}
.vi_box_line {background:url('/img/sub/tit_view_line.gif');width:964px;height:390px;}
.vi_box_tail {width:964px;height:7px;background:url('/img/sub/tit_view_03.gif');}

.letter_bx {width:100%;height:76px;padding:10px;border:1px solid #ddd;background-color:#f6f6f6;}
.f_price{color:#999;font-weight:bold;line-height:140%;text-decoration:line-through !important;}

/*판매 기간상품*/
.time {padding:15px 0;background-color:#222;text-align:center;}
.time span {font-size:24px;font-weight:800;color:#fff;letter-spacing:0;display:inline-block;}
.time .tit,
.time .day {font-size:16px;font-weight:normal;letter-spacing:-0.5px;}
.time .tit {margin-left:10px;}
.time .tit:after {margin:0 7px;display:inline-block;content:':';}
.time .day {margin-right:7px;}

/*옵션*/
#option_set_added {margin:0;padding:0;background:#fff;list-style:none;}
#option_set_added li td {font-size:13px;}
#option_set_added dl {padding:0;}
#option_set_added .defbtn_plus{width:17px;height:17px;line-height:500% !important;background:url('/img/plusminus.gif') no-repeat -16px 0;border:0 none;overflow:hidden;cursor:pointer;}
#option_set_added .defbtn_minus{width:17px;height:17px;line-height:500% !important;background:url('/img/plusminus.gif') no-repeat 0 0;border:0 none;overflow:hidden;cursor:pointer;}
#option_set_added .defbtn_delete{width:13px;height:13px;font-size:0;background:url('/img/delete.gif') no-repeat 50% 50%;border:0 none;overflow:hidden;cursor:pointer;position:absolute;top:50%;right:0;margin-top:-7px;}
#option_set_added .inp_opt{font-size:9pt;font-family:tahoma;border:1px solid #cfcfcf;border-left:0;border-right:0;height:17px;padding:0 0 1px;text-align:center;overflow:hidden;margin:0;}
.op_vi_txt .sit_opt_prc {font-size:14px;font-weight:600;height:18px;line-height:1em;margin-top:-9px;position:absolute;top:50%;right:20px;}
#sit_tot_views {font-size:17px;font-weight:600;padding:25px 20px 0;line-height:1.3em;margin-top:-1px;border-top:1px solid #666;background-color:#fff;overflow:hidden;}
#sit_tot_views .prdc_price {font-size:27px;color:#ed3636;float:right;}
#sit_tot_views .prdc_price em {font-size:17px;margin:0 0 0 3px;color:#ed3636;vertical-align:middle;}
.vi_btn {width:100%;display:table;margin-top:25px;}
.vi_btn span {padding-right:5px;display:table-cell;}
.vi_btn span:last-child {padding-right:0 !important;}
.vi_btn a {width:100%;}

/*결제*/
.total_price {height:18px;padding:15px 10px;font-size:14px;background-color:#fafafa;border-bottom:1px solid #ddd;line-height:1.2em;}

/*쿠폰*/
.apply_cmd {position:absolute;z-index:100;width:306px;height:auto;padding:10px;border:5px solid #e5e5e5;background-color:#fff}
.cp_txt_bx {padding:12px 15px;background-color:#f8f8f8;line-height:1.6em;border-bottom:1px solid #ddd;}
.cp_txt_bx .frm_cp {background-color:#fff;}

/*tab menu*/
#tab_cate {height:36px;border-bottom:1px solid #333;margin:10px 0 !important;}
#tab_cate h2 {position:absolute;font-size:0;line-height:0;overflow:hidden;}
#tab_cate ul {overflow:visible;zoom:1;}
#tab_cate li {margin-left:-1px;float:left;overflow:visible;}
#tab_cate li a {height:36px;color:#999;padding:0 25px;font-size:13px;line-height:37px;background-color:#f5f5f5;text-align:center;display:block;text-decoration:none !important;position:relative;}
#tab_cate li.active a {height:37px;color:#333;line-height:38px;background-color:#fff;z-index:10;}
#tab_cate li:first-child {margin-left:0 !important;}
#tab_cate li a:after {border-width:1px 1px 0 1px;border-style:solid;border-color:#ddd;cursor:pointer;display:block;position:absolute;top:0;right:0;bottom:0;left:0;content:'';}
#tab_cate li.active a:after {border-color:#333;}

/*기타*/
.td_num {text-align:right !important;padding-right:5px !important;letter-spacing:0 !important;}
.td_name {position:relative;vertical-align:top !important;text-align:left !important;}
.thumimgage {cursor:pointer;z-index:1;}
.page_wrap {height:29px;margin:20px 0;text-align:center;position:relative;}
.page_wrap .lbt_box {position:absolute;top:0;left:0;}
.page_wrap .rbt_box {position:absolute;top:0;right:0;}
.bottom_sch {padding:7px 10px;background-color:#f8f8f8;text-align:center;}
.top_sch {height:23px;margin:0 0 7px 0;}
.bottom_sch select,
.bottom_sch input[type=text] {height:29px;}
.del_box {width:400px;font-size:13px;line-height:1.4em;padding:30px 0;margin:80px auto;border:1px solid #ddd;text-align:center;}
.txt_expired{color:#ccc !important;}

.bx-has-pager {width:100%;position:absolute;bottom:15px;}
.bx-wrapper .bx-pager {text-align:center;}
.bx-wrapper .bx-pager .bx-pager-item {display:inline-block;*zoom:1;*display:inline;}
.bx-wrapper .bx-pager.bx-default-pager a {background:rgba(80, 80, 80, 0.3);text-indent:-9999px;display:block;width:14px;height:14px;margin:0 3px;outline:0;border-radius:50%;-moz-border-radius:20px;-webkit-border-radius:20px;}
.bx-wrapper .bx-pager.bx-default-pager a.active {background:rgba(10, 10, 10, 0.8);}

/*footer*/
#ft {margin-top:50px;overflow:hidden;clear:both;}
.fgnb {border-top:1px solid #222;border-bottom:1px solid #e1e1e1;overflow:hidden;}
.fgnb ul {width:1000px;padding:15px 0;margin:0 auto;position:relative;}
.fgnb li {float:left;}
.fgnb li:before {width:1px;height:11px;margin:2px 17px 0;background-color:#ddd;display:inline-block;float:left;content:'';}
.fgnb li:first-child:before,
.fgnb li.sns_wrap:before {display:none;}
.fgnb li a {font-size:12px;color:#222;text-decoration:none !important;}
.fgnb li a:hover {color:#888;}
.fgnb .sns_wrap {height:28px;margin-top:-14px;position:absolute;top:50%;right:0;float:none;}
.fgnb .sns_wrap a {width:16px;height:16px;padding:6px;margin-left:2px;border-radius:50%;background-color:#ccc;text-align:center;display:inline-block;transition:All 0.3s ease;-webkit-transition:All 0.3s ease;-moz-transition:All 0.3s ease;-o-transition:All 0.3s ease;}
.fgnb .sns_wrap a img {width:100%;height:auto;}
.fgnb .sns_wrap a.sns_fa:hover {background-color:#46639d;}
.fgnb .sns_wrap a.sns_tw:hover {background-color:#1da1f4;}
.fgnb .sns_wrap a.sns_in:hover {
	/* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#fbc066+0,ea554e+33,be3289+67,5b6bb6+100 */
	background: #fbc066; /* Old browsers */
	background: -moz-linear-gradient(45deg,  #fbc066 0%, #ea554e 33%, #be3289 67%, #5b6bb6 100%); /* FF3.6-15 */
	background: -webkit-linear-gradient(45deg,  #fbc066 0%,#ea554e 33%,#be3289 67%,#5b6bb6 100%); /* Chrome10-25,Safari5.1-6 */
	background: linear-gradient(45deg,  #fbc066 0%,#ea554e 33%,#be3289 67%,#5b6bb6 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#fbc066', endColorstr='#5b6bb6',GradientType=1 ); /* IE6-9 fallback on horizontal gradient */
}
.fgnb .sns_wrap a.sns_pi:hover {background-color:#cb2028;}
.fgnb .sns_wrap a.sns_bl:hover {background-color:#00c23a;}
.fgnb .sns_wrap a.sns_ba:hover {background-color:#00c23a;}
.fgnb .sns_wrap a.sns_kt:hover {background-color:#fff311;}
.fgnb .sns_wrap a.sns_ks:hover {background-color:#fff311;}

.ft_cs {width:1000px;padding:30px 0;margin:0 auto;display:table;}
.ft_cs dl,
.ft_cs ul {width:34%;display:table-cell;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;}
.ft_cs .tit {font-size:16px;font-weight:600;color:#000;margin-bottom:15px;position:relative;}
.ft_cs .tit .stxt {font-size:11px;font-weight:normal;color:#aaa;display:inline-block;vertical-align:middle;}
.ft_cs .tit .stxt:before {width:1px;height:11px;margin:0 12px 1px 10px;background-color:#aaa;display:inline-block;vertical-align:middle;content:'';}
.ft_cs .cswrap {width:32%;padding:0 30px 0 0;border-right:1px solid #e1e1e1;}
.ft_cs .cswrap .tel {height:35px;font-size:35px;font-weight:800;line-height:1em;color:#222;margin:0 0 15px 0;}
.ft_cs .cswrap dd {height:14px;margin-top:4px;}
.ft_cs .bkwrap {padding:0 30px;border-right:1px solid #e1e1e1;position:relative;}
.ft_cs .bkwrap .bknum {font-size:20px;font-weight:800;line-height:1em;margin:0 0 7px 0;}
.ft_cs .bkwrap .etc_btn a {width:130px;}
.ft_cs .bkwrap dd {font-size:13px;margin-top:5px;}
.ft_cs .bkwrap .etc_btn {position:absolute;bottom:0;left:30px;right:30px;}
.ft_cs .notice {padding:0 0 0 30px;padding-right:0 !important;}
.ft_cs .notice dd {height:16px;font-size:12px;padding:0 80px 0 0;margin-bottom:7px;position:relative;}
.ft_cs .notice dd:last-child {margin-bottom:0 !important;}
.ft_cs .notice dd a {max-width:260px;height:16px;display:inline-block;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;}
.ft_cs .notice dd .day {color:#bbb;position:absolute;top:0;right:0;}
.ft_cs .notice .bt_more {font-size:11px;font-weight:normal;color:#999;position:absolute;bottom:1px;right:0;}
.ft_cs .notice .bt_more i {margin-left:3px;}

.company {padding:30px 0;background-color:#f8f8f8;border-top:1px solid #eee;overflow:hidden;}
.company ul {width:1000px;margin:0 auto;}
.company li {width:340px;font-size:11px;line-height:1.5em;letter-spacing:0;float:right;}
.company li:first-child {width:650px;font-size:12px;padding:0;line-height:1.6em;border:0;float:left;}
.company li h3 {color:#222;margin-bottom:12px;}
.company .cptxt {font-size:11px;color:#aaa;}
.company .etctxt {margin-top:7px;font-size:11px;letter-spacing:-0.3px;color:#aaa;}
.g_hl {width:1px;height:10px;background-color:#ddd;margin:0 10px;vertical-align:middle;display:inline-block;}

/*폰트box 스타일*/
.fbx_small,.fbx_free,.fbx_lsmall {display:inline-block;vertical-align:middle;text-align:center;}
.fbx_small {padding:1px 5px;font-size:11px;line-height:1.555;font-weight:normal;letter-spacing:0;}
.fbx_lsmall {padding:3px 10px;font-size:12px;line-height:1.777;font-weight:normal !important;}
.fbx_bg1 {border:1px solid #c1dcff;background-color:#ffffff;color:#4294ff;} /*blue*/
.fbx_bg2 {border:1px solid #dddddd;background-color:#f7f7f7;color:#aaaaaa;} /*gray*/
.fbx_bg3 {border:1px solid #fdd8e2;background-color:#ffffff;color:#ff90af;} /*pink*/
.fbx_bg4 {border:1px solid #ed3636;background-color:#ffffff;color:#ed3636;} /*red*/
.fbx_bg5 {border:1px solid #cbcbcb;background-color:#ffffff;color:#909090;} /*default*/
.fbx_bg6 {border:1px solid #ff7200;background-color:#ff7200;color: #ffffff;}
.fbx_free {width:70px;height:38px;padding:16px 0;color:#fff;font-size:16px;line-height:1.222;letter-spacing:0;text-align:center;position:absolute;bottom:10px;right:10px;z-index:10;background:url('/img/ic_free_bg.png') no-repeat;background-size:100%;}

/*sub*/
.stit {font-size:27px;font-weight:600;color:#222;margin:20px 0 30px;text-align:center;position:relative;}
.s_stit {font-size:15px;font-weight:600;color:#222;text-align:left;letter-spacing:-1px;}
.tit_navi {font-size:12px;line-height:1em;color:#888;font-weight:normal;text-align:right;}
.tit_navi a {font-weight:normal;color:#888;}
.tit_navi .ionicons {margin:0 10px;color:#bbb;vertical-align:middle;}

/* 서브페이지 */
#con_lf {width:calc(70% - 150px);margin: 0 auto;fload:left;}
#con_lfe {width:calc(100% - 100px);margin: 0 auto;fload:left;}
#con_lf img {max-width:100%;height:auto;}
.pg_tit {margin:0 0 20px;height:36px;border-bottom:1px solid #ddd;position:relative;}
.pg_tit span {font-size:22px;padding:4px 10px 7px 0;margin:0 0 -1px 0;border-bottom:1px solid #333;display:inline-block;}
.pg_tit .pg_nav {font-size:12px;font-weight:normal;position:absolute;bottom:8px;right:0;}
.pg_tit i {font-style:normal;font-size:12px;color:#aaa;margin:0 5px;}
.pg_cnt {margin:0 0 7px;}
.pg_cnt em {color:red;font-weight:600;}

.pg_title {margin-bottom:20px;text-align:center;}
.pg_title .inner {padding:8px;background-color:#f1f1f1;position:relative;}
.pg_title .inner .txt_bx {padding:17px 0;border:1px solid #ddd;background-color:#fff;}
.pg_title .inner .txt_bx dt {font-size:27px;line-height:1em;font-weight:600;color:#666;text-align:center;}
.pg_title .inner .txt_bx dd {font-size:13px;font-weight:normal;color:#999;margin-top:10px;text-align:center;}

.sub_tree {padding:12px;margin-bottom:20px;border-width:1px 0;border-style:solid;border-color:#e1e1e1;background-color:#fafafa;}
.sub_tree li {padding:5px 10px;float:left;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;}
.sub_tree a {text-decoration:none !important;}
.sub_tree a:hover {color:#f33e31;}
.sub_tree li.active a {font-weight:600;color:#f33e31;}

.li_ty_tab li {float:left;margin-right:3px;}
.li_ty_tab li a {height:25px;padding:0 12px;line-height:2em;background-color:#aaa;color:#fff;display:block;text-decoration:none !important;}
.li_ty_tab li a:hover {background-color:#777;}
.li_ty_tab li a.active {background-color:#222;}

.tab_sort {height:14px;padding:13px 20px;border-width:1px 0;border-style:solid;border-color:#666 #fff #ddd;position:relative;}
.tab_sort:after {display:block;clear:both;content:'';}
.tab_sort .total {height:14px;display:inline-block;float:left;}
.tab_sort .total:after {width:1px;height:12px;margin:0 12px 0 25px;background-color:#ddd;display:inline-block;vertical-align:middle;content:'';}
.tab_sort ul {height:14px;line-height:1.3em;float:left;}
.tab_sort ul li {display:inline-block;}
.tab_sort ul li a {display:block;color:#999;padding:0 10px;text-align:center;}
.tab_sort ul li a.active {color:#222;font-weight:600;}
.tab_sort ul li a:hover {color:#222;text-decoration:none;}
.tab_sort select {width:85px;height:24px;margin-top:-12px;position:absolute;top:50%;right:0;}

/*서브페이지 왼쪽메뉴*/
#aside {float:left;width:180px;}
.aside_hd {height:120px;background:#ed3636;text-align:center;}
.aside_hd p {padding:0;margin:0;line-height:1em;}
.aside_hd p.eng {padding-top:40px;font-size:14px;font-weight:400;color:#e1e1e1;text-transform:uppercase;}
.aside_hd p.kor {padding-top:10px;font-size:22px;font-weight:600;color:#fff;}
.aside_name {padding:10px 0 10px 15px;border-bottom:1px solid #121418;background-color:#2c313c;font-weight:600;color:#fff;}
.aside_bx {background-color:#495164;color:#fff;}
.aside_bx li {position:relative;padding-left:15px;height:36px;font-size:11px;line-height:36px;border-top:1px solid #525a6c;border-bottom:1px solid #444c5e;}
.aside_bx li:first-child {border-top:0;}
.aside_bx li span {position:absolute;top:0;right:10px;}
.aside_bx li span a {font-weight:600;color:#fff;}
.aside_cs {border-width:0 1px 1px 1px;border-style:solid;border-color:#ddd;}
.aside_cs dt {height:37px;font-size:13px;font-weight:600;line-height:2.9;border-top:1px solid #ddd;position:relative;}
.aside_cs dt:first-child {border-top:0 !important;}
.aside_cs dt a:after {font-family:FontAwesome;font-size:19px;font-weight:normal;line-height:2em;color:#ccc;position:absolute;top:0;right:15px;content:"\f105";}
.aside_cs dd {padding:8px 0;border-top:1px dotted #ddd;}
.aside_cs dt a,
.aside_cs dd li a {padding:0 15px;text-decoration:none;display:block;}
.aside_cs dt:hover a,
.aside_cs dt:hover a:after {color:#ed3636;}
.aside_cs dd li a:hover {color:#454545; background-color:#f5f5f5;}
.aside_cs dd li a {padding:5px 15px 5px 22px !important;color:#999;background:url('/img/lm_dot.gif') no-repeat 15px 11px;}
.aside_my {margin-top:10px;border:1px solid #ddd;}
.aside_my dt {margin-top:7px;padding:10px 0 7px 15px;font-weight:600;border-top:1px solid #ddd;}
.aside_my dt:first-child {margin-top:0;border-top:0;}
.aside_my dd a {line-height:1.9em;padding-left:15px;color:#666;display:block;text-decoration:none !important;}
.aside_my dd a:hover {background-color:#f5f5f5;color:#454545;}

/*로그인*/
.login_tab {width:752px;margin:0 auto 20px;z-index:1;}
.login_tab li {width:50%;height:45px;text-align:center;float:left;overflow:visible;position:relative;}
.login_tab li span {font-size:13px;line-height:45px;color:#aaa;background-color:#fff;border-width:1px;border-style:solid;border-color:#e1e1e1 #e1e1e1 #222;position:absolute;top:0;left:0;bottom:0;right:0;cursor:pointer;}
.login_tab li:first-child span {right:-1px;}
.login_tab li.active span {color:#222;border-color:#222 #222 transparent;z-index:2;}
.login_wrap {width:750px;margin:0 auto;border:1px solid #e1e1e1;display:none;text-align:center;overflow:hidden;}
.login_wrap.active {display:table;}
.log_inner {padding:40px 50px;display:table-cell;}
.log_inner dt {font-size:16px;font-weight:600;color:#222;margin-bottom:20px;text-align:center;}
.log_inner dd {margin-bottom:5px;text-align:center;}
.log_inner .stxt {color:#999;margin-bottom:10px;text-align:center;}
.log_inner .log_op {font-size:13px;margin:15px auto 0;max-width:500px; text-align:left;}
.log_inner .log_op input[type=checkbox] {width:15px;height:15px;}
.log_inner input[type=text],
.log_inner input[type=password] {width:100%;max-width:500px;height:40px;padding:12px 15px;line-height:1em;font-size:13px;border:1px solid #ddd;}
.log_inner dd button,
.log_inner dd a {width:100%;max-width:500px;}
.log_bt_box {width:710px;font-size:13px;padding:20px;margin:-1px auto 40px;border:1px solid #e1e1e1;background-color:#fafafa;text-align:center;}
.login_wrap .in_box p {margin:0 0 10px 0;}
.login_wrap .bt_box {padding:20px 0 10px;text-align:center;overflow:hidden;}
.login_wrap .bt_box a {font-size:13px;display:inline-block;}
.login_wrap .bt_box a:before {width:1px;height:12px;background-color:#ccc;margin:0 15px;display:inline-block;vertical-align:middle;content:"";}
.login_wrap .bt_box a:first-child:before {display:none;}

/*SNS로그인*/
.sns_btn {width:199px;padding:40px;border-left:1px solid #e1e1e1;display:table-cell;}
.sns_btn h3 {font-size:16px;font-weight:600;color:#222;margin-bottom:30px;text-align:center;}
.sns_btn a {margin-top:5px;display:block !important;}
.bt_naver,
.bt_face,
.bt_kakao {height:40px;line-height:40px;font-size:14px;font-weight:600;padding:0 25px 0 60px;display:inline-block;text-decoration:none !important;position:relative;}
.bt_naver {color:#fff !important;background-color:#1ec800;}
.bt_naver:hover {background-color:#1bb300;}
.bt_naver .bt_ic {width:40px;height:40px;background-color:#1ec800;text-align:center;display:inline-block;position:absolute;top:0;left:0;}
.bt_naver .bt_ic:after {width:0;height:40px;border-left:1px solid #1db402;border-right:1px solid #60dc4a;display:inline-block;content:'';position:absolute;top:0;right:0;}
.bt_face {color:#fff !important;background-color:#3b579d;}
.bt_face:hover {background-color:#304c91;}
.bt_face .bt_ic {width:40px;height:40px;background-color:#3b579d;text-align:center;display:inline-block;position:absolute;top:0;left:0;}
.bt_face .bt_ic:after {width:0;height:40px;border-left:1px solid #314984;border-right:1px solid #516cad;display:inline-block;content:'';position:absolute;top:0;right:0;}
.bt_kakao {color:#381E1E !important;background-color:#F1DC43;}
.bt_kakao:hover {background-color:#e9d334;}
.bt_kakao .bt_ic {width:40px;height:40px;background-color:#F1DC43;text-align:center;display:inline-block;position:absolute;top:0;left:0;}
.bt_kakao .bt_ic:after {width:0;height:40px;border-left:1px solid #e1cd39;border-right:1px solid #f8e76a;display:inline-block;content:'';position:absolute;top:0;right:0;}
.bt_ic img {margin-bottom:2px;}

/*회원*/
.regi_box {padding:20px;border:1px solid #ddd;background-color:#fafafa;}
.regi_box .agree_box {height:150px;font-size:13px;color:#555;padding:12px 15px;line-height:1.4em;border:1px #eee solid;background-color:#fff;overflow-y:auto;}
.agree_txt {font-size:13px;padding:20px;background-color:#f5f5f5;}
.sns_box {border:1px solid #ddd;text-align:left;}
.sns_box h3 {font-size:15px;padding:10px 20px;background-color:#fafafa;border-bottom:1px solid #ddd;}
.sns_box p {padding:20px;text-align:center;}
.sns_box a {margin-right:5px;}

/*인기검색어 순위*/
.kw_rank {width:167px;height:302px;border-right:1px solid #ddd;padding:15px;float:left;}
.kw_rank h3 {font-size:16px;margin-bottom:12px;}
.kw_rank li {line-height:26px;padding:0 25px;border-bottom:1px solid #ddd;position:relative;}
.kw_rank li .rank_num {width:25px;font-weight:13px;font-weight:800;text-align:center;display:inline-block;position:absolute;left:0;top:0;}
.kw_rank li .rank_icon {font-size:0;display:inline-block;position:absolute;top:0;right:0;}
.kw_rank li .rank_icon:before {font-size:18px;line-height:23px;margin-right:4px;color:#888;content:'-';}
.kw_rank li .rank_icon.rnew {width:14px;height:14px;font-size:12px;line-height:14px;border-radius:3px;font-size:9px;text-align:center;color:#fff;background-color:#ee7d4d;font-weight:600;top:50%;margin-top:-7px;}
.kw_rank li .rank_icon.rnew:before {display:none !important;}
.kw_rank li .rank_up {width:12px;}
.kw_rank li .rank_up:before {font-size:16px;line-height:23px;font-family:'FontAwesome';color:#c2191f;content:'\f0d8';}
.kw_rank li .rank_down {width:12px;}
.kw_rank li .rank_down:before {font-size:16px;line-height:23px;font-family:'FontAwesome';color:#22b0bd;content:'\f0d7';}
.kw_rank li:first-child a,
.kw_rank li:nth-child(2) a,
.kw_rank li:nth-child(3) a,
.kw_rank li:first-child .rank_num,
.kw_rank li:nth-child(2) .rank_num,
.kw_rank li:nth-child(3) .rank_num {color:#ee7d4d;}
.kw_rank li a {display:block;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;text-decoration:none !important;}
.kw_rank li:hover {background-color:#fafafa;}

/*브랜드샵*/
.br_search {padding:25px 12px 12px 12px;border:1px solid #ddd;text-align:center;}
.br_search #br_sch {margin-top:25px;overflow:hidden;display:inline-block;}
.br_search .sch_inner {width:430px;margin:0 auto;}
.br_search .sch_inner dt {width:73px;height:37px;line-height:2.4;font-size:15px;font-weight:600;color:#555;float:left;}
.br_search .sch_inner dd {width:355px;height:35px;border:1px solid #555;float:left;}
.br_search .sch_inner dd input[type=text] {width:320px;height:35px;font-size:13px;padding:0 10px;line-height:2.3;border:0;}
.br_search .sch_inner dd .btn_submit {width:35px;height:35px;color:#555;font-size:20px;padding-bottom:2px;border:0;cursor:pointer;}
.br_search .sch_tab {width:125px;border:1px solid #555;float:left;}
.br_search .sch_tab li {width:50%;text-align:center;float:left;cursor:pointer;}
.br_search .sch_tab li a {height:25px;color:#666;line-height:2;text-decoration:none !important;display:block;}
.br_search .sch_tab li.active a {color:#fff;background-color:#555;}
.br_search .sch_tab_con {margin-left:7px;float:left;}
.br_search .sch_tab_con li {width:24px;height:25px;color:#666;line-height:2;margin-left:3px;border:1px solid #ddd;float:left;text-align:center;cursor:pointer;}
.br_search .sch_tab_con li:hover {border:1px solid #555;}
.br_search .sch_tab_con li.active {color:#fff;font-weight:600;background-color:#555;border:1px solid #555;}
.br_list {width:100%;overflow:hidden;margin:20px 0 0;}
.br_list ul {width:1008px;margin-left:-8px;}
.br_list li {width:158px;border:1px solid #ddd;margin:0 0 8px 8px;float:left;}
.br_list li:hover {border:1px solid #222;}
.br_list li a {height:64px;padding:10px 15px;color:#666;text-align:center;text-decoration:none !important;display:block;}
.br_list li img {width:auto;max-width:128px;height:40px;}
.br_list li p {height:16px;font-size:13px;font-weight:600;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;}
.br_view_tit {width:100%;height:110px;margin-bottom:20px;background-color:#bbb;position:relative;}
.br_view_tit .tit_logo {width:128px;height:40px;padding:35px 183px 35px 215px;background:url('/img/br_view_bg.png') no-repeat right top;float:right;}
.br_view_tit .tit_logo img {width:auto;max-width:128px;height:40px;}
.br_view_tit .tit_txt {width:500px;height:40px;color:#fff;font-size:30px;line-height:1.3;position:absolute;top:35px;left:50px;z-index:99;}

/*비회원구매약관*/
#guest_privacy {margin:30px 0 0;}
#guest_privacy h2 {margin:0 0 10px;font-size:17px;text-align:left;}
#guest_privacy p {margin:0 0 10px;}
#guest_privacy .tbl_head02 {border:1px solid #e1e1e1;}
#guest_privacy .tbl_head02 td {width:33%;}
#guest_privacy #guest_agree {padding:12px 0;text-align:left;}
#guest_privacy #guest_agree label {display:inline-block;margin-right:5px;}

/*인스타그램*/
.insta {width:100%;padding:40px 0 50px;background-color:#f8f8f8;border-top:1px solid #eee;}
.insta h2 {font-size:19px;font-weight:800;letter-spacing:2px;text-align:center;color:#222;}
.insta h2 a {margin-left:15px;font-size:13px;font-weight:600;letter-spacing:0;text-decoration:none !important;}
.insta h2 a:hover {color:#888;}
.insta ul {width:1000px;margin:20px auto 0;}
.insta li {width:118px;height:118px;margin-left:8px;float:left;position:relative;}
.insta li:first-child {margin-left:0 !important;}]
.insta li a {display:block;}
.insta li:hover a:before {background-color:rgba(255,255,255,0.2);position:absolute;top:0;left:0;right:0;bottom:0;z-index:10;display:block;content:'';}
.insta li img {width:100%;height:auto;}

/*faq*/
.faq_li {margin-top:20px;}
.faq_li li {font-size:13px;line-height:1.4em;border-bottom:1px solid #e1e1e1;position:relative;}
.faq_li li:first-child {border-top:1px solid #e1e1e1;}
.faq_li li:before {font-size:17px;font-weight:800;position:absolute;left:10px;}
.faq_li .faq_q {padding:12px 10px 12px 32px;cursor:pointer;}
.faq_li .faq_q:before {color:#6379d8;content:"Q";top:8px;}
.faq_li .faq_q:hover,
.faq_li .faq_q.active {color:#6379d8;}
.faq_li .faq_a {padding:15px 15px 15px 32px;background-color:#fbfbfb;display:none;}
.faq_li .faq_a:before {color:#999;content:"A";top:15px;}

/*게시판 카테고리*/
.bo_cate {margin-bottom:10px;text-align:center;}
.bo_cate li {display:inline-block;}
.bo_cate li a {font-size:13px;padding:9px 17px;border:1px solid #ddd;display:block;text-align:center;text-decoration:none !important;}
.bo_cate li.active a {font-weight:600;background-color:#222;border-color:#222;color:#fff;}

/*갤러리 게시판*/
.gallery {padding:15px 0;border-width:1px 0;border-style:solid;border-color:#e1e1e1;overflow:hidden;}
.gallery a {display:block;text-decoration:none !important;}
.gallery dl {width:252px;margin:10px 0 10px 19px;padding-bottom:15px;border:1px solid #eee;position:relative;float:left;display:table;transition:All 0.3s ease;-webkit-transition:All 0.3s ease;-moz-transition:All 0.3s ease;-o-transition:All 0.3s ease;}
.gallery dl:nth-child(3n+1){margin-left:0 !important;clear:both;}
.gallery dl dt {width:252px;height:252px;border-bottom:1px solid #eee;display:table-cell;text-align:center;vertical-align:middle;}
.gallery dl dt img {width:auto;max-width:100%;height:auto;max-height:100%;}
.gallery dl dd {font-size:12px;color:#999;padding:0 12px;text-align:center;}
.gallery dl dd.bo_tit {font-size:14px;font-weight:600;color:#222;margin:15px 0 7px;white-space:nowrap;text-overflow:ellipsis;}
.gallery dl dd.bo_tit .bo_notice {font-size:11px;font-weight:normal;padding:3px 5px;margin-right:3px;line-height:1em;border-radius:3px;color:#fff;background-color:#0ca2b8;vertical-align:middle;display:inline-block;}
.gallery dl dd span:before {width:1px;height:10px;margin:0 7px;background-color:#ddd;display:inline-block;vertical-align:middle;letter-spacing:0;content:'';}
.gallery dl:hover {border-color:#222;}
.gallery .bo_chk {position:absolute;left:0;top:13px;}
.gallery .bo_chk input {width:17px;height:17px;}

/*웹진스킨 게시판*/
.webzine {border-width:1px 0;border-style:solid;border-color:#e1e1e1;overflow:hidden;}
.webzine a {height:110px;display:block;text-decoration:none !important;}
.webzine dl {height:110px;padding:20px 0 20px 145px;border-top:1px solid #eee;position:relative;clear:both;}
.webzine dl:first-child {border-top:0 !important;}
.webzine dl dt {display:table;position:absolute;left:0;top:15px;}
.webzine dl dt p {width:120px;height:120px;display:table-cell;overflow:hidden;text-align:center;vertical-align:middle;}
.webzine dl dt p img {width:auto;max-width:100%;height:auto;max-height:100%;}
.webzine dl dd {font-size:12px;color:#aaa;text-align:left;}
.webzine dl dd.bo_tit {font-size:16px;font-weight:600;color:#222;margin:0 0 8px;white-space:nowrap;text-overflow:ellipsis;}
.webzine dl dd.bo_tit .bo_notice {font-size:12px;font-weight:normal;padding:3px 5px;margin-right:3px;line-height:1em;border-radius:3px;color:#fff;background-color:#0ca2b8;vertical-align:middle;display:inline-block;}
.webzine dl dd.bo_txt {height:50px;margin-top:17px;color:#666;line-height:1.4em;}
.webzine dl dd span:before {width:1px;height:10px;margin:0 7px;background-color:#ddd;display:inline-block;vertical-align:middle;letter-spacing:0;content:'';}
.webzine .bo_chk {position:absolute;left:0;top:13px;}
.webzine .bo_chk input {width:17px;height:17px;}

/*기획전*/
.plan {}
.plan a {text-decoration:none !important;}
.plan li {width:318px;margin:0 0 20px 20px;border:1px solid #e1e1e1;float:left;}
.plan li:nth-child(3n+1) {margin-left:0 !important;clear:both;}
.plan li .plan_img {width:318px;height:180px;}
.plan li .plan_img img{width:100%;height:auto;}
.plan li .plan_tit {height:15px;font-size:13px;padding:12px 15px;text-align:center;border-top:1px solid #e1e1e1;}

/*타임세일*/
.timesale {}
.timesale li {width:31.5%;margin:2.75% 0 0 2.75%;float:left;position:relative;}
.timesale li:nth-child(3n+1){margin-left:0 !important;clear:both;}
.timesale li a {display:block;text-decoration:none !important;}
.timesale li dt {width:calc(100% - 2px);height:auto;border:1px solid #e1e1e1;position:relative;}
.timesale li dt:after {background-color:rgba(0,0,0,0);position:absolute;top:0;left:0;right:0;bottom:0;z-index:10;content:'';transition:All 0.3s ease;-webkit-transition:All 0.3s ease;-moz-transition:All 0.3s ease;-o-transition:All 0.3s ease;}
.timesale li dt img {width:100%;height:auto;}
.timesale li dd {position:relative;text-align:center;}
.timesale li .pname {height:42px;font-size:15px;color:#000;line-height:1.4em;margin:12px 3px 0;}
.timesale li .ptime {height:27px;font-weight:600;padding:10px;margin-top:-1px;border:1px solid #e1e1e1;background-color:#f5f5f5;}
.timesale li .ptime span {display:inline-block;}
.timesale li .ptime .num {font-size:15px;padding:5px 7px;border-radius:3px;margin:0 0 0 4px;color:#fff;background-color:#333;letter-spacing:0;}
.timesale li .price {margin:12px 0 10px;font-size:20px;font-weight:600;color:#111;}
.timesale li .price .mpr {font-weight:800;color:#000;}
.timesale li .price .mpr span {font-weight:normal;margin-left:2px;}
.timesale li .price .spr {margin-right:5px;font-size:12px;font-weight:normal;color:#aaa;margin-bottom:3px;text-decoration:line-through;}
.timesale li .ic_bx {width:86px;margin:0 0 0 -43px;opacity:0;position:absolute;top:33%;left:50%;right:0;z-index:20;text-align:center;transition:All 0.3s ease;-webkit-transition:All 0.3s ease;-moz-transition:All 0.3s ease;-o-transition:All 0.3s ease;}
.timesale li:hover dt:after {background-color:rgba(0,0,0,0.2);}
.timesale li:hover .ic_bx {opacity:1;}

/*네이버페이*/
.naverpay-item{display:block;margin:15px 0 0 0 !important;padding:0 !important;}
.cart-naverpay{margin-top:15px;}

/*회원가입 약관*/
#fregister section {padding:30px 0 0 0;}
#fregister section:first-child {padding:0 !important;}
#fregister h2 {margin:0 0 10px;font-size:17px;text-align:left;}
#fregister textarea {display:block;padding:10px;width:100%;height:200px;line-height:1.4em;color:#666;border:1px solid #e1e1e1;background-color:#fff;}
#fregister .fregister_agree {padding:12px;text-align:left;}
#fregister .fregister_agree label {display:inline-block;margin-right:5px;}
#fregister .fregister_agree label>span {color:#999999 !important;}
#fregister_private .tbl_head02 {border:1px solid #e1e1e1;}
#fregister_private .tbl_head02 td {width:33%;}

/*회원가입 입력*/
#fregisterform {}
#fregisterform h3 {margin:20px 0 5px;}
#fregisterform #msg_certify {margin:5px 0 0;padding:5px;border:1px solid #dbecff;background-color:#eaf4ff;text-align:center;}

/* 회원가입 완료 */
#reg_result {}
#reg_result #result_email {margin:20px 0;padding:10px 30px;border:1px solid #e1e1e1;background-color:#fff;}
#reg_result #result_email span {display:inline-block;width:150px;}
#reg_result #result_coupon {margin:20px 0;padding:10px 30px;border:1px solid #e1e1e1;background-color:#fff;}
#reg_result #result_coupon strong {color:#ff3061;font-weight:normal;}
#reg_result .bx-danger {margin:30px 0 0;padding:30px !important;line-height:1.8em !important;}
#reg_result .btn_confirm {margin:50px 0;}

/*회원탈퇴*/
#fleaveform {}
#fleaveform section {font-size:13px;margin:30px 0 0 0;}
#fleaveform section li {height:23px;line-height:1.7em;}
#fleaveform .line_box {padding:12px 0;margin-bottom:20px;line-height:1.4em;border-width:1px 0;border-style:solid;border-color:#eee;}

/* 회원 비밀번호 확인 */
#mb_confirm {margin:0 auto;padding:120px 0 150px;width:600px;}
#mb_confirm h1 {margin:0 0 12px;font-size:20px;font-weight:600;}
#mb_confirm p {padding:20px;border:1px solid #ddd;border-bottom:0;background-color:#fff;}
#mb_confirm p strong {display:block;padding-bottom:4px;}
#mb_confirm fieldset {margin:0 0 20px;padding:30px 0;border:1px solid #ddd;background-color:#f9f9f9;text-align:center;}
#mb_confirm fieldset .frm_input {background-color:#fff !important;}
#mb_confirm label {margin:0 7px 0 0;}
#mb_confirm_id {display:inline-block;margin:0 30px 0 7px;font-weight:600;}

/*아이디/비밀번호 찾기*/
#find_info {}
#find_info #info_fs {margin:0 20px 0 20px;padding:0;background-color:#fff;}
#find_info #info_fs .frm_input {width:70%;}
#find_info p {margin:0 0 10px;line-height:1.8em;}
#find_info .info_form {padding:10px 15px;background-color:#f8f8f8;}

/*입점신청*/
#fsellerform {}
#fsellerform h2 {margin:0 0 5px;font-size:17px;text-align:left;}
#fsellerform .frm_address {margin:5px 0 0;}
.fsellerform_term {padding:30px 0 20px;}
.fsellerform_term textarea {display:block;padding:10px;width:100%;height:150px;line-height:1.4em;color:#666;border:1px solid #e1e1e1;background-color:#fff;}
.fsellerform_agree {padding:10px 0;text-align:left;}
.fsellerform_agree label {display:inline-block;margin-right:5px;}

/*쇼핑몰분양신청*/
#fpartnerform {}
#fpartnerform h2 {margin:0 0 5px;font-size:17px;text-align:left;}
#fpartnerform #reg_tot_price em {font:bold 18px tahoma;color:#ec0e03;}
.fpartnerform_term {margin:0 0 20px;}
.fpartnerform_term textarea {display:block;padding:5px;width:100%;height:100px;line-height:1.4em;color:#666;border:1px solid #e1e1e1;background:#fffcea;-webkit-box-sizing: border-box; -moz-box-sizing: border-box; box-sizing: border-box;}
.fpartnerform_agree {padding:10px 0;text-align:left;}
.fpartnerform_agree label {display:inline-block;margin-right:5px;}

.fp_sign {margin:20px 0 0;overflow:hidden;}
.fp_sign .info_bx {width:393px;height:250px;padding:42px 0 0;border:1px solid #ddd;overflow:visible;position:relative;}
.fp_sign .info_bx dt {width:395px;font-size:14px;font-weight:bold;color:#fff;padding:7px 0;text-align:center;background-color:#999;position:absolute;top:-1px;left:-1px;}
.fp_sign .info_bx dd {min-height:23px;font-size:12px;padding:3px 15px;line-height:1.7em;}
.fp_sign .info_bx .m-signature-pad {height:130px;padding:12px 0 0;margin:7px 0 12px;border-top:1px dotted #ddd;position:relative;}
.fp_sign .info_bx .m-signature-pad button {position:absolute;top:15px;right:0;}
.fp_sign .info_bx .admin_seal {position:absolute;top:170px;left:110px;}
.kbw-signature {width:100%;height:100px;background-color:#f1f1f1;display:block;-ms-touch-action: none;}

/*장바구니*/
.sod_opt {margin:0;border-bottom:0;background:#fff;}
.sod_opt ul {margin:0;padding:0;list-style:none;}
.sod_opt li.ty {padding:0;color:#7d62c3;letter-spacing:0;}
.sod_opt li.ny {padding:0;color:#888888;letter-spacing:0;}
.sod_option_btn {margin:5px 0;}
#sod_bsk_btn {position:relative;margin-top:10px;height:24px;}
#sod_bsk_btn div.palt {position:absolute;left:0;top:0;}
#sod_bsk_btn div.part {position:absolute;right:0;top:0;}
#sod_bsk_list #mod_option_frm {z-index:10000;position:absolute;top:0;left:0;padding:20px;width:500px;height:auto !important;height:500px;max-height:500px;border:1px solid #000;background:#fff;overflow-y:scroll;overflow-x:none}
.btn_cancel {width:60px;height:30px;background:url('/img/btn_021016.jpg') no-repeat;border:0 none;overflow:hidden;cursor:pointer;}

/*주문*/
#sod_fin_pay,#sod_fin_orderer,#sod_fin_receiver,#sod_bsk_tot,#bank_section,#tax_section {margin:30px 0 0;}
#sod_fin_cancel {margin:20px 0 0;text-align:center;}
#sod_fin_cancel h2 {position:absolute;font-size:0;line-height:0;overflow:hidden;}
#sod_fin_cancelfrm {display:none;padding:10px;margin:10px 0 0;background-color:#f8f8f8;}
#sod_fin_cancelfrm label {margin-right:10px;}
#sod_ws_tot{margin:20px 0 0;padding:0 10px;border:1px solid #e2e2e2;background-color:#f9f9f9;zoom:1;}
#sod_ws_tot:after{display:block;visibility:hidden;clear:both;content:"";}
#sod_ws_tot dt,
#sod_ws_tot dd{float:left;font-weight:600;padding:12px 0;border-top:1px solid #e2e2e2;}
#sod_ws_tot dt{padding-left:2%;width:48%;}
#sod_ws_tot dd{padding-right:2%;width:48%;margin:0;text-align:right;}
#sod_ws_tot .ws_price{background-color:#8f908c;color:#fff;border-top:0 !important;}
.taxbill_fld {display:none;}
.order_vbx {width:calc(100% - 2px);margin-bottom:25px;border:1px solid #ddd;overflow:hidden;display:table;}
.order_vbx dl {padding:15px 10px 10px;border-left:1px solid #ddd;display:table-cell;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;}
.order_vbx dl:first-child {border-left:0 !important;}
.order_vbx dt {font-size:15px;font-weight:600;margin-bottom:15px;text-align:center;}
.order_vbx dt span {font-size:11px;font-weight:normal;margin-left:5px;color:#e94c1c;}
.order_vbx dd {font-size:15px;position:relative;}
.order_vbx dd p {height:17px;color:#222;font-weight:800;padding:15px 0;}
.order_vbx dd .ddtit {height:13px;font-size:11px;font-weight:600;padding:10px 0;background-color:#eee;}
.order_vbx .od_bx1 {width:290px;}
.order_vbx .od_bx1 dd {width:calc(37% - 2px);margin:0 1px;background-color:#f8f8f8;text-align:center;float:left;}
.order_vbx .od_bx1 dd.total {width:calc(63% - 2px);}
.order_vbx .od_bx1 dd.total {font-size:13px;}
.order_vbx .od_bx2 {width:418px;}
.order_vbx .od_bx2 dd {width:calc(20% - 2px);margin:0 1px;background-color:#f8f8f8;text-align:center;float:left;}
.order_vbx .od_bx3 {width:290px;}
.order_vbx .od_bx3 dd {width:calc(25% - 2px);margin:0 1px;background-color:#f8f8f8;text-align:center;float:left;}

/*마이페이지 (내쇼핑)*/
#smb_my_ov {margin:0 0 20px;}
#smb_my_ov h2 {position:absolute;font-size:0;line-height:0;overflow:hidden;}
#smb_my_act {margin:10px 0;zoom:1;}
#smb_my_act:after {display:block;visibility:hidden;clear:both;content:"";}
#smb_my_act ul {float:right;margin:0;padding:0;list-style:none;}
#smb_my_act li {float:left;margin:0 0 0 4px;}
#smb_my_tbl {width:100%;border-top:1px solid #c0c0c0;}
#smb_my_tbl th,
#smb_my_tbl td {border-bottom:1px solid #e2e2e2;text-align:left;}
#smb_my_tbl th {width:15%;padding:10px 15px;background-color:#f8f8f8;font-weight:normal;}
#smb_my_tbl td {width:35%;padding:10px 15px;color:#666;word-break:break-all;}
#smb_my_od {margin:0 0 20px;}
#smb_my_wish {}
.smb_my_more {margin-top:10px;text-align:right;}

@charset "utf-8";
@import url("reset.css");
@import url("basic.css");
@import url("button.css");
@import url("font-awesome.css");
@import url("ionicons.css");
@import url("slick.css");

input[type=radio],input[type=checkbox] {margin-bottom:1px;}

/*input, textarea*/
.frm_input,input[type=file] {height:23px;}
.frm_input {padding:0 5px 1px 5px;font-size:12px;font-weight:normal;border:1px solid #ddd;background-color:#fff;border-radius:0;-webkit-border-radius:0;-moz-border-radius:0;}
.frm_textbox {padding:5px;line-height:1.4em;font-size:12px;font-weight:normal;border:1px solid #ddd;background-color:#fff;border-radius:0;-webkit-border-radius:0;-moz-border-radius:0;}
.frm_cp{width:80px;height:29px;line-height:29px;color:#4b77be; font-weight:bold;text-align:center;border:1px solid #ccc;}

/*input_크롬 배경컬러*/
input:-webkit-autofill {-webkit-box-shadow: 0 0 0 1000px white inset;}

/*placeholder 속성*/
::-webkit-input-placeholder {color:#bbb;font-size:inherit;letter-spacing:-1px; /* Webkit browsers */}
:-moz-placeholder {color:#bbb;opacity:1;font-size:inherit;letter-spacing:-1px; /* Mozilla Firefox 4 to 18 */}
::-moz-placeholder {color:#bbb;opacity:1;font-size:inherit;letter-spacing:-1px; /* Mozilla Firefox 19+ */}
:-ms-input-placeholder {color:#bbb;font-size:inherit;letter-spacing:-1px; /* Internet Explorer 10+ */}

/*자료 없는 목록*/
.empty_table {padding:50px 0 !important;color:#999;text-align:center !important;border-left:0 !important}
.empty_list {padding:30px 0 !important;color:#999;text-align:center !important;border-left:0 !important}

/*필수입력*/
.required, textarea.required {background:url('/img/wrest.gif') #fff top right no-repeat;}

/*기본테이블*/
.tbl_wrap table {width:100%;}
.ini_wrap table {width:auto !important;}
.ini_wrap table td {padding:0; border:0 !important;}

/*가로형 테이블 (중간에 라인없음)*/
.tbl_head01 {border-top:1px solid #666;border-bottom:1px solid #e4e5e7;}
.tbl_head01 thead th {border-top:0 !important;text-align:center;}
.tbl_head01 th {padding:9px 0;line-height:1em;font-weight:600;vertical-align:middle;}
.tbl_head01 th,.tbl_head01 td {font-size:12px;}
.tbl_head01 td {padding:9px;text-align:center;line-height:1.4;border-top:1px solid #e4e5e7;word-break:break-all;}
.tbl_head01 tfoot {background-color:#f8f8f8 !important;}
.tbl_head01 tfoot th,.tbl_head01 tfoot td {border-top:1px solid #e4e5e7 !important;}

/*가로형 테이블 (중간에 라인있음)*/
.tbl_head02 {border-top:1px solid #666;border-bottom:1px solid #e4e5e7;}
.tbl_head02 thead th {border-top:0 !important;text-align:center;}
.tbl_head02 thead tr.rows th {border-top:1px solid #e4e5e7 !important;}
.tbl_head02 th {padding:9px 0;line-height:1em;font-weight:600;}
.tbl_head02 th,.tbl_head02 td {font-size:12px;border-left:1px solid #e4e5e7;vertical-align:middle;}
.tbl_head02 td {padding:9px;text-align:left;line-height:1.4;border-top:1px solid #e4e5e7;word-break:break-all;}
.tbl_head02 tfoot {background-color:#f8f8f8 !important;}
.tbl_head02 tfoot th,.tbl_head02 tfoot td {border-top:1px solid #e4e5e7 !important;}
.tbl_head02 tr:not(.rows) th:first-child,
.tbl_head02 tr:not(.rows) td:first-child {border-left:0 !important;}

/*폼 테이블*/
.tbl_frm01 {border-top:1px solid #666;}
.tbl_frm01 table {width:100%;}
.tbl_frm01 th,
.tbl_frm01 td {padding:8px 14px;height:22px;border-bottom:1px solid #ddd;text-align:left;vertical-align:middle;}
.tbl_frm01 th {font-weight:600;}
.tbl_frm01 .frm_address {margin-top:5px;}

.tbl_frm02 {width:100%;}
.tbl_frm02 th {padding:7px 20px;border:1px solid #e8e8e8;background-color:#fafafa;font-weight:600;text-align:left;}
.tbl_frm02 td {padding:5px 10px;text-align:left;border:1px solid #e8e8e8;background:transparent;}
.tbl_frm02 textarea {padding:2px 2px 3px;border:1px solid #ccc;color:#454545;vertical-align:middle;line-height:1.4;}
.tbl_frm02 textarea {width:100%;height:140px;}

/*설명글*/
.frm_info {display:block;padding-top:5px;line-height:1.4em;}

.td_tal {text-align:left !important;}
.td_tar {text-align:right !important;}
.td_label label {margin-right:5px !important}
.kakaopay_icon{background:url('/img/kakao.png') no-repeat ;height:21px;width:74px;display:inline-block;overflow:hidden;text-indent:-999px}
.KPAY{background:url('/img/kpay_logo.png') no-repeat 5px;width:37px;height:15px;overflow:hidden;text-indent:-999px;display:inline-block;}
.PAYNOW{background:url('/img/paynow_logo.png') no-repeat 5px;width:46px;height:15px;overflow:hidden;text-indent:-999px;display:inline-block;}
.PAYCO{background:url('/img/payco_logo.png') no-repeat 5px;width:46px;height:15px;overflow:hidden;text-indent:-999px;display:inline-block;}

/*Mobile화면으로*/
#device_change {display:block;width:100%;padding:1em 0;border:2px solid #eee; font-weight:600;background:#f9f9f9;color:#000;font-size:4em;text-decoration:none;text-align:center;}

/*팝업레이어*/
#hd_pop {z-index:9999;position:relative;margin:0 auto;width:100%;height:0}
#hd_pop h2 {position:absolute;font-size:0;line-height:0;overflow:hidden}
.hd_pops {position:absolute;border:1px solid #ddd;background:#fff}
.hd_pops_con {}
.hd_pops_footer {padding:10px 0;background:#000;color:#fff;text-align:right}
.hd_pops_footer button {margin-right:5px;padding:5px 10px;border:0;background:#393939;color:#fff}
.sound_only {display:inline-block;position:absolute;top:0;left:0;margin:0 !important;padding:0 !important;width:1px !important;height:1px !important;font-size:0 !important;line-height:0 !important;overflow:hidden}

/*서식단계 진행*/
.btn_confirm{margin-top:20px;overflow:hidden;text-align:center;}
.btn_confirm a,.btn_confirm input,.btn_confirm button{margin:0 1.5px;}

/*새창 기본 스타일*/
.new_win{}
.new_win .tbl_wrap{margin:0 20px;}
.new_win #win_title{margin:0 0 20px;padding:20px;border-top:3px solid #4e5d60;border-bottom:1px solid #e9e9e9;background:#fff;font-size:1.2em;}
.new_win #win_title .sv{font-size:0.75em;line-height:1.2em;}
.new_win .win_ul{margin:-21px 0 20px 0;padding:0 20px;border-top:1px solid #333;background-color:#333;list-style:none;zoom:1;}
.new_win .win_ul:after{display:block;visibility:hidden;clear:both;content:"";}
.new_win .win_ul li{float:left;margin-left:-1px;}
.new_win .win_ul a{display:block;padding:10px 10px 8px;border-right:1px solid #555;border-left:1px solid #555;color:#fff;font-family:dotum;font-weight:600;text-decoration:none;}
.new_win .win_ul a.on{background-color:#fff;color:#222;}
.new_win .win_desc{margin:10px 20px 0 20px;}
.new_win .win_btn{clear:both;padding:20px;text-align:center;} /*새창용*/
.new_win .win_btn a,.new_win .win_btn input,.new_win .win_btn button{margin:0 1.5px;}
.new_win .win_paging{padding-top:20px;text-align:center;}

/*페이징*/
.pg_wrap {margin:0;padding:20px 0 0;text-align:center;}
.pg_wrap span,.pg_wrap strong,.pg_wrap a {display:inline-block;text-decoration:none;}
.pg {}
.pg a:focus,.pg a:hover {text-decoration:none;border:1px solid #333;}
.pg_page,.pg_current {padding:0 8px;min-width:9px;height:25px;color:#353e44;font-weight:normal;line-height:25px;vertical-align:middle;border:1px solid #c8c8c8;}
.pg_page {background-color:#fbfbfb;text-decoration:none;}
.pg_current {background-color:#333;color:#fff;border:1px solid #333 !important;}
.pg_start,.pg_prev,.pg_next,.pg_end {width:27px;height:27px;overflow:hidden;padding:0 !important;font-size:0 !important;text-indent:-9000px;border:none !important;background:url('/img/sprite_pg.png') no-repeat;vertical-align:top;}
.pg_prev {margin-right:4px;}
.pg_next {margin-left:4px;}
.pg a.pg_start {background-position:-116px 0;}
.pg a.pg_prev {background-position:-145px 0;}
.pg a.pg_next {background-position:-174px 0;}
.pg a.pg_end {background-position:-203px 0;}
.pg span.pg_start {background-position:0 0;}
.pg span.pg_prev {background-position:-29px 0;}
.pg span.pg_next {background-position:-58px 0;}
.pg span.pg_end {background-position:-87px 0;}

/*안내박스*/
.bx-success,.bx-info,.bx-danger,.bx-warning {padding:15px;line-height:1.4em;text-align:left;}
.bx-success {background:#c0edf1;border:1px solid #58d0da;}
.bx-info {background:#f6fbff;border:1px solid #cbdbe8;}
.bx-danger {background:#f8f8f8;border:1px solid #e3e3e3;}
.bx-warning {background:#fffcea;border:1px solid #f3cc31;}

/*주문상세내역 (현금영수증 발급)*/
#scash{}
#scash h3{margin:0 0 5px;text-align:left;}
#scash_apply{padding:10px 0 20px;text-align:center;}
#scash_apply #show_progress span{display:block;margin:7px 0 0;}
#scash_copy{margin-bottom:20px;text-align:center;}

#sod_pay_not{margin:20px 0;text-align:center;font-size:18px;font-weight:600;color:red;}

a.btn_frmline {}
button.btn_frmline {font-size:1em}
.btn_b02,
	input.btn_submit:hover,
	.btn_submit:hover,
	.btn_cancel:hover,
	.btn_frmline:hover{text-decoration:none;filter:Alpha(opacity=70); opacity:0.7; -moz-opacity:0.7;-webkit-transition-duration: 0.2s;-webkit-transition-timing-function: ease;transition-duration: 0.2s;transition-timing-function: ease;}
a.btn_b02,.btn_b02					{background:#666666;color:#ffffff;border:1px solid #666666;}

  /* 오른쪽 정렬 스타일 */
  .btn {
    float: right;
  }
</style>