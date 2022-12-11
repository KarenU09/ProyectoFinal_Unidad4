Imports MySql.Data.MySqlClient
Imports System.Data


Public Class Usuario
    'instancia de la clase conexion
    Dim c As New conexion

    'declaracion de las propiedades de la clase
    Private codigoUsuario As String
    Private nombreUsuario As String
    Private apellidoUsuario As String
    Private correoUsuario As String
    Private telefonoUsuario As String
    Private pagina As Page

    'metodos de la propiedad
    Public Property codUsuario() As String
        Get
            Return codigoUsuario

        End Get
        Set(value As String)
            codigoUsuario = value

        End Set
    End Property

    'metodos de la propiedad
    Public Property nomUsuario() As String
        Get
            Return nombreUsuario

        End Get
        Set(value As String)
            nombreUsuario = value

        End Set
    End Property

    'metodos de la propiedad
    Public Property apeUsuario() As String
        Get
            Return apellidoUsuario

        End Get
        Set(value As String)
            apellidoUsuario = value

        End Set
    End Property

    'metodos de la propiedad
    Public Property mailUsuario() As String
        Get
            Return correoUsuario

        End Get
        Set(value As String)
            correoUsuario = value

        End Set
    End Property

    'metodos de la propiedad
    Public Property telUsuario() As String
        Get
            Return telefonoUsuario

        End Get
        Set(value As String)
            telefonoUsuario = value

        End Set
    End Property

    'funcion para mostrar lista de usuarios
    Public Function listarRegistros() As DataTable
        'c hacce referencia a la instancia de la clase conexion 
        c.strcon.Open()

        With c.cmd
            'cadena de conexión
            .Connection = c.strcon

            .CommandText = "SELECT ideusuario, nombre, apellido,correo, telefono,codigo FROM usuario"

        End With

        c.da.Fill(c.dt)
        Return c.dt


    End Function

    'Método para guardar
    Public Sub guardar()
        Try
            c.strcon.Open()
            With c.cmd
                .Connection = c.strcon
                .CommandText = "INSERT INTO usuario values ('" & nomUsuario & "','" & apeUsuario & "','" & mailUsuario & "','" & telUsuario & "','" & codUsuario & "')"
                c.result = c.cmd.ExecuteNonQuery
            End With
            If c.result = 0 Then
                MsgBox("No se ha podido guardar", MsgBoxStyle.Critical)
            Else
                MsgBox("Registro guardado exitosamente", MsgBoxStyle.OkOnly)
            End If
        Catch ex As Exception
            MsgBox("NO se ha podido guardar el registro", MsgBoxStyle.Critical)
        End Try
        c.strcon.Close()
    End Sub

    'Método para editar, mostrar registro por Id
    Public Function mostrarRegistro() As DataTable
        c.strcon.Open()
        With c.cmd
            .Connection = c.strcon
            .CommandText = "SELECT ideusuario,nombre,apellido,correo,telefono,codigo FROM usuario where ideusuario = '" & codUsuario & "' "
            c.result = c.cmd.ExecuteNonQuery
        End With
        c.da.SelectCommand = c.cmd
        c.da.Fill(c.dt)
        Return c.dt
    End Function

    'Metodo para actualizr registros

    Public Sub editar()
        Try
            c.strcon.Open()
            With c.cmd
                .Connection = c.strcon
                .CommandText = "(UPDATE usuario SET 
                                nombre ='" & nomUsuario & "',
                                apellido = '" & apeUsuario & "',
                                correo = '" & mailUsuario & "',
                                telefono = '" & telUsuario & "',
                                codigo = '" & codUsuario & "')"

                c.result = c.cmd.ExecuteNonQuery
            End With

            If c.result = 0 Then
                MsgBox("No se ha podido actualizar", MsgBoxStyle.Critical)
            Else
                MsgBox("Registro actualizado exitosamente", MsgBoxStyle.OkOnly)
            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        c.strcon.Close()




    End Sub


End Class
