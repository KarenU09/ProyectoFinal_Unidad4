Imports MySql.Data.MySqlClient
Imports System.Data


Public Class Materia
    Dim c As New conexion


    'declaracion de las propiedades de la clase
    Private codigoMateria As String
    Private nombreMateria As String
    Private facultadMateria As String
    Private unidadesMateria As String
    Private pagina As String

    'metodos de la propiedad
    Public Property codMateria() As String
        Get
            Return codigoMateria

        End Get
        Set(value As String)
            codigoMateria = value

        End Set
    End Property

    'metodos de la propiedad
    Public Property nomMateria() As String
        Get
            Return nombreMateria

        End Get
        Set(value As String)
            nombreMateria = value

        End Set
    End Property

    'metodos de la propiedad
    Public Property facMateria() As String
        Get
            Return facultadMateria

        End Get
        Set(value As String)
            facultadMateria = value

        End Set
    End Property

    'metodos de la propiedad
    Public Property uniMateria() As String
        Get
            Return unidadesMateria

        End Get
        Set(value As String)
            unidadesMateria = value

        End Set
    End Property


    'funcion para mostrar lista de materias
    Public Function listarRegistros() As DataTable
        'c hacce referencia a la instancia de la clase conexion 
        c.strcon.Open()

        With c.cmd
            'cadena de conexión
            .Connection = c.strcon

            .CommandText = "SELECT idemateria, nombre, facultad,unidades, codigo FROM materia"

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
                .CommandText = "INSERT INTO estudiante values ('" & nombreMateria & "','" & facultadMateria & "','" & codMateria & "','" & uniMateria & "')"
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
            .CommandText = "SELECT idemateria,nombre,facultad,unidades,codigo FROM estudiante where idemateria = '" & codMateria & "' "
            c.result = c.cmd.ExecuteNonQuery
        End With
        c.da.SelectCommand = c.cmd
        c.da.Fill(c.dt)
        Return c.dt
    End Function

    Public Sub editar()
        Try
            c.strcon.Open()
            With c.cmd
                .Connection = c.strcon
                .CommandText = "(UPDATE estudiante SET 
                                nombre ='" & nomMateria & "',
                                facultad = '" & facMateria & "',
                                unidades = '" & uniMateria & "',
                                codigo = '" & codMateria & "')"

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

    End Sub


End Class
