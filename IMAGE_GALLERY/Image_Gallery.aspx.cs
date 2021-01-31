using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace IMAGE_GALLERY
{
    public partial class Image_Gallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UploadImage();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFile)
            {
                string fileName = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/img/" + fileName));
            }
            Response.Redirect("~/Image_Gallery.aspx");
        }

        private void UploadImage()
        {
            foreach (string strFileName in Directory.GetFiles(Server.MapPath("~/img/")))
            {
                ImageButton imageButton = new ImageButton();
                FileInfo fileInfo = new FileInfo(strFileName);
                imageButton.ImageUrl = "~/img/" + fileInfo.Name;
                imageButton.Width = Unit.Pixel(200);
                imageButton.Height = Unit.Pixel(200);
                imageButton.Style.Add("padding", "5px");
                imageButton.Click += new ImageClickEventHandler(ImageButton_Click);
                Panel1.Controls.Add(imageButton);
            }
        }

        private void ImageButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/DISPLAY.aspx?ImageUrl=" + ((ImageButton)sender).ImageUrl);
        }
    }
}