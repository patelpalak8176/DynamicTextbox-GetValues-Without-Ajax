using System;
using System.Web.UI;

namespace DynamicTextboxes
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtSubmit_OnClick(object sender, EventArgs e)
        {
            var commaSeperatedResult = Request.Form["DynamicTextBox"];
            var replacedWithStarsString = commaSeperatedResult.Replace(",", "****");
        }
    }
}
