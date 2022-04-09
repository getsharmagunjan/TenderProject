<%@ page import="java.sql.*, java.util.*, Tender.*" %>
<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office">
<head>
<meta http-equiv="Content-Language" content="en-us" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>E-Tendering System</title>
<style type="text/css">
.style2 {
	text-decoration: underline;
}
.style3 {
	font-family: "Times New Roman";
	font-size: medium;
}
.style4 {
	font-family: "Times New Roman";
}
.style5 {
	font-family: Verdana;
}
.style9 {
	margin-top: 0px;
}
</style>
</head>

<body bgcolor="#66CCFF">

<img src="etender.gif" width="969" height="155" /><br />
<div style="position: absolute; width: 260px; height: 650px; z-index: 5; left: 983px; top: 4px" id="layer8">
	<iframe name="I1" id="I1" style="height: 685px; width: 285px" src="login2.htm" class="style9">Your browser does not support inline frames or is currently configured not to display inline frames.
			</iframe></div>

<br />
<div style="position: absolute; width: 974px; height: 100px; z-index: 2; left: 5px; top: 594px; background-color: #0066FF; font-family: verdana; font-size: small; font-weight: 600;" id="layer3">
	<br />
	<br />
	Designed, Developed and Hosted By:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<span class="style3">©</span> 2012 E-Tendering Portal, All Rights Reserved.&nbsp;
	<br />
&nbsp;<span class="style2">GUNJAN SHARMA &amp; ABHISHEK JAIN</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	site best viewed in 1024<span class="style4"> </span><span class="style5">× 
	768 pixels.</span>&nbsp;&nbsp;&nbsp;&nbsp; </div>

<div style="border: medium solid #D6D1C7; position: absolute; width: 263px; height: 323px; z-index: 3; left: 8px; top: 179px; background-color: #158AD0;" id="layer4">
	&nbsp;<br />
&nbsp;
	<a href="page1.jsp">
	<input name="Button1" type="button" value="Download Latest Tenders" style="width: 240px; height: 30px; font-weight: bold;" /></a><br />
&nbsp;&nbsp; <br />
&nbsp;
<a href="page2.jsp">
	<input name="Button2" type="button" value="Tenders By Name" style="width: 240px; height: 30px; font-weight: bold; " /></a><br />
	<br />
&nbsp;
<a href="page3.jsp">
	<input name="Button3" type="button" value="Tenders By Value" style="width: 240px; height: 30px; font-weight: bold; " /></a><br />
	<br />
&nbsp;
<a href="page4.jsp">
	<input name="Button4" type="button" value="Tenders Status" style="width: 240px; height: 30px; font-weight: bold; " /></a><br />
	<br />
&nbsp;
<a href="page5.jsp">
	<input name="Button5" type="button" value="Downloads" style="width: 240px; height: 30px; font-weight: bold; background-color: #B9B9FF; " /></a><br />
	<br />
