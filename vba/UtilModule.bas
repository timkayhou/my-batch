Attribute VB_Name = "UtilModule"
'自動で消えるメッセージボックス
Public Function NewMsgBox(msg As String)
    Dim WSH As Object
    Set WSH = CreateObject("WScript.Shell")
    WSH.Popup msg, 1, "作成完了", vbInformation
    Set WSH = Nothing
End Function

'エラーを発生させる。
Public Sub RaiseError(msg As String, Optional lineNo As Integer = 0)
    If lineNo <= 0 Then lineNo = gRidx
    Err.Raise Number:=vbObjectError + 513, Description:=lineNo & "行目: " & msg
End Sub

'yyyy/mm/dd→yyyymmdd
Public Function DateToYyyymmdd(dateString As Variant) As String
    DateToYyyymmdd = Replace(dateString, "/", "")
End Function

'最終行番号を取得
Public Function GetLastRowNo(dataRowIndex As Integer, dataColIndex As String) As Integer
    lastRowNum = Cells(dataRowIndex, dataColIndex).End(xlDown).Row
    If lastRowNum > 0 And lastRowNum < 16382 Then
        GetLastRowNo = lastRowNum
    Else
        GetLastRowNo = dataRowIndex
    End If
End Function

'最終列番号を取得
Public Function GetLastColNo(dataRowIndex As Integer, dataColIndex As String) As Integer
    dataColNum = GetColNum(dataColIndex)
    lastColNum = Cells(dataRowIndex, dataColNum).End(xlToRight).Column
    If lastColNum > 0 And lastColNum < 16382 Then
        GetLastColNo = lastColNum
    Else
        GetLastColNo = dataColNum
    End If
End Function

'列番号を取得
Public Function GetColNum(cellCol As String) As Integer
    GetColNum = Columns(cellCol).Column
End Function

'列名を取得
Public Function GetCol(cellColNum As Integer) As String
    GetCol = Split(Cells(cellColNum).Address, "$")(1)
End Function

'セルの行を取得
Public Function GetCellRow(cellStr As String) As Integer
    GetCellRow = Range(cellStr).Row
End Function

'セルの列を取得
Public Function GetCellCol(cellStr As String) As String
    GetCellCol = GetCol(Range(cellStr).Column)
End Function

'JSON配列値を生成する。
Public Function ArrayValues(rawVal As String, Optional citing As String = "")
    Dim val As String, v As Variant
    Dim vals() As String: vals = Split(rawVal, ",")
    For Each v In vals
        If Len(val) > 0 Then val = val & ", "
        val = val & citing & Trim(v) & citing
    Next
    ArrayValues = "[" & val & "]"
End Function

'JSONファイル出力
Public Function StringToJson(json As String, fileName As String)
    Dim oStream As New ADODB.Stream

    With oStream
        CreateObject ("ADODB.Stream")
        .Type = 2
        .Charset = "utf-8"
        .Open
        .WriteText json, 1
        .SaveToFile ThisWorkbook.path & "/" & fileName & ".json", 2
        .Close
    End With

    Set oStream = Nothing
End Function

'指定セルからの列リストを取得
Public Function GetListInCol(rowIndex As Integer, colIndex As String) As Collection
    Dim objValues As New Collection
    lastRowNo = GetLastRowNo(rowIndex, colIndex)
    For i = rowIndex To lastRowNo
        With objValues
            .Add Item:=Cells(i, colIndex).Value
        End With
    Next i
    Set GetListInCol = objValues
End Function

'指定セルからの行リストを取得
Public Function GetListInRow(rowIndex As Integer, colIndex As String) As Collection
    '列番号を取得
    colNum = GetColNum(colIndex)
    Dim objValues As New Collection
    lastColNo = GetLastColNo(rowIndex, colIndex)
    For i = colNum To lastColNo
        With objValues
            .Add Item:=Cells(rowIndex, i).Value
        End With
    Next i
    Set GetListInRow = objValues
End Function

