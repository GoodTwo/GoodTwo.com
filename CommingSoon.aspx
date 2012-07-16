<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CommingSoon.aspx.cs" Inherits="CommingSoon" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <!--[if lte IE 6]>
<meta http-equiv="refresh" content="0; url=/v/vspfiles/ie6_home.html" />
<script type="text/javascript">
/* <![CDATA[ */
window.top.location = '/v/vspfiles/ie6_home.html';
/* ]]> */
</script>
<![endif]-->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>goodtwo | coming soon.</title>
    <style type="text/css">
        html, body
        {
            min-height: 100%;
        }
        .bgimage
        {
            position: absolute;
            z-index: -1;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }
        #footer
        {
            position: absolute;
            bottom: 0px;
            height: 200px;
            width: 100%;
            text-align: center;
            overflow: auto;
        }
        .style1
        {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: 13px;
            color: #000000;
            background-color: #FFFFFF;
            padding: 2px;
            height: 19;
            width: 180px;
            border: 0px solid #7F9DB9;
        }
        .button
        {
            border: 0px solid #006;
            background: #ffffff;
            color: #000000;
            background-color: #FFFFFF;
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: 9px;
            color: #000000;
        }
        -- ></style>
</head>
<body>
    <img class="bgimage" src="Images/goodtwo_bkgd_splash.jpg" />
    <div id="wrapper">
        <div id="footer">
            <table width="555" height="101" border="0" align="center" cellpadding="0" cellspacing="0"
                id="Table_01">
                <tr>
                    <td>
                        <img src="Images/sign_up_bar_01.gif" width="2" height="43" alt="">
                    </td>
                    <td colspan="3">
                        <img src="Images/sign_up_bar_02.gif" width="553" height="43" alt="">
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <img src="Images/sign_up_bar_03.gif" width="17" height="41" alt="">
                    </td>
                    <td align="center" bgcolor="#FFFFFF">
                        <script type='text/javascript'>
                            function validate9() {
                                var isValid = true;
                                var isNewsletterSelected = true;
                                var errorString = '';
                                var x = document.OptinForm9;
                                if (x.UEmail.value == "") {
                                    errorString = errorString + "Email Address. \n ";
                                    isValid = false;
                                }
                                else {
                                    if (x.UEmail.value.indexOf("@") == -1 || x.UEmail.value.indexOf(".") == -1) {
                                        errorString = errorString + 'Invalid email address.';
                                        isValid = false;
                                    }
                                }

                                if (isValid == true && isNewsletterSelected == true) {
                                    return true;
                                }
                                else {
                                    if (isNewsletterSelected == false) {
                                        errorString = errorString + "----------------------\nPlease select at least one subscription";
                                    }
                                    alert("Following fields are required:\n\n" + errorString); return false;
                                }
                            }
 </script>
                        <form id='Optin9' name="OptinForm9" method="post" action='http://click.oo155.com/OptIn.aspx?OptinFormID=9&26241823=3247'
                        onsubmit='return validate9();'>
                        <input type='hidden' name='OptinFormID' value='9' />
                        <input type='hidden' name='26241823' value='3247' />
                        <input name="UEmail" type="text" class="style1">
                        <input type="submit" value="<enter>" class="button" />
                        </form>
                    </td>
                    <td>
                        <img src="Images/sign_up_bar_05.gif" alt="" width="260" height="41" border="0" usemap="#Map">
                    </td>
                </tr>
                <tr>
                    <td>
                        <img src="Images/sign_up_bar_06.gif" width="2" height="16" alt="">
                    </td>
                    <td colspan="3">
                        <img src="Images/sign_up_bar_07.gif" width="553" height="16" alt="">
                    </td>
                </tr>
                <tr>
                    <td>
                        <img src="Images/spacer.gif" width="2" height="1" alt="" />
                    </td>
                    <td>
                        <img src="Images/spacer.gif" width="15" height="1" alt="" />
                    </td>
                    <td>
                        <img src="Images/spacer.gif" width="278" height="1" alt="" />
                    </td>
                    <td>
                        <img src="Images/spacer.gif" width="260" height="1" alt="" />
                    </td>
                </tr>
            </table>
        </div>
        <map name="Map" id="Map">
            <area shape="rect" coords="114,1,157,40" href="http://www.facebook.com/pages/GoodTwo/154434547934853"
                target="_new" alt="Facebook" />
            <area shape="rect" coords="182,0,244,42" href="http://www.twitter.com/good_two" target="_new"
                alt="Twitter" />
        </map>
</body>
</html>
