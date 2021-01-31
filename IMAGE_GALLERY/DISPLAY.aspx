<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DISPLAY.aspx.cs" Inherits="IMAGE_GALLERY.DISPLAY" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
         * {
            margin: 0;
            padding: 0;
        }

        body {
            background-color:#674846;
            display: flexbox;
            flex-align: center;
            text-align: center;
        }
         #Button1 {
            border-radius: 50px;
            background: linear-gradient(145deg, #5d413f, #6e4d4b);
box-shadow:  7px 7px 0px #291d1c,
             -7px -7px 0px #a57370;
            border: none;
            outline: none;
            letter-spacing: 3px;
            margin-top: 30px;
            font-size: X-Large;
            font-family: 'Showcard Gothic';
            text-shadow: 3px 3px 2px #c4aead;
        }

            #Button1:hover {
               background: #674846;
box-shadow: inset 6px 6px 11px #291d1c,
            inset -6px -6px 11px #a57370;
            }
        #Image1 {
            border-radius: 10px;
background: linear-gradient(145deg, #5d413f, #6e4d4b);
box-shadow:  11px 11px 0px #291d1c,
             -11px -11px 0px #a57370;
margin-top:20px;
border:none;
outline:none;
padding:10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" Height="47px"  Text="BACK TO GALLERY" OnClick="Button1_Click" Width="314px" />
        <br /><br />
         <asp:Image ID="Image1" runat="server" Height="629px" Width="959px" />
        <br /><br />
    </div>
    </form>
</body>
</html>
