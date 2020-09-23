VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Equation Solver - Niloy Mondal - niloygk@yahoo.com"
   ClientHeight    =   5100
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7665
   LinkTopic       =   "Form1"
   ScaleHeight     =   5100
   ScaleWidth      =   7665
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtTolerance 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6000
      TabIndex        =   27
      Text            =   "5"
      ToolTipText     =   "Specifies upto  how many places the answer should be accurate."
      Top             =   3120
      Width           =   1215
   End
   Begin VB.TextBox txtIteriations 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6000
      TabIndex        =   26
      Text            =   "100"
      ToolTipText     =   "Increasing the Tolerance may require to increase the iteriations. Increases Accuracy."
      Top             =   2640
      Width           =   1215
   End
   Begin VB.TextBox txtLowerlimit 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6000
      TabIndex        =   25
      Text            =   "-999"
      ToolTipText     =   "Specifies the lower limit above which the root is searched."
      Top             =   2160
      Width           =   1215
   End
   Begin VB.TextBox txtUpperlimit 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6000
      TabIndex        =   24
      Text            =   "999"
      ToolTipText     =   "Specifies the upper limit under which the root is searched."
      Top             =   1680
      Width           =   1215
   End
   Begin VB.CommandButton mnuAbout 
      Caption         =   "About Me"
      Height          =   495
      Left            =   6240
      TabIndex        =   19
      Top             =   4320
      Width           =   1095
   End
   Begin VB.CommandButton cmdCalculate 
      Caption         =   "Calculate"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2280
      TabIndex        =   9
      Top             =   4320
      Width           =   3135
   End
   Begin VB.TextBox txtcoeff 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   3
      Left            =   480
      TabIndex        =   5
      ToolTipText     =   "Enter the coeffecient"
      Top             =   720
      Width           =   855
   End
   Begin VB.TextBox txtcoeff 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   2
      Left            =   2280
      TabIndex        =   6
      ToolTipText     =   "Enter the coeffecient"
      Top             =   720
      Width           =   855
   End
   Begin VB.TextBox txtcoeff 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   1
      Left            =   4080
      TabIndex        =   7
      ToolTipText     =   "Enter the coeffecient"
      Top             =   720
      Width           =   855
   End
   Begin VB.TextBox txtcoeff 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   0
      Left            =   5880
      TabIndex        =   8
      ToolTipText     =   "Enter the coeffecient"
      Top             =   720
      Width           =   855
   End
   Begin VB.Label Label9 
      Caption         =   "Tolerance:-"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4200
      TabIndex        =   23
      Top             =   3120
      Width           =   1575
   End
   Begin VB.Label Label8 
      Caption         =   "No of Iteriations:-"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4200
      TabIndex        =   22
      Top             =   2640
      Width           =   1695
   End
   Begin VB.Label Label7 
      Caption         =   "Lower Limit:-"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4200
      TabIndex        =   21
      Top             =   2160
      Width           =   1455
   End
   Begin VB.Label Label5 
      Caption         =   "Upper Limit:-"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4200
      TabIndex        =   20
      Top             =   1680
      Width           =   1335
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      Caption         =   "Equation Solver"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   495
      Left            =   2040
      TabIndex        =   18
      Top             =   120
      Width           =   3495
   End
   Begin VB.Label lblAnswer 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   2
      Left            =   480
      TabIndex        =   17
      Top             =   3360
      Width           =   3255
   End
   Begin VB.Label lblAnswer 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   1
      Left            =   480
      TabIndex        =   16
      Top             =   2640
      Width           =   3255
   End
   Begin VB.Label lblAnswer 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   0
      Left            =   480
      TabIndex        =   15
      Top             =   1920
      Width           =   3255
   End
   Begin VB.Label Label4 
      Caption         =   "Roots :-"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   14
      Top             =   1440
      Width           =   1215
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   "= 0"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6840
      TabIndex        =   13
      Top             =   840
      Width           =   375
   End
   Begin VB.Label lblplus 
      Caption         =   "+"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   3
      Left            =   5520
      TabIndex        =   12
      Top             =   840
      Width           =   255
   End
   Begin VB.Label lblplus 
      Caption         =   "+"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   2
      Left            =   3840
      TabIndex        =   11
      Top             =   840
      Width           =   255
   End
   Begin VB.Label lblplus 
      Caption         =   "+"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   1
      Left            =   2040
      TabIndex        =   10
      Top             =   840
      Width           =   255
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "x"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   3
      Left            =   5040
      TabIndex        =   4
      Top             =   840
      Width           =   375
   End
   Begin VB.Label Label2 
      Caption         =   "2"
      Height          =   255
      Index           =   2
      Left            =   3480
      TabIndex        =   3
      Top             =   720
      Width           =   255
   End
   Begin VB.Label Label2 
      Caption         =   "3"
      Height          =   255
      Index           =   1
      Left            =   1680
      TabIndex        =   2
      Top             =   720
      Width           =   255
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "x"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   2
      Left            =   3240
      TabIndex        =   1
      Top             =   840
      Width           =   375
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "x"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   1
      Left            =   1440
      TabIndex        =   0
      Top             =   840
      Width           =   375
   End
   Begin VB.Shape Shape1 
      Height          =   2295
      Left            =   4080
      Top             =   1560
      Width           =   3375
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim index As Integer

Private Sub cmdCalculate_Click()
index = 0
Dim i As Long
Dim lastanswer, answer As Double
For i = txtLowerlimit.Text To txtUpperlimit.Text
    answer = txtcoeff(3).Text * i ^ 3 + txtcoeff(2).Text * i ^ 2 + txtcoeff(1).Text * i + txtcoeff(0).Text
    If answer = 0 Then
        lblAnswer(index).Caption = i
        index = index + 1
    ElseIf lastanswer * answer < 0 Then
        find_answer i
    End If
    lastanswer = answer
Next i
MsgBox "Finished"
End Sub

Private Function find_answer(num As Long)
Dim j As Integer
Dim mid, upper, lower As Double
Dim ans1, ans2, ans3
upper = num - 1
lower = num
For j = 0 To txtIteriations.Text
    mid = (upper + lower) / 2
    ans1 = txtcoeff(3).Text * upper ^ 3 + txtcoeff(2).Text * upper ^ 2 + txtcoeff(1).Text * upper + txtcoeff(0).Text
    ans2 = txtcoeff(3).Text * lower ^ 3 + txtcoeff(2).Text * lower ^ 2 + txtcoeff(1).Text * lower + txtcoeff(0).Text
    ans3 = txtcoeff(3).Text * mid ^ 3 + txtcoeff(2).Text * mid ^ 2 + txtcoeff(1).Text * mid + txtcoeff(0).Text
    If ans3 >= -10 ^ (-1 * txtTolerance.Text) And ans3 <= 10 ^ (-1 * txtTolerance.Text) Then
        lblAnswer(index).Caption = mid
        index = index + 1
        Exit Function
    ElseIf ans1 * ans3 < 0 Then
        lower = mid
    ElseIf ans2 * ans3 < 0 Then
        upper = mid
    End If
Next j
End Function

Private Sub mnuAbout_Click()
MsgBox "Programmer - Niloy Mondal. Email:- niloygk@yahoo.com", vbOKOnly, "That's Me"
End Sub
