using System;

using System.Web;

using System.Drawing;

using System.Web.SessionState;

using System.Drawing.Imaging;

using System.Drawing.Drawing2D;







public class ValidateCode : IHttpHandler, IRequiresSessionState
{



    public void ProcessRequest(HttpContext context)

    {

        int NumCount = 4;//預設產生5位亂數

        if ("" == "" + context.Request.QueryString["NumCount"])

        {//有指定產生幾位數



            //字串轉數字，轉型成功的話儲存到 NumCount，不成功的話，NumCount會是0

            try

            {

                NumCount = Int32.Parse(context.Request.QueryString["NumCount"].Replace("'", "''"));

            }

            catch

            {

                NumCount = 0;

            }

        }

        if (NumCount == 0) NumCount = 4;

        //取得亂數

        string str_ValidateCode = this.GetRandomNumberString(NumCount);

        /*用於驗證的Session*/

        context.Session["ValidateCode"] = str_ValidateCode;



        //取得圖片物件

        System.Drawing.Image image = this.CreateCheckCodeImage(context, str_ValidateCode);

        System.IO.MemoryStream ms = new System.IO.MemoryStream();

        image.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);

        /*輸出圖片*/

        context.Response.Clear();

        context.Response.ContentType = "image/jpeg";

        context.Response.BinaryWrite(ms.ToArray());

        ms.Close();



    }



    #region 產生數字亂數

    private string GetRandomNumberString(int int_NumberLength)

    {

        System.Text.StringBuilder str_Number = new System.Text.StringBuilder();//字串儲存器

        Random rand = new Random(Guid.NewGuid().GetHashCode());//亂數物件



        for (int i = 1; i <= int_NumberLength; i++)

        {

            string c = "";

            int j = rand.Next(0, 36);

            if (j < 10)

                c = j.ToString();

            else c = ((char)(65 + j - 10)).ToString();

            str_Number.Append(c);//產生0~9的亂數

        }



        return str_Number.ToString();

    }

    #endregion



    #region 產生圖片

    private System.Drawing.Image CreateCheckCodeImage(HttpContext context, string checkCode)

    {



        System.Drawing.Bitmap image = new System.Drawing.Bitmap((checkCode.Length * 25) + 16, 40);

        System.Drawing.Graphics g = Graphics.FromImage(image);





        //生成隨機生成器

        Random random = new Random(Guid.NewGuid().GetHashCode());

        int int_Red = 0;

        int int_Green = 0;

        int int_Blue = 0;

        int_Red = random.Next(240, 256);//產生0~255

        int_Green = random.Next(240, 256);//產生0~255

        int_Blue = (int_Red + int_Green > 400 ? 150 : 400 - int_Red - int_Green);

        int_Blue = (int_Blue > 255 ? 255 : int_Blue);

        int int_bkack = random.Next(150, 200);

        //清空圖片背景色

        g.Clear(Color.FromArgb(int_Red, int_Green, int_Blue));

        int blackbg = random.Next(0, 130);

        int garykbg = random.Next(130, 150);

        Rectangle rect = new Rectangle(0, 0, image.Width, image.Height);

        //Brush brushBack = new LinearGradientBrush(rect, Color.FromArgb(random.Next(0, 100), random.Next(230, 256), 255),

        //Color.FromArgb(255, random.Next(200, 256), 255), random.Next(45));



        //新增黑白漸層 

        Brush brushBack = new LinearGradientBrush(rect, Color.FromArgb(int_bkack, int_bkack, int_bkack),

        Color.FromArgb(255, 255, 255), 255);







        g.FillRectangle(brushBack, rect);



        //畫圖片的背景噪音線

        for (int i = 0; i <= 6; i++)

        {





            int x1 = random.Next(image.Width);

            int x2 = random.Next(image.Width);

            int y1 = random.Next(image.Height);

            int y2 = random.Next(image.Height);

            int b1 = random.Next(70, 150);

            int b2 = random.Next(40, 80);



            //Color line1 = Color.FromArgb(random.Next(0, 100), random.Next(220, 255), random.Next(220, 255));

            //Color line2 = Color.FromArgb(random.Next(0, 100), 255, random.Next(200, 240));



            Color line1 = Color.FromArgb(b1, b1, b1);

            Color line2 = Color.FromArgb(b2, b2, b2);



            g.DrawLine(new Pen(line1), x1, y1, x2, y2);



            g.DrawEllipse(new Pen(line2), new System.Drawing.Rectangle(x1, y1, x2, y2));

        }



        for (int i = 0; i < checkCode.Length; i++)

        {

            int Cr = 1, Cg = 1, Cb = 1;

            while (Cr + Cg + Cb != 1)

            {

                Cr = random.Next(0, 2);

                Cg = random.Next(0, 2);

                Cb = random.Next(0, 2);

            }

            //增強對比

            //while (Cr == Cg && Cg == Cb)

            //{

            //    Cr = random.Next(0, 2);

            //    Cg = random.Next(0, 2);

            //    Cb = random.Next(0, 2); 

            //}    



            //字體顏色

            Color wc = Color.FromArgb(Cr * 255, Cg * 130, Cb * 255);

            Color wc2 = Color.FromArgb(Cb * 255, Cr * 130, Cg * 255);

            int y = random.Next(0, 6);

            Font font = new System.Drawing.Font("Consolas", 19 + y, (System.Drawing.FontStyle.Bold));

            System.Drawing.Drawing2D.LinearGradientBrush brush = new System.Drawing.Drawing2D.LinearGradientBrush(new Rectangle(0, 0, image.Width, image.Height), wc, wc2, 1.2F, true);

            //設置繪筆 

            g.DrawString(checkCode.Substring(i, 1), font, brush, 8 + i * 25, 2 + random.Next(0, 6 - y));

        }

        for (int i = 0; i <= 25; i++)

        {



            //畫圖片的前景噪音點

            int x = random.Next(image.Width);

            int y = random.Next(image.Height);



            image.SetPixel(x, y, Color.FromArgb(random.Next()));

        }



        //畫圖片的邊框線

        g.DrawRectangle(new Pen(Color.DarkGray, 1), 0, 0, image.Width - 1, image.Height - 1);





        return image;



    }

    #endregion



    public bool IsReusable
    {

        get
        {

            return false;

        }

    }



}