'指定セルの列JSONを取得
Public Function GetColJson(tableNameRow As Integer, tableNameCol As String, dataRow As Integer, dataCol As String) As String
    'テーブルリストを取得
    Dim tableNameList As New Collection
    Set tableNameList = GetListInCol(tableNameRow, tableNameCol)
    Dim newTableNameList As New Collection
    'テーブルリストに「""」追加
    For i = 1 To tableNameList.Count
        With newTableNameList
            .Add Item:=Chr(34) & tableNameList(i) & Chr(34)
        End With
    Next i
    'データリストを取得
    Dim dataList As New Collection
    Set dataList = GetListInCol(dataRow, dataCol)
    Dim newDataList As New Collection
     'データリストに「""」追加
    For j = 1 To dataList.Count
        nowRow = dataRow + j - 1
        With newDataList
            .Add Item:=AddQuotation(dataCol & nowRow)
        End With
    Next j
    'データJSON作成
    Dim dataJson As String
    dataJson = "{ "
    'プロパティ数とデータ数のチェック
    If newTableNameList.Count = newDataList.Count Then
        For i = 1 To newTableNameList.Count
            dataJson = dataJson & newTableNameList(i) & ": " & newDataList(i) & ", "
        Next i
        '最後の「, 」を削除
        dataJson = Left(dataJson, Len(dataJson) - 2)
        dataJson = dataJson + " }"
        GetColJson = dataJson
    Else
        GetColJson = ""
    End If
End Function

'指定セルの行JSONを取得
Public Function GetRowJson(tableNameRow As Integer, tableNameCol As String, dataRow As Integer, dataCol As String) As String
    'テーブルリストを取得
    Dim tableNameList As New Collection
    Set tableNameList = GetListInRow(tableNameRow, tableNameCol)
    Dim newTableNameList As New Collection
    'テーブルリストに「""」追加
    For i = 1 To tableNameList.Count
        With newTableNameList
            .Add Item:=Chr(34) & tableNameList(i) & Chr(34)
        End With
    Next i
    'データリストを取得
    Dim dataList As New Collection
    Set dataList = GetListInRow(dataRow, dataCol)
    Dim newDataList As New Collection
     'データリストに「""」追加
    For j = 1 To dataList.Count
        '列番号を取得
        nowColNum = GetColNum(dataCol) + j - 1
        '列名を取得
        nowCol = Split((Columns(nowColNum).Address(, 0)), ":")(0)
        With newDataList
            .Add Item:=AddQuotation(nowCol & dataRow)
        End With
    Next j
    'データJSON作成
    Dim dataJson As String
    dataJson = "{ "
    'プロパティ数とデータ数のチェック
    If newTableNameList.Count = newDataList.Count Then
        For i = 1 To newTableNameList.Count
            dataJson = dataJson & newTableNameList(i) & ": " & newDataList(i) & ", "
        Next i
        '最後の「, 」を削除
        dataJson = Left(dataJson, Len(dataJson) - 2)
        dataJson = dataJson + " }"
        GetRowJson = dataJson
    Else
        GetRowJson = ""
    End If
End Function

'1列が1オブジェクトのデータ数を取得
Public Function GetDataCountByCol(dataRow As Integer, dataCol As String) As Integer
    '列番号を取得
    dataColNo = GetColNum(dataCol)
    dataCount = GetLastColNo(dataRow, dataCol) - dataColNo + 1
    If dataCount > 0 And dataCount < 16382 Then
        GetDataCountByCol = dataCount
    Else
        GetDataCountByCol = 0
    End If
End Function

'1行が1オブジェクトのデータ数を取得
Public Function GetDataCountByRow(dataRow As Integer, dataCol As String) As Integer
    dataCount = GetLastRowNo(dataRow, dataCol) - dataRow + 1
    If dataCount > 0 And dataCount < 16382 Then
        GetDataCountByRow = dataCount
    Else
        GetDataCountByRow = 0
    End If
End Function

'1列が1オブジェクトのJSON取得
Public Function GetTableJsonByCol(tableNameRow As Integer, tableNameCol As String, dataRow As Integer, dataCol As String) As String
    '列番号を取得
    dataColNo = GetColNum(dataCol)
    'データ数を取得
    dataCount = GetDataCountByCol(dataRow, dataCol)
    Dim nowDataCol As String
    dataResult = ""
    If dataCount > 0 Then
        For i = 0 To dataCount - 1
            '列名を取得
            nowDataCol = GetCol(dataColNo + i)
            dataResult = dataResult & GetColJson(tableNameRow, tableNameCol, dataRow, nowDataCol)
            If i + 1 <> dataCount Then
                dataResult = dataResult & ", " & vbCrLf & vbTab
            End If
        Next i
    End If
    GetTableJsonByCol = dataResult
End Function