&nbsp;&nbsp;<a href="page6.jsp"><input name="Button6" type="button" value="Sitemap" style="width: 240px; height: 30px; font-weight: bold; " /></a></div>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div style="position: absolute; width: 100px; height: 100px; z-index: 6; left: 301px; top: 181px" id="layer9">
	<table style="width: 679px; height: 386px">
	<tr>
		<td height="31" colspan="3" class="td_caption" align="center" style="font-family: tahoma; font-size: 11px; color: rgb(0, 0, 0); padding-right: 5px; padding-left: 5px; font-weight: normal; padding-bottom: 2px; padding-top: 2px; height: 20px; background-color: rgb(240, 240, 240); ">
		<strong>&nbsp; Open source software links</strong></td>
	</tr>
	<tr>
		<td width="10%" class="td_caption" style="font-family: tahoma; font-size: 11px; color: rgb(0, 0, 0); padding-right: 5px; padding-left: 5px; font-weight: normal; padding-bottom: 2px; padding-top: 2px; height: 20px; background-color: rgb(240, 240, 240); ">
		<strong>S.No</strong></td>
		<td width="40%" class="td_caption" style="font-family: tahoma; font-size: 11px; color: rgb(0, 0, 0); padding-right: 5px; padding-left: 5px; font-weight: normal; padding-bottom: 2px; padding-top: 2px; height: 20px; background-color: rgb(240, 240, 240); ">
		<strong>Downloads</strong></td>
		<td width="50%" class="td_caption" style="font-family: tahoma; font-size: 11px; color: rgb(0, 0, 0); padding-right: 5px; padding-left: 5px; font-weight: normal; padding-bottom: 2px; padding-top: 2px; height: 20px; background-color: rgb(240, 240, 240); ">
		<strong>Link</strong></td>
	</tr>
	<tr>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		&nbsp;1</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		Open office suite</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		<a target="_blank" style="color: rgb(205, 76, 10); text-decoration: none; " href="http://download.openoffice.org/">
		Open office</a></td>
	</tr>
	<tr>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		2</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		Autocad DWF Viewer</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		<a target="_blank" style="color: rgb(205, 76, 10); text-decoration: none; " href="http://dwfcommunity.autodesk.com/products/autodesk-dwf-viewer.html">
		DWF Viewer</a></td>
	</tr>
	<tr>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		3</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		PDF Reader</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		<a target="_blank" style="color: rgb(205, 76, 10); text-decoration: none; " href="http://www.adobe.com/products/acrobat/readstep2.html">
		PDF Reader</a></td>
	</tr>
	<tr>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		4</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		PDF Creator</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		<a target="_blank" style="color: rgb(205, 76, 10); text-decoration: none; " href="http://www.pdfforge.org/products/pdfcreator/download">
		PDF Creator</a></td>
	</tr>
	<tr>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		5</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		JRE download</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		<a target="_blank" style="color: rgb(205, 76, 10); text-decoration: none; " href="http://java.sun.com/javase/downloads/index.jsp">
		JRE</a></td>
	</tr>
	<tr>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		6(A)</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		NICCA DSC Drivers</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		<a target="_blank" style="color: rgb(205, 76, 10); text-decoration: none; " href="https://nicca.nic.in/pdf/safenetbs.zip">
		Old Driver</a>,<span class="Apple-converted-space">&nbsp;</span><a target="_blank" style="color: rgb(205, 76, 10); text-decoration: none; " href="https://nicca.nic.in/pdf/safesign.zip">New 
		Driver</a>,<span class="Apple-converted-space">&nbsp;</span><a target="_blank" style="color: rgb(205, 76, 10); text-decoration: none; " href="https://nicca.nic.in/pdf/pkiwin455.zip">Aladdin 
		eToken</a>,<span class="Apple-converted-space">&nbsp;</span><a target="_blank" style="color: rgb(205, 76, 10); text-decoration: none; " href="http://nicca.nic.in/pdf/StarKeyToken.zip">Star 
		Key</a></td>
	</tr>
	<tr>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		6(B)</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		NICCA Security Certificate</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		<a id="NICCA" onclick="return openPopUp(this, 'width=600,height=600,resizable=yes,scrollbars=yes')" style="color: rgb(205, 76, 10); text-decoration: none; " href="http://govtprocurement.delhi.gov.in/nicgep/app?component=NICCA&amp;page=StandardBiddingDocuments&amp;service=direct&amp;session=T&amp;sp=SNICCA_Security_Chain.rar">
		NICCA Security Certificate</a></td>
	</tr>
	<tr>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		7</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		BOQ Downloads</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		<table>
			<tr>
				<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); width: 245px;">
				<a id="DirectLink_6" onclick="return openPopUp(this, 'width=600,height=600,resizable=yes,scrollbars=yes')" style="color: rgb(205, 76, 10); text-decoration: none; " href="http://govtprocurement.delhi.gov.in/nicgep/app?component=%24DirectLink_6&amp;page=StandardBiddingDocuments&amp;service=direct&amp;session=T&amp;sp=SBOQ_itemrate_sample.xls">
				BOQ_itemrate_template_sample.xls</a></td>
			</tr>
			<tr>
				<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); width: 245px;">
				<a id="DirectLink_7" onclick="return openPopUp(this, 'width=600,height=600,resizable=yes,scrollbars=yes')" style="color: rgb(205, 76, 10); text-decoration: none; " href="http://govtprocurement.delhi.gov.in/nicgep/app?component=%24DirectLink_7&amp;page=StandardBiddingDocuments&amp;service=direct&amp;session=T&amp;sp=SBOQ_percentage_sample.xls">
				BOQ_percentage_template_sample.xls</a></td>
			</tr>
			<tr>
				<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); width: 245px;">
				<a id="DirectLink_8" onclick="return openPopUp(this, 'width=600,height=600,resizable=yes,scrollbars=yes')" style="color: rgb(205, 76, 10); text-decoration: none; " href="http://govtprocurement.delhi.gov.in/nicgep/app?component=%24DirectLink_8&amp;page=StandardBiddingDocuments&amp;service=direct&amp;session=T&amp;sp=SBOQ_Item_Wise_Template.xls">
				BOQ_Item_Wise_Template.xls</a></td>
			</tr>
			<tr>
				<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); width: 245px;">
				<a id="DirectLink_9" onclick="return openPopUp(this, 'width=600,height=600,resizable=yes,scrollbars=yes')" style="color: rgb(205, 76, 10); text-decoration: none; " href="http://govtprocurement.delhi.gov.in/nicgep/app?component=%24DirectLink_9&amp;page=StandardBiddingDocuments&amp;service=direct&amp;session=T&amp;sp=SBOQ_DJB_PATTERN.xls">
				BOQ_DJB_PATTERN.xls</a></td>
			</tr>
			<tr>
				<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); width: 245px;">
				<a id="DirectLink_10" onclick="return openPopUp(this, 'width=600,height=600,resizable=yes,scrollbars=yes')" style="color: rgb(205, 76, 10); text-decoration: none; " href="http://govtprocurement.delhi.gov.in/nicgep/app?component=%24DirectLink_10&amp;page=StandardBiddingDocuments&amp;service=direct&amp;session=T&amp;sp=SBOQ_WITH_C1D1.xls">
				BOQ_WITH_C1D1.xls</a></td>
			</tr>
			<tr>
				<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); width: 245px;">
				<a id="DirectLink_11" onclick="return openPopUp(this, 'width=600,height=600,resizable=yes,scrollbars=yes')" style="color: rgb(205, 76, 10); text-decoration: none; " href="http://govtprocurement.delhi.gov.in/nicgep/app?component=%24DirectLink_11&amp;page=StandardBiddingDocuments&amp;service=direct&amp;session=T&amp;sp=SBOQ_WITH_DEDUCTION.xls">
				BOQ_WITH_DEDUCTION.xls</a></td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		8</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		User Creation Data Sheet</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		<a id="DirectLink_12" onclick="return openPopUp(this, 'width=600,height=600,resizable=yes,scrollbars=yes')" style="color: rgb(205, 76, 10); text-decoration: none; " href="http://govtprocurement.delhi.gov.in/nicgep/app?component=%24DirectLink_12&amp;page=StandardBiddingDocuments&amp;service=direct&amp;session=T&amp;sp=Suser_datasheet.pdf">
		User Creation Datasheet</a></td>
	</tr>
	<tr>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		9</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		Tender Creation Data Sheet</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		<a id="DirectLink_13" onclick="return openPopUp(this, 'width=600,height=600,resizable=yes,scrollbars=yes')" style="color: rgb(205, 76, 10); text-decoration: none; " href="http://govtprocurement.delhi.gov.in/nicgep/app?component=%24DirectLink_13&amp;page=StandardBiddingDocuments&amp;service=direct&amp;session=T&amp;sp=Stender_datasheet.pdf">
		Tender Creation Datasheet</a></td>
	</tr>
	<tr>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		10</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		Corrigendum Creation Data Sheet</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		<a id="DirectLink_14" onclick="return openPopUp(this, 'width=600,height=600,resizable=yes,scrollbars=yes')" style="color: rgb(205, 76, 10); text-decoration: none; " href="http://govtprocurement.delhi.gov.in/nicgep/app?component=%24DirectLink_14&amp;page=StandardBiddingDocuments&amp;service=direct&amp;session=T&amp;sp=Scorrigendum_inputform.pdf">
		Corrigendum Creation Datasheet</a></td>
	</tr>
	<tr>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		11</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		e Brochure</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		<a id="DirectLink_15" onclick="return openPopUp(this, 'width=600,height=600,resizable=yes,scrollbars=yes')" style="color: rgb(205, 76, 10); text-decoration: none; " href="http://govtprocurement.delhi.gov.in/nicgep/app?component=%24DirectLink_15&amp;page=StandardBiddingDocuments&amp;service=direct&amp;session=T&amp;sp=Sgeneral.pdf">
		General</a><span class="Apple-converted-space">&nbsp;</span>,<span class="Apple-converted-space">&nbsp;</span><a id="DirectLink_16" onclick="return openPopUp(this, 'width=600,height=600,resizable=yes,scrollbars=yes')" style="color: rgb(205, 76, 10); text-decoration: none; " href="http://govtprocurement.delhi.gov.in/nicgep/app?component=%24DirectLink_16&amp;page=StandardBiddingDocuments&amp;service=direct&amp;session=T&amp;sp=Sdetail.pdf">Detail</a></td>
	</tr>
	<tr>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		12</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		Department User Manual</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		<a id="DirectLink_17" onclick="return openPopUp(this, 'width=600,height=600,resizable=yes,scrollbars=yes')" style="color: rgb(205, 76, 10); text-decoration: none; " href="http://govtprocurement.delhi.gov.in/nicgep/app?component=%24DirectLink_17&amp;page=StandardBiddingDocuments&amp;service=direct&amp;session=T&amp;sp=SDepartmentUserManual.pdf">
		Department User Manual</a></td>
	</tr>
	<tr>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		13</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		Bidder Manual Kit</td>
		<td style="font-family: tahoma; font-size: 11px; color: rgb(37, 37, 37); ">
		<a id="DirectLink_18" onclick="return openPopUp(this, 'width=600,height=600,resizable=yes,scrollbars=yes')" style="color: rgb(205, 76, 10); text-decoration: none; " href="http://govtprocurement.delhi.gov.in/nicgep/app?component=%24DirectLink_18&amp;page=StandardBiddingDocuments&amp;service=direct&amp;session=T&amp;sp=SBidderUserManual.pdf">
		Bidder Manual Kit</a></td>
	</tr>
</table>
</div>
<table border="1" cellspacing="0" cellpadding="4" style="width: 51%; height: 209px">
</table>
<p>&nbsp;&nbsp;&nbsp; </p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

</body>

</html>
