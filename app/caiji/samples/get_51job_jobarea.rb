#encoding=utf-8

require 'nokogiri'

html=<<HTML_str

<TBODY>
<TR style="CURSOR: move" class=title>
<TD colSpan=10><IMG src="http://img01.51jobcdn.com/im/2009/search/title_layer_yd.gif"><SPAN>&nbsp;请选择工作地点（您最多能选择5项）</SPAN><SPAN class=ccType><SPAN style="CURSOR: pointer" ccType="confirm">[确认]</SPAN><SPAN></SPAN></SPAN></TD></TR>
<TR isSelected="true">
<TD class=bigOrange>已选地点：</TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD></TD></TR>
<TR>
<TD class=jlSeprator colSpan=10></TD></TR>
<TR>
<TD class="bigOrange gray" colSpan=10>主要城市：</TD></TR>
<TR>
<TD colSpan=10>
<TABLE style="WIDTH: 700px">
<TBODY>
<TR>
<TD class=cityOrange>B</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer; FONT-WEIGHT: bold" _value="0100" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160100 value="" type=checkbox>北京</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="2804" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63162804 value="" type=checkbox>包头</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1604" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161604 value="" type=checkbox>保定</TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD class=cityOrange>M</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; COLOR: #0075e8; CURSOR: pointer" class=zz_51Lower _value="0903" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160903 value="" type=checkbox>绵阳</TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD></TD></TR>
<TR>
<TD class=cityOrange>C</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="2402" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63162402 value="" type=checkbox>长春</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1902" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161902 value="" type=checkbox>长沙</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0902" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160902 value="" type=checkbox>成都</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0600" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160600 value="" type=checkbox>重庆</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0705" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160705 value="" type=checkbox>常州</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1907" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161907 value="" type=checkbox>常德</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0707" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160707 value="" type=checkbox>常熟</TD>
<TD class=cityOrange>N</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" class=zz_51Lower _value="0702" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160702 value="" type=checkbox>南京</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" class=zz_51Lower _value="0803" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160803 value="" type=checkbox>宁波</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1302" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161302 value="" type=checkbox>南昌</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0709" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160709 value="" type=checkbox>南通</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1402" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161402 value="" type=checkbox>南宁</TD>
<TD></TD>
<TD></TD></TR>
<TR>
<TD class=cityOrange>D</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="2303" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63162303 value="" type=checkbox>大连</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0308" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160308 value="" type=checkbox>东莞</TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD class=cityOrange>Q</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1203" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161203 value="" type=checkbox>青岛</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1104" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161104 value="" type=checkbox>泉州</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1606" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161606 value="" type=checkbox>秦皇岛</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0319" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160319 value="" type=checkbox>清远</TD>
<TD></TD>
<TD></TD>
<TD></TD></TR>
<TR>
<TD class=cityOrange>F</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1102" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161102 value="" type=checkbox>福州</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0306" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160306 value="" type=checkbox>佛山</TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD class=cityOrange>S</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer; FONT-WEIGHT: bold" _value="0200" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160200 value="" type=checkbox>上海</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer; FONT-WEIGHT: bold" class=zz_51Lower _value="0400" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160400 value="" type=checkbox>深圳</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="2302" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63162302 value="" type=checkbox>沈阳</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1602" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161602 value="" type=checkbox>石家庄</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0703" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160703 value="" type=checkbox>苏州</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1003" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161003 value="" type=checkbox>三亚</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0805" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160805 value="" type=checkbox>绍兴</TD></TR>
<TR>
<TD class=cityOrange>G</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer; FONT-WEIGHT: bold" _value="0302" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160302 value="" type=checkbox>广州</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="2602" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63162602 value="" type=checkbox>贵阳</TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD class=cityOrange></TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0304" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160304 value="" type=checkbox>汕头</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0325" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160325 value="" type=checkbox>顺德</TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD></TD></TR>
<TR>
<TD class=cityOrange>H</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="2202" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63162202 value="" type=checkbox>哈尔滨</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0802" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160802 value="" type=checkbox>杭州</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1502" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161502 value="" type=checkbox>合肥</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1002" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161002 value="" type=checkbox>海口</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 105px; CURSOR: pointer; defaultWidth: 75px" _value="2802" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63162802 value="" type=checkbox>呼和浩特</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0303" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160303 value="" type=checkbox>惠州</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1905" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161905 value="" type=checkbox>衡阳</TD>
<TD class=cityOrange>T</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0500" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160500 value="" type=checkbox>天津</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="2102" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63162102 value="" type=checkbox>太原</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0808" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160808 value="" type=checkbox>台州</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1605" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161605 value="" type=checkbox>唐山</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0718" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160718 value="" type=checkbox>泰州</TD>
<TD></TD>
<TD></TD></TR>
<TR>
<TD class=cityOrange></TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0719" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160719 value="" type=checkbox>淮安</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; COLOR: #0075e8; CURSOR: pointer" _value="0809" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160809 value="" type=checkbox>湖州</TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD class=cityOrange>W</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1802" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161802 value="" type=checkbox>武汉</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" class=zz_51Lower _value="0704" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160704 value="" type=checkbox>无锡</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0804" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160804 value="" type=checkbox>温州</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 105px; CURSOR: pointer; defaultWidth: 75px" _value="3102" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63163102 value="" type=checkbox>乌鲁木齐</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1503" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161503 value="" type=checkbox>芜湖</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1205" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161205 value="" type=checkbox>潍坊</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1206" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161206 value="" type=checkbox>威海</TD></TR>
<TR>
<TD class=cityOrange>J</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1202" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161202 value="" type=checkbox>济南</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0807" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160807 value="" type=checkbox>嘉兴</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0806" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160806 value="" type=checkbox>金华</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" class=zz_51Lower _value="2403" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63162403 value="" type=checkbox>吉林</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0315" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160315 value="" type=checkbox>江门</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" class=zz_51Lower _value="1807" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161807 value="" type=checkbox>荆州</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" class=zz_51Lower _value="0715" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160715 value="" type=checkbox>江阴</TD>
<TD class=cityOrange>X</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="2002" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63162002 value="" type=checkbox>西安</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1103" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161103 value="" type=checkbox>厦门</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" class=zz_51Lower _value="0711" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160711 value="" type=checkbox>徐州</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1805" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161805 value="" type=checkbox>襄阳</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1904" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161904 value="" type=checkbox>湘潭</TD>
<TD></TD>
<TD></TD></TR>
<TR>
<TD class=cityOrange></TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; COLOR: #0075e8; CURSOR: pointer" _value="1209" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161209 value="" type=checkbox>济宁</TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD class=cityOrange>Y</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1204" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161204 value="" type=checkbox>烟台</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0708" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160708 value="" type=checkbox>扬州</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1803" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161803 value="" type=checkbox>宜昌</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" class=zz_51Lower _value="0713" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160713 value="" type=checkbox>盐城</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; COLOR: #0075e8; CURSOR: pointer" _value="0814" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160814 value="" type=checkbox>义乌</TD>
<TD></TD>
<TD></TD></TR>
<TR>
<TD class=cityOrange>K</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" class=zz_51Lower _value="2502" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63162502 value="" type=checkbox>昆明</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0706" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160706 value="" type=checkbox>昆山</TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD class=cityOrange>Z</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1105" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161105 value="" type=checkbox>漳州</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1702" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161702 value="" type=checkbox>郑州</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" class=zz_51Lower _value="0307" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160307 value="" type=checkbox>中山</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0305" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160305 value="" type=checkbox>珠海</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0710" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160710 value="" type=checkbox>镇江</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1903" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161903 value="" type=checkbox>株洲</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0317" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160317 value="" type=checkbox>湛江</TD></TR>
<TR>
<TD class=cityOrange>L</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="2702" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63162702 value="" type=checkbox>兰州</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1603" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161603 value="" type=checkbox>廊坊</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1208" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161208 value="" type=checkbox>临沂</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1703" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161703 value="" type=checkbox>洛阳</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0712" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160712 value="" type=checkbox>连云港</TD>
<TD></TD>
<TD></TD>
<TD class=cityOrange></TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0318" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160318 value="" type=checkbox>肇庆</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" class=zz_51Lower _value="0714" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63160714 value="" type=checkbox>张家港</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; COLOR: #0075e8; CURSOR: pointer" class=zz_51Lower _value="1207" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63161207 value="" type=checkbox>淄博</TD>
<TD></TD>
<TD></TD>
<TD></TD>
<TD></TD></TR></TBODY></TABLE></TD></TR>
<TR>
<TD class="bigOrange gray" colSpan=10>所有省份：</TD></TR>
<TR>
<TD class=cityOrange>A-G</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1500" isLast="false">安徽省</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="3400" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63163400 value="" type=checkbox>澳门</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1100" isLast="false">福建省</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="2700" isLast="false">甘肃省</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 105px; CURSOR: pointer; defaultWidth: 75px" _value="0300" isLast="false">广东省(除深圳)</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1400" isLast="false">广西</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="2600" isLast="false">贵州省</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="3600" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63163600 value="" type=checkbox>国外</TD>
<TD></TD></TR>
<TR>
<TD class=cityOrange>H-J</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1000" isLast="false">海南省</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1600" isLast="false">河北省</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1700" isLast="false">河南省</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer; defaultWidth: 75px" _value="2200" isLast="false">黑龙江省</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1800" isLast="false">湖北省</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1900" isLast="false">湖南省</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="2400" isLast="false">吉林省</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0700" isLast="false">江苏省</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1300" isLast="false">江西省</TD></TR>
<TR>
<TD class=cityOrange>L-S</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="2300" isLast="false">辽宁省</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="2800" isLast="false">内蒙古</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="2900" isLast="false">宁夏</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="3200" isLast="false">青海省</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="1200" isLast="false">山东省</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="2100" isLast="false">山西省</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="2000" isLast="false">陕西省</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0900" isLast="false">四川省</TD>
<TD></TD></TR>
<TR>
<TD class=cityOrange>T-Z</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="3500" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63163500 value="" type=checkbox>台湾</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="3000" isLast="false">西藏</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="3300" isLast="false"><INPUT style="DISPLAY: none" onclick=this.checked=!this.checked; name=JL63163300 value="" type=checkbox>香港</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="3100" isLast="false">新疆</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="2500" isLast="false">云南省</TD>
<TD style="PADDING-LEFT: 1px; WIDTH: 75px; CURSOR: pointer" _value="0800" isLast="false">浙江省</TD>
<TD colSpan=3></TD></TR>
<TR class=bottomLine>
<TD colSpan=10></TD></TR></TBODY>