'1行が1オブジェクトのJSON取得
Public Function GetTableJsonByRow(tableNameRow As Integer, tableNameCol As String, dataRow As Integer, dataCol As String) As String
    '列番号を取得
    dataColNo = GetColNum(dataCol)
    'データ数を取得
    dataCount = GetDataCountByRow(dataRow, dataCol)
    Dim nowDataCol As String
    dataResult = "["
    If dataCount > 0 Then
        For i = 0 To dataCount - 1
            dataResult = dataResult & GetRowJson(tableNameRow, tableNameCol, dataRow + i, dataCol)
            If i + 1 <> dataCount Then
                dataResult = dataResult & ", " & vbCrLf & vbTab
            End If
        Next i
    End If
    '「]」を追加
    dataResult = dataResult & "]"
    GetTableJsonByRow = dataResult
End Function

'行列のチェックによるJSON取得
Public Function GetTableJson(TITLE_CELL As String, DATA_CELL As String, TABLE_TYPE As String)
    If TABLE_TYPE = "row" Then
        GetTableJson = GetTableJsonByRow(GetCellRow(TITLE_CELL), GetCellCol(TITLE_CELL), GetCellRow(DATA_CELL), GetCellCol(DATA_CELL))
    ElseIf TABLE_TYPE = "column" Then
        GetTableJson = GetTableJsonByCol(GetCellRow(TITLE_CELL), GetCellCol(TITLE_CELL), GetCellRow(DATA_CELL), GetCellCol(DATA_CELL))
    Else
        GetTableJson = "[]"
    End If
End Function

'キーワードの行を検索
Function FindRowNumber(searchString As String) As Integer
  Dim cell As Range
  ' 検索範囲の各セルをチェックします
  For Each cell In ActiveSheet.UsedRange
    If cell.Value = searchString Then
      ' 見つかった行の番号を出力します
      FindRowNumber = cell.Row
      Exit Function
    End If
  Next
End Function

'指定シートのキーワードの行を検索
Function FindSheetRowNumber(ws As Worksheet, searchString As String) As Integer
  Dim cell As Range
  ' 検索範囲の各セルをチェックします
  For Each cell In ws.UsedRange
    If cell.Value = searchString Then
      ' 見つかった行の番号を出力します
      FindSheetRowNumber = cell.Row
      Exit Function
    End If
  Next
End Function

'キーワードの列を検索
Function FindColumnString(searchString As String) As String
  Dim c As Range
  For Each c In ActiveSheet.UsedRange
    If c.Value = searchString Then
      FindColumnString = GetCol(c.Column)
      Exit Function
    End If
  Next c
End Function


'メモを取得
Public Function GetMemo(cellStr As String) As String
    GetMemo = Range(cellStr).Comment.Text
End Function

'リストのダブルクォーテーションを追加
Function ListStrAddQuotation(inputString As String) As String
    Dim items As Variant
    Dim outputString As String

    ' 入力文字列をコンマで分割してCollectionに格納する
    items = Split(inputString, ",")

    ' Collectionの各項目を処理する
    For Each Item In items
        ' 項目の前後にダブルクォーテーションを追加する
        outputString = outputString & Chr(34) & Replace(Item, "/", "") & Chr(34) & ","
    Next

    ' 最後のコンマを削除する
    outputString = Left(outputString, Len(outputString) - 1)

    ' 結果を返す
    ListStrAddQuotation = outputString
End Function

'別ワークブックのシートをコピーする
Function CopySheet(importPath As String, importSheet As String)
    'マクロ実行元
    Dim macroWb As Workbook

    'インポート先
    Dim importWb As Workbook

    'マクロを実行元のWorkbook
    Set macroWb = ThisWorkbook

    'データをインポート(シートの内容をコピー)
    Set importWb = Workbooks.Open(importPath)
    importWb.Worksheets(importSheet).Copy After:=macroWb.Worksheets(1)
    importWb.Close

End Function

'別ワークブックのシートをコピーする
Function CopySheets(importPath As String)
    'マクロ実行元
    Dim macroWb As Workbook

    'インポート先
    Dim importWb As Workbook

    'マクロを実行元のWorkbook
    Set macroWb = ThisWorkbook

    'データをインポート(シートの内容をコピー)
    Set importWb = Workbooks.Open(importPath)
    importWb.Worksheets().Copy After:=macroWb.Worksheets(1)
    importWb.Close

End Function

