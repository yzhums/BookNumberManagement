pageextension 50200 SalesReceivablesSetupPageExt extends "Sales & Receivables Setup"
{
    layout
    {
        addafter("Customer Nos.")
        {
            field("Book Nos."; "Book Nos.")
            {
                Caption = 'Book Nos.';
                ApplicationArea = All;
            }
        }
    }
}