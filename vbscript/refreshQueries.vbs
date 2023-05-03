Set objExcel = CreateObject("Excel.Application")
objExcel.Visible = True
objExcel.DisplayAlerts = False
Set objWorkbook = objExcel.Workbooks.Open("Endereco")

WScript.Sleep 7000 

objWorkbook.RefreshAll

objWorkbook.Save

WScript.Sleep 7000 

objWorkbook.Close
objExcel.Quit

Set objWorkbook = Nothing
Set objExcel = Nothing