'.xlsxファイルのCollectionを取得
Function GetXlsxList(pathStr As String) As Collection
    Dim fileName As String
    Dim fileNames As New Collection
        fileName = Dir(pathStr & "\" & "*.xlsx")
        Do While fileName <> ""
            With fileNames
                .Add Item:=fileName
            End With
            fileName = Dir()
        Loop
    Set GetXlsxList = fileNames
End Function

'.xlsmファイルのCollectionを取得
Function GetXlsmList(pathStr As String) As Collection
    Dim fileName As String
    Dim fileNames As New Collection
        fileName = Dir(pathStr & "\" & "*.xlsm")
        Do While fileName <> ""
            With fileNames
                .Add Item:=fileName
            End With
            fileName = Dir()
        Loop
    Set GetXlsxList = fileNames
End Function

'別ワークブックのシートをコピーする
Function CopyBooksSheets()
    Dim fileNames As New Collection
    Set fileNames = GetXlsxList(ThisWorkbook.path)
    For i = 1 To fileNames.Count
        CopySheets (ThisWorkbook.path & "/" & fileNames(i))
    Next i
End Function

'ボタンを作成
Function AddBtn(sheetName As String, CellName As String, actionName As String)
    Dim oldSheetName As String: oldSheetName = ActiveSheet.Name
    Sheets(sheetName).Select
    'ボタン削除
    ActiveSheet.Buttons.Delete
    'ボタン追加
    With ActiveSheet.Buttons.Add(Range(CellName).Left, _
                                 Range(CellName).Top, _
                                 Range(CellName).Width, _
                                 Range(CellName).Height)
        .Name = "ボタン"
        .OnAction = actionName
        .Characters.Text = "作成"
    End With
    Sheets(oldSheetName).Select
End Function

'マルチボタンを作成
Function AddBtns(sheetNames As Collection, CellName As String, actionName As String)
    Dim oldSheetName As String: oldSheetName = ActiveSheet.Name
    For i = 1 To sheetNames.Count
        Sheets(sheetNames(i)).Select
        'ボタン削除
        ActiveSheet.Buttons.Delete
        With ActiveSheet.Buttons.Add(Range(CellName).Left, _
                                     Range(CellName).Top, _
                                     Range(CellName).Width, _
                                     Range(CellName).Height)
            .Name = "ボタン"
            .OnAction = actionName
            .Characters.Text = "作成"
        End With
    Next i
    Sheets(oldSheetName).Select
End Function

'第3位が"_"のシートを検索
Function KeywordSheets() As Collection
    Dim sheetResults As New Collection
    For i = 1 To Sheets.Count
        If Mid(Sheets(i).Name, 3, 1) = "_" Then
            sheetResults.Add (Sheets(i).Name)
        End If
    Next i
    Set KeywordSheets = sheetResults
End Function

'シートのオブジェクトのテキストを取得
Function GetShapesText() As Collection
    Dim shapesText As New Collection
    For Each shapeBody In ActiveSheet.Shapes
        'テキストがあるかどうか
        If shapeBody.TextFrame2.HasText Then
            shapesText.Add Item:=shapeBody.TextFrame.Characters.Text
        End If
    Next
    Set GetShapesText = shapesText
End Function

'キーワードと部分一致の文字列をコレクションから取得
Function SearchKeywordFromCollection(strCollection As Collection, keyword As String) As String
    For i = 1 To strCollection.Count
        If InStr(strCollection(i), keyword) > 0 Then
            SearchKeywordFromCollection = strCollection(i)
            Exit For
        End If
    Next i
End Function

'当パスの全ファイルの指定セルを設定
Function SetWorkbooksCellValue(sheetName As String, CellName As String, ValueText As String)
    Dim MyFile, FilePath As String

    Application.ScreenUpdating = False

    FilePath = ThisWorkbook.path & "\"
    MyFile = Dir(FilePath)

    Do While MyFile <> ""
      Workbooks.Open fileName:=FilePath & MyFile
      Workbooks(MyFile).Activate
      Worksheets(sheetName).Range(CellName).Value = ValueText
      ActiveWorkbook.Close True
      MyFile = Dir()
    Loop

    Application.ScreenUpdating = True
End Function

'当パスの全ファイルの指定エリア1を指定エリア2にコピー
Function CopyRangeTo(sheetName As String, RangeArea1 As String, RangeArea2 As String)
    Dim MyFile, FilePath As String

    Application.ScreenUpdating = False

    FilePath = ThisWorkbook.path & "\"
    MyFile = Dir(FilePath)

    Do While MyFile <> ""
      Workbooks.Open fileName:=FilePath & MyFile
      Workbooks(MyFile).Activate

      Worksheets(sheetName).Range(RangeArea1).Copy _
        Destination:=Worksheets(sheetName).Range(RangeArea2)

      ActiveWorkbook.Close True
      MyFile = Dir()
    Loop

    Application.ScreenUpdating = True
End Function
