using System;
using Microsoft.SharePoint;
using Microsoft.SharePoint.WebControls;

namespace SaveItemsToSharePointList.Layouts
{
    public partial class SaveItemsToSharePointList : LayoutsPageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void AddQuestionsToSharePointList_Click(object sender, EventArgs e)
        {
            try
            {
                using (SPSite mySite = new SPSite("YOUR SHAREPOINT SITE URL"))
                {
                    using (SPWeb myWeb = mySite.OpenWeb())
                    {
                        SPList list = myWeb.Lists["YOUR SHAREPOINT LIST NAME"];
                        SPListItem listItem = list.Items.Add();
                        
                        //The Square Brackets Contains the name of the Sharepoint Column you want to save to, while the Text Value on the other side of the 
                        //equation are the text Boxes on your user interface where you input the value you want to save to the sharepoint list.
                        listItem["Question ID"] = AdminquestionNumber1.Text;
                        listItem["Question"] = Adminquestion1.Text;
                        listItem["Option1"] = AdminOption1.Text;
                        listItem["Option2"] = AdminOption2.Text;
                        listItem["Option3"] = AdminOption3.Text;
                        listItem["Option4"] = AdminOption4.Text;
                        listItem["Answer"] = AdminAnswer.Text;

                        //Update the Items to your Sharepoint List's columns
                        listItem.Update();
                    }
                }
            }
            catch (Exception exception)
            {
               //LOG ERROR
            }
        }
    }
}
