page 50201 "ZY Book List"
{
    Caption = 'Book List';
    PageType = List;
    SourceTable = "ZY Book";
    ModifyAllowed = false;
    CardPageId = 50200;
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field(Title; Title)
                {
                    ApplicationArea = All;
                }
                field(Author; Author)
                {
                    ApplicationArea = All;
                }
                field("Page Count"; "Page Count")
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}