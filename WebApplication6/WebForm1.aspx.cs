using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e) // clear button

        {
            txtcourse.Text = " "; // Setting course text box to empty
            txtcredit.Text = "0"; // Setting credit text box to 0
        }
        protected void btnDelete_Click(object sender, EventArgs e) //Delete Selected registered Course

        {
            if (listofcourses.SelectedItem.Text != "--Code--") // check if its not the code

            {
                ListItem Delete = listofcourses.SelectedItem; // find the  selected one

                listofcourses.Items.Remove(Delete);// remove it from the list

                int totalCredit = Convert.ToInt32(this.labelcredit.Text);// to get credit nb

                string credit1 = Delete.Value;
                string[] credit = credit1.Split(new string[] { "_elie,"}, StringSplitOptions.None);
                totalCredit = totalCredit - int.Parse(credit[1]);// to  reduce credit nb

                this.labelcredit.Text = totalCredit.ToString();//to reset credit nb

            }
        }
        protected void btnDeleteAll_Click(object sender, EventArgs e)
        {
            labelcredit.Text = "0";
            listofcourses.Items.Clear();//to clear the list
            ListItem code = new ListItem("--Code--", "0");// to add the  list item code(fixed one)

            listofcourses.Items.Add(code);
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string course = txtcourse.Text;
            string credit = txtcredit.Text; if (course.Length == 5)// check if course digit are five
            { // if true we want to add
                ListItem item = new ListItem();
                item.Text = course;
                item.Value = course + "_elie," + credit;// to get a unique value for each listitem

                if (!listofmodules.Items.Contains(item))
                { //check if the course is already part of the list

                    listofmodules.Items.Add(item);
                }
            }
            else { txtcourse.Text = "course should be 5 digits"; }
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            int totalCredit = Convert.ToInt32(this.labelcredit.Text);// total number of credits

            int pos = listofmodules.SelectedIndex; // getting selected item position

            if (!listofcourses.Items.Contains(listofmodules.SelectedItem))// if item already in list of registred items
            {

                string credit1 = listofmodules.SelectedItem.Value; // getting the unique value before extracting credit nb


                string[] credit = credit1.Split(new string[] { "_elie," }, StringSplitOptions.None);// getting the credit number from the  unique value

                totalCredit = totalCredit + int.Parse(credit[1]); //  calculating the new credit number

                if (totalCredit < 37) // if less than 36 do the work

                { // if all coditons are true we add it
                    listofcourses.Items.Add(listofmodules.SelectedItem);
                     this.labelcredit.Text = totalCredit.ToString();
                }
            }
        }
        protected void btnUP_Click(object sender, EventArgs e)
        {
            int selectedIndex = listofcourses.SelectedIndex;
            if (listofcourses.SelectedIndex == 1) // if the item is the item under the string “—code—"

            {
                return;
            }
            else
            {
                if (selectedIndex > 0) // if the selected item is in the listbox
                {
                    {
                        listofcourses.Items.Insert
                        (selectedIndex - 1, listofcourses.Items
                        [selectedIndex]);
                        listofcourses.Items.RemoveAt(selectedIndex
                        + 1); listofcourses.SelectedIndex =
                        selectedIndex - 1;
                    }
                }
            }
        }
        protected void btnDown_Click(object sender, EventArgs e)
        {
            int selectedIndex = listofcourses.SelectedIndex;
            if (selectedIndex < listofcourses.Items.Count - 1 && selectedIndex != 0 && selectedIndex != -1)
            {
                listofcourses.Items.Insert(selectedIndex + 2,
                listofcourses.Items[selectedIndex]);
                listofcourses.Items.RemoveAt(selectedIndex);
                listofcourses.SelectedIndex = selectedIndex + 1;
            }
        }
    }
}