HTML_str

doc = Nokogiri::HTML(html)
list = []
doc.search('td').each do |item|
  puts "list.push( \{:name => '#{item.text}', :value => '#{item['_value']}' \} )" if item.text != nil && item['_value'] != nil
end


list.push( {:name => '北京', :value => '0100' } )
list.push( {:name => '包头', :value => '2804' } )
list.push( {:name => '保定', :value => '1604' } )
list.push( {:name => '绵阳', :value => '0903' } )
list.push( {:name => '长春', :value => '2402' } )
list.push( {:name => '长沙', :value => '1902' } )
list.push( {:name => '成都', :value => '0902' } )
list.push( {:name => '重庆', :value => '0600' } )
list.push( {:name => '常州', :value => '0705' } )
list.push( {:name => '常德', :value => '1907' } )
list.push( {:name => '常熟', :value => '0707' } )
list.push( {:name => '南京', :value => '0702' } )
list.push( {:name => '宁波', :value => '0803' } )
list.push( {:name => '南昌', :value => '1302' } )
list.push( {:name => '南通', :value => '0709' } )
list.push( {:name => '南宁', :value => '1402' } )
list.push( {:name => '大连', :value => '2303' } )
list.push( {:name => '东莞', :value => '0308' } )
list.push( {:name => '青岛', :value => '1203' } )
list.push( {:name => '泉州', :value => '1104' } )
list.push( {:name => '秦皇岛', :value => '1606' } )
list.push( {:name => '清远', :value => '0319' } )
list.push( {:name => '福州', :value => '1102' } )
list.push( {:name => '佛山', :value => '0306' } )
list.push( {:name => '上海', :value => '0200' } )
list.push( {:name => '深圳', :value => '0400' } )
list.push( {:name => '沈阳', :value => '2302' } )
list.push( {:name => '石家庄', :value => '1602' } )
list.push( {:name => '苏州', :value => '0703' } )
list.push( {:name => '三亚', :value => '1003' } )
list.push( {:name => '绍兴', :value => '0805' } )
list.push( {:name => '广州', :value => '0302' } )
list.push( {:name => '贵阳', :value => '2602' } )
list.push( {:name => '汕头', :value => '0304' } )
list.push( {:name => '顺德', :value => '0325' } )
list.push( {:name => '哈尔滨', :value => '2202' } )
list.push( {:name => '杭州', :value => '0802' } )
list.push( {:name => '合肥', :value => '1502' } )
list.push( {:name => '海口', :value => '1002' } )
list.push( {:name => '呼和浩特', :value => '2802' } )
list.push( {:name => '惠州', :value => '0303' } )
list.push( {:name => '衡阳', :value => '1905' } )
list.push( {:name => '天津', :value => '0500' } )
list.push( {:name => '太原', :value => '2102' } )
list.push( {:name => '台州', :value => '0808' } )
list.push( {:name => '唐山', :value => '1605' } )
list.push( {:name => '泰州', :value => '0718' } )
list.push( {:name => '淮安', :value => '0719' } )
list.push( {:name => '湖州', :value => '0809' } )
list.push( {:name => '武汉', :value => '1802' } )
list.push( {:name => '无锡', :value => '0704' } )
list.push( {:name => '温州', :value => '0804' } )
list.push( {:name => '乌鲁木齐', :value => '3102' } )
list.push( {:name => '芜湖', :value => '1503' } )
list.push( {:name => '潍坊', :value => '1205' } )
list.push( {:name => '威海', :value => '1206' } )
list.push( {:name => '济南', :value => '1202' } )
list.push( {:name => '嘉兴', :value => '0807' } )
list.push( {:name => '金华', :value => '0806' } )
list.push( {:name => '吉林', :value => '2403' } )
list.push( {:name => '江门', :value => '0315' } )
list.push( {:name => '荆州', :value => '1807' } )
list.push( {:name => '江阴', :value => '0715' } )
list.push( {:name => '西安', :value => '2002' } )
list.push( {:name => '厦门', :value => '1103' } )
list.push( {:name => '徐州', :value => '0711' } )
list.push( {:name => '襄阳', :value => '1805' } )
list.push( {:name => '湘潭', :value => '1904' } )
list.push( {:name => '济宁', :value => '1209' } )
list.push( {:name => '烟台', :value => '1204' } )
list.push( {:name => '扬州', :value => '0708' } )
list.push( {:name => '宜昌', :value => '1803' } )
list.push( {:name => '盐城', :value => '0713' } )
list.push( {:name => '义乌', :value => '0814' } )
list.push( {:name => '昆明', :value => '2502' } )
list.push( {:name => '昆山', :value => '0706' } )
list.push( {:name => '漳州', :value => '1105' } )
list.push( {:name => '郑州', :value => '1702' } )
list.push( {:name => '中山', :value => '0307' } )
list.push( {:name => '珠海', :value => '0305' } )
list.push( {:name => '镇江', :value => '0710' } )
list.push( {:name => '株洲', :value => '1903' } )
list.push( {:name => '湛江', :value => '0317' } )
list.push( {:name => '兰州', :value => '2702' } )
list.push( {:name => '廊坊', :value => '1603' } )
list.push( {:name => '临沂', :value => '1208' } )
list.push( {:name => '洛阳', :value => '1703' } )
list.push( {:name => '连云港', :value => '0712' } )
list.push( {:name => '肇庆', :value => '0318' } )
list.push( {:name => '张家港', :value => '0714' } )
list.push( {:name => '淄博', :value => '1207' } )
list.push( {:name => '安徽省', :value => '1500' } )
list.push( {:name => '澳门', :value => '3400' } )
list.push( {:name => '福建省', :value => '1100' } )
list.push( {:name => '甘肃省', :value => '2700' } )
list.push( {:name => '广东省(除深圳)', :value => '0300' } )
list.push( {:name => '广西', :value => '1400' } )
list.push( {:name => '贵州省', :value => '2600' } )
list.push( {:name => '国外', :value => '3600' } )
list.push( {:name => '海南省', :value => '1000' } )
list.push( {:name => '河北省', :value => '1600' } )
list.push( {:name => '河南省', :value => '1700' } )
list.push( {:name => '黑龙江省', :value => '2200' } )
list.push( {:name => '湖北省', :value => '1800' } )
list.push( {:name => '湖南省', :value => '1900' } )
list.push( {:name => '吉林省', :value => '2400' } )
list.push( {:name => '江苏省', :value => '0700' } )
list.push( {:name => '江西省', :value => '1300' } )
list.push( {:name => '辽宁省', :value => '2300' } )
list.push( {:name => '内蒙古', :value => '2800' } )
list.push( {:name => '宁夏', :value => '2900' } )
list.push( {:name => '青海省', :value => '3200' } )
list.push( {:name => '山东省', :value => '1200' } )
list.push( {:name => '山西省', :value => '2100' } )
list.push( {:name => '陕西省', :value => '2000' } )
list.push( {:name => '四川省', :value => '0900' } )
list.push( {:name => '台湾', :value => '3500' } )
list.push( {:name => '西藏', :value => '3000' } )
list.push( {:name => '香港', :value => '3300' } )
list.push( {:name => '新疆', :value => '3100' } )
list.push( {:name => '云南省', :value => '2500' } )
list.push( {:name => '浙江省', :value => '0800' } )

puts list
