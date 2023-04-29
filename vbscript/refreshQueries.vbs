Set objExcel = CreateObject("Excel.Application")
objExcel.Visible = False
objExcel.DisplayAlerts = False
Set objWorkbook = objExcel.Workbooks.Open("")

For Each objQueryTable in objWorkbook.QueryTables
    objQueryTable.Refresh
Next

objWorkbook.Save
objWorkbook.Close
objExcel.Quit

Set objQueryTable = Nothing
Set objWorkbook = Nothing
Set objExcel = Nothing
