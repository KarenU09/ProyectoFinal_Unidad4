Imports MySql.Data.MySqlClient
Imports System.Data


Public Class conexion

    Public cmd As New MySqlCommand
    Public da As New MySqlDataAdapter
    Public dt As New DataTable
    Public result As String
    Public Function strconexion() As MySqlConnection
        Return New MySqlConnection("server=localhot; user id=ugb; pasword=ugb2022; database=academica; port=3606")


    End Function

    Public strcon As MySqlConnection = strconexion()



End Class
