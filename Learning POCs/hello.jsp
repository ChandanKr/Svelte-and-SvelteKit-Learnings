<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=UTF-8"	pageEncoding="UTF8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en-WW">
<head>
	<title><spring:message code="olssp.software.licensing.contact.us.page.title.txt"/></title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta content="Software Licensing Web Portal for registration and management of your software licence" name="description">
    <meta content="Schneider Electric software registration, One licensing" name="keywords">
    <!---------------------------------------- SDL Head files Start ---------------------------------------->
	<jsp:include page="headScripts.jsp"/>
	<!---------------------------------------- SDL Head files End ---------------------------------------->
	<script src="<c:url value="/olssp-resources/js/accessibilityToggle.js" />" type="text/javascript"></script>
	<link rel="stylesheet" href="<c:url value='/olssp-resources/css/contactPage.css' />" type="text/css">
</head>
<body class="bodyStyle">
		<!---------------------------------------- SDL Header HTML code Starts ---------------------------------------->
			${sdlContentMap.sdlHeaderContent}
		<!---------------------------------------- SDL Header HTML code Ends ---------------------------------------->
    <table id="MASTER" align="center" cellspacing="0" cellpadding="0">
        <tbody>
            <tr>
                <td>
                    <div style="width:1021px;">
                        <!--table-group-->
                        <div style="clear:both;display:inline;float:left;">
                            <!--table-->
                            <div style="display:inline;float:left;">
                                <div class="iw_component" style="clear: both; width: 1000px; display: inline; float: left; height: auto;">
                                    <div xmlns:java="http://xml.apache.org/xslt/java" class="breadcrumb">
                                        
                                         	<span id="ruler">
                                         		<span class="breadcrumbContent">&nbsp;<a href="<spring:message code="olssp.breadcrumb.content.home.url"/>" target="_self"><spring:message code="olssp.home.txt"/></a> </span>
                                         		<span class="breadcrumbContent">&nbsp;> <a href="<spring:message code="olssp.breadcrumb.content.support.url"/>" target="_self"><spring:message code="olssp.breadcrumb.support.txt"/></a></span>
                                         		<!--  <span class="breadcrumbContent">&nbsp;> <a href="/${languageCode}/work/support/software-licensing/landing-page" target="_self"><spring:message code="olssp.breadcrum.software.licensing.txt"/></a></span>-->
                                         		<span class="breadcrumbContent">&nbsp;> <a href="/sites/corporate/${languageCode}/support/software-licensing/landing-page" target="_self"><spring:message code="olssp.breadcrum.software.licensing.txt"/></a></span>
                                         		<span class="breadcrumbContentHome">&nbsp;> <spring:message code="olssp.software.registration.centers.link.txt"/></span>
                                         	</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div style="width:1021px;">
                        <!--table-group-->
                        <div style="clear:both;display:inline;float:left;">
                            <!--table-->
                            <div class="rwdDiv">
                                <div class="iw_component" style="clear: both; width: 210px; display: inline; float: left; height: auto;">
                                    <script type="text/javascript">
                                        var pagelocation = window.location.toString().split("/");
                                        if (pagelocation[3] != "iw-cc") {
                                            //	var cookieLang = get_cookie("Language");		


                                            var language_op = "${languageCode}";


                                            document.cookie = "Language=" + language_op + ";path=/";
                                        }
                                    </script>
                                     <jsp:include page="olsspLinks.jsp"/>
                                </div>
                            </div>
                            <!--table-->
                            <div  class="rwdDiv">
                                <div class="iw_component" style="clear: both; width: 610px; display: inline; float: left; height: auto;">
                                    <div class="publicationViewer">
                                        <div class="publicationViewerHeader">
                                            <div class="white pub_header">
                                              <div class="optimisticTitleContainer">
                                                    <!-- TITLE_BEGINS -->
                                                    <h1 class="ttext"><spring:message code="olssp.contact.software.registration.center.txt"/> </h1>
                                                    <!-- TITLE_END -->
                                                </div>
                                                <div class="content">
                                                    <img alt="" src="/olssp-resources/images/pictures/support/software-licensing/software-licensing-banner.jpg" class="leftImage">
                                                </div>
                                              </div>
                                        </div>
                                        <!-- CONTENT_BEGIN -->
                                        <div class="publication white">
                                            <div>
                                                <table class="layout">
                                                    <tbody>
                                                        <tr>
                                                            <td valign="center">
                                                                <h2 class="subtitle ttext"><spring:message code="olssp.benefit.direct.access.help.txt"/> </h2>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="publicationViewer_titleBlock_spacer">&nbsp;</div>
                                            <div class="richText">
                                            </div>
                                        </div>
                                        <div class="publication grey">
                                            
                                            <div class="content">   
                                                <c:set var="sortByCountryItems"> <spring:message code="olssp.country.list.items.key.colon.display.value.separated.by.hash"/> </c:set>
                                                <c:set var="sortByCountryHeaderItems"> <spring:message code="olssp.country.header.list.items.key.colon.display.value.separated.by.comma"/> </c:set>
                                                 <table class="TablePadding">
                                                     <tbody>
                                                        <tr>
	                                                         <c:forTokens items="${sortByCountryHeaderItems }" delims="," var="sortCountryHdrItems">
												   				<th>${sortCountryHdrItems}</th>
	                                                         </c:forTokens>
														</tr>
													<c:forTokens items="${sortByCountryItems }" delims="|" var="sortCountryItems">
												    	<tr>
	                                                         <td>${fn:split(sortCountryItems, '#')[0]}</td>
	                                                         <td>${fn:split(sortCountryItems, '#')[1]}</td>
	                                                         <td>${fn:split(sortCountryItems, '#')[2]}</td>
	                                                         <td><a class="tlinks" href="mailto:${fn:split(sortCountryItems, '#')[3]}">${fn:split(sortCountryItems, '#')[3]}</a></td>
	                                                     	<td>${fn:split(sortCountryItems, '#')[4]}</td>
	                                                     </tr>
                                                  	</c:forTokens>
                                                     </tbody>
                                                 </table>  
                                            </div>                                          
                                        </div>
                                        <!-- CONTENT_END -->
                                    </div>
                                    <p class="pub_footer">&nbsp;</p>
                                </div>
                            </div>
                            <!--table-->
                            <div  class="rwdDiv">
                                <div class="iw_component" style="clear:both;width:150px;margin-left:20px;display:inline;float:left;">
                                    <jsp:include page="toKnowMoreLinks.jsp"/>
                                </div>
                            </div>
                        </div>                          
                    </div>
                </td>
            </tr>
        </tbody>    
    </table>    
    <!---------------------------------------- SDL Toggle HTML code Starts ---------------------------------------->
			${sdlContentMap.toggleSdlContent}
	<!---------------------------------------- SDL Toggle HTML code Ends ---------------------------------------->
    <!---------------------------------------- SDL Footer HTML code Starts ---------------------------------------->
			${sdlContentMap.sdlFooterContent}
	<!---------------------------------------- SDL Footer HTML code Ends ---------------------------------------->
	<script type="text/javascript"> pageStatInjection(); </script>
</body>



</html>