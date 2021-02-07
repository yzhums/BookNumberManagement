table 50200 "ZY Book"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Code[10])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                if "No." <> xRec."No." then begin
                    SalesSetup.Get();
                    NoSeriesMgt.TestManual(SalesSetup."Book Nos.");
                    "No. Series" := '';
                end;
            end;
        }
        field(2; Title; Text[30])
        {
            Caption = 'Title';
            DataClassification = CustomerContent;
        }
        field(3; Author; Text[30])
        {
            Caption = 'Author';
            DataClassification = CustomerContent;
        }
        field(4; "Page Count"; Integer)
        {
            Caption = 'Page Count';
            DataClassification = CustomerContent;
        }
        field(5; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
    begin
        if "No." = '' then begin
            SalesSetup.Get();
            SalesSetup.TestField("Book Nos.");
            NoSeriesMgt.InitSeries(SalesSetup."Book Nos.", xRec."No. Series", 0D, "No.", "No. Series");
        end;
    end;

    var
        SalesSetup: Record "Sales & Receivables Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;
}