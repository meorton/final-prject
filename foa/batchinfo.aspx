<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" Title="Untitled Page" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <h2>
    Batch Information</h2>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" AutoGenerateRows="False" DataKeyNames="bcode" DataSourceID="SqlDataSource1" BackImageUrl="~/Bright-Lights-Background-Wallpaper.jpg" BorderStyle="Groove" Width="378px">
        <Fields>
            <asp:BoundField DataField="bcode" HeaderText="Batch Code" ReadOnly="True" SortExpression="bcode" />
            <asp:BoundField DataField="cname" HeaderText="Course Name" SortExpression="cname" />
            <asp:BoundField DataField="stdate" HeaderText="St. Date" ReadOnly="True" SortExpression="stdate" />
            <asp:BoundField DataField="enddate" HeaderText="Ending Date" ReadOnly="True" SortExpression="enddate" />
            <asp:BoundField DataField="timing" HeaderText="Timing" SortExpression="timing" />
            <asp:BoundField DataField="fee" HeaderText="Fee" SortExpression="fee" />
            <asp:BoundField DataField="duration" HeaderText="Duration" SortExpression="duration" />
            <asp:BoundField DataField="remarks" HeaderText="Remarks" SortExpression="remarks" />
        </Fields>
        <FieldHeaderStyle BackColor="Silver" />
        <HeaderStyle BackColor="#C0C0FF" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="select   bcode, cname,  convert(varchar(10),stdate,3)  as stdate,&#13;&#10; convert(varchar(10),enddate,3)  as enddate, timing, b.fee, b.duration,remarks&#13;&#10;from batches b, courses c&#13;&#10;where  b.ccode = c.ccode and bcode = @bcode">
        <SelectParameters>
            <asp:QueryStringParameter Name="bcode" QueryStringField="bcode" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <h3>
        Students of Batch</h3>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
        DataSourceID="SqlDataSource2" PageSize="5" EmptyDataText="No students found for this batch!" BackImageUrl="~/Bright-Lights-Background-Wallpaper.jpg">
        <Columns>
            <asp:BoundField DataField="rollno" HeaderText="Reg Id" SortExpression="rollno" />
            <asp:BoundField DataField="name" HeaderText="First Name" SortExpression="name" />
            <asp:BoundField DataField="fname" HeaderText="Last Nmae" SortExpression="fname" />
            <asp:BoundField DataField="curocup" HeaderText="Occupation" SortExpression="curocup" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="phone" HeaderText="Hhone" SortExpression="phone" />
            <asp:BoundField DataField="dj" HeaderText="Date Enrolled" SortExpression="dj" />
        </Columns>
        <HeaderStyle BackColor="Silver" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT [rollno], [name], [fname], [curocup], [email], [phone], dj = convert(varchar(10),dj,3) FROM [students] WHERE ([bcode] = @bcode) ORDER BY [rollno]">
        <SelectParameters>
            <asp:QueryStringParameter Name="bcode" QueryStringField="bcode" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
</asp:Content>

