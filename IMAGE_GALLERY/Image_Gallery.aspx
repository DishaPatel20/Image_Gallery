<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Image_Gallery.aspx.cs" Inherits="IMAGE_GALLERY.Image_Gallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Image Gallery</title>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
        }

        body {
            background-color: #704241;
            display: flexbox;
            flex-align: center;
            text-align: center;
        }

        #Panel1 {
            margin-left: 60px;
            text-align: left;
            margin-top: 20px;
            border-radius: 10px;
            background: #704241;
            box-shadow: inset 10px 10px 14px #2d1a1a, inset -10px -10px 14px #b36a68;
            padding: 10px;
        }

        #FileUpload1 {
            border-radius: 50px;
            background: #704241;
            box-shadow: 5px 5px 10px #2d1a1a, -5px -5px 10px #b36a68;
            font-size: x-large;
            font-weight: 900;
            border:none;
            outline:none;
        }
        #FileUpload1:hover {
            background: #704241;
box-shadow: inset 10px 10px 8px #2d1a1a,
            inset -10px -10px 8px #b36a68;
        }

        #Button1 {
            border-radius: 50px;
            background: linear-gradient(145deg, #653b3b, #784746);
            box-shadow: 6px 6px 0px #2d1a1a, -6px -6px 0px #b36a68;
            border: none;
            outline: none;
            letter-spacing: 3px;
            margin-top: 30px;
            font-size: X-Large;
            font-family: 'Showcard Gothic';
            text-shadow: 3px 3px 2px #c4aead;
            -webkit-animation: glowing 1500ms infinite;
        }
        @-webkit-keyframes glowing {
  0% { background-color: #B20000; -webkit-box-shadow: 2px 2px 3px #B20000; }
  50% { background-color: #FF0000; -webkit-box-shadow: 0 0 40px #FF0000; }
  100% { background-color: #B20000; -webkit-box-shadow: 0 0 3px #B20000; }
}

            #Button1:hover {
                background: #704241;
                box-shadow: inset 6px 6px 12px #2d1a1a, inset -6px -6px 12px #b36a68;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <br />

            <asp:FileUpload ID="FileUpload1" runat="server" Height="61px" Width="363px" />
            &nbsp;<br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="47px" OnClick="Button1_Click" Text="UPLOAD" Width="172px" />
            <br />
            <asp:Panel ID="Panel1" runat="server" Width="90%">
            </asp:Panel>

        </div>
    </form>
</body>
</html>
