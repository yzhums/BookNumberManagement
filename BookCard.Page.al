page 50200 "ZY Book Card"
{
    Caption = 'Book Card';
    PageType = Card;
    SourceTable = "ZY Book";
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field(Title; Title)
                {
                    ApplicationArea = All;
                }
            }
            group(Details)
            {
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