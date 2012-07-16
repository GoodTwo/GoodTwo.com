using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using WebServices;
using System.Data;

/// <summary>
/// Summary description for Administration
/// </summary>
public class Administration
{
    internal delegate void DatabaseWork(SqlConnection connection, SqlTransaction transaction, object[] parameters);
    public void UpdateCharityEvent(CharityEvents incEvent)
    {
        DatabaseWork work;
        object[] parameters;
        
        try
        {
            // Call the database transaction
            work = new DatabaseWork(UpdateCharityEventTransaction);
            parameters = new object[1] { incEvent };

            PerformDatabaseTransaction(work, ref parameters);
          
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            parameters = null;
            work = null;
        }
        
    }
    private void UpdateCharityEventTransaction(SqlConnection connection, SqlTransaction transaction, object[] parameters)
    {
        CharityEvents incEvent = (CharityEvents)parameters[0];
        SqlCommand cmd = new SqlCommand("CharityEvent_UpdateCharity", connection);

        // 2. set the command object so it knows
        //    to execute a stored procedure
        cmd.CommandType = CommandType.StoredProcedure;

        // 4. add parameter to command, which
        //    will be passed to the stored procedure
        cmd.Parameters.Add(new SqlParameter("@Logo", incEvent.Logo));
        cmd.Parameters.Add(new SqlParameter("@Tagline", incEvent.Tagline));
        cmd.Parameters.Add(new SqlParameter("@Body", incEvent.Body));
        cmd.Parameters.Add(new SqlParameter("@Photo", incEvent.Photo));
        cmd.Parameters.Add(new SqlParameter("@Title", incEvent.Title));
        cmd.Parameters.Add(new SqlParameter("@City", incEvent.City));
        cmd.Parameters.Add(new SqlParameter("@State", incEvent.State));
        cmd.Parameters.Add(new SqlParameter("@WebSite", incEvent.WebSite));
        cmd.Parameters.Add(new SqlParameter("@Goal", incEvent.Goal));
        cmd.Parameters.Add(new SqlParameter("@EndDate", incEvent.EndDate));
        cmd.Parameters.Add(new SqlParameter("@UserId", incEvent.UserId));
        cmd.Parameters.Add(new SqlParameter("@UserName", incEvent.UserName));
        cmd.Parameters.Add(new SqlParameter("@Email", incEvent.Email));
        cmd.Parameters.Add(new SqlParameter("@PhoneNumber", incEvent.PhoneNumber));
        cmd.Parameters.Add(new SqlParameter("@CauseName", incEvent.CauseName));
        cmd.Parameters.Add(new SqlParameter("@Video", incEvent.Video));
        cmd.Parameters.Add(new SqlParameter("@PaymentName", incEvent.PaymentName));
        cmd.Parameters.Add(new SqlParameter("@PaymentAddress", incEvent.PaymentAddress));
        cmd.Parameters.Add(new SqlParameter("@CharityEventId", incEvent.CharityEventId));
        if (incEvent.EULATimeStamp.HasValue)
        {
            cmd.Parameters.Add(new SqlParameter("@EULATimeStamp", incEvent.EULATimeStamp.Value ));
        }
        else
        {
            cmd.Parameters.Add(new SqlParameter("@EULATimeStamp", DBNull.Value));
        }
        
        cmd.Parameters.Add(new SqlParameter("@egiftId", incEvent.egiftid));

        // execute the command
        cmd.ExecuteScalar();
    }

    public CharityEvents GetEventByEgiftId(string id)
    {
        return GetEventByEgiftId(id, ""); // Default program is PMC
    }

    public CharityEvents GetEventByEgiftId(string id, string program)
    {
        DatabaseWork work;
        object[] parameters;
        CharityEvents result = null;
        try
        {
            // Call the database transaction
            work = new DatabaseWork(GetEventByEgiftIdTransaction);
            parameters = new object[3] { id, program, null };

            PerformDatabaseTransaction(work, ref parameters);
            if (parameters[2] != null)
            {
                result = (CharityEvents)parameters[2];
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            parameters = null;
            work = null;
        }
        return result;
    }
    private void GetEventByEgiftIdTransaction(SqlConnection connection, SqlTransaction transaction, object[] parameters)
    {
        string id = (string)parameters[0];
        string program = (string)parameters[1];

        SqlCommand cmd = connection.CreateCommand();
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "[dbo].[retrieveCharityEventbyEgiftId]";

        cmd.Parameters.Add(new SqlParameter("@id", id));
        cmd.Parameters.Add(new SqlParameter("@program", program));

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Read();
            parameters[2] = CharityEvents.Processrow(reader);
        }
    }
    public CharityEvents GetEventById(int id)
    {
        DatabaseWork work;
        object[] parameters;
        CharityEvents result = null;
        try
        {
            // Call the database transaction
            work = new DatabaseWork(GetEventByIdTransaction);
            parameters = new object[2] { id, null };

            PerformDatabaseTransaction(work, ref parameters);
            if (parameters[1] != null)
            {
                result = (CharityEvents)parameters[1];
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            parameters = null;
            work = null;
        }
        return result;
    }
    private void GetEventByIdTransaction(SqlConnection connection, SqlTransaction transaction, object[] parameters)
    {
        int id = (int)parameters[0];
        SqlCommand cmd = connection.CreateCommand();
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "[dbo].[retrieveCharityEventbyId]";

        cmd.Parameters.Add(new SqlParameter("@id", id));

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Read();
            parameters[1] = CharityEvents.Processrow(reader);
        }
    }
    public int? CheckForFund(Guid userid)
    {
        DatabaseWork work;
        object[] parameters;
        int? result = null;
        try
        {
            // Call the database transaction
            work = new DatabaseWork(CheckForFundTransaction);
            parameters = new object[2] { userid, null };

            PerformDatabaseTransaction(work, ref parameters);
            if(parameters[1] != null)
            {
                result = (int)parameters[1];
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            parameters = null;
            work = null;
        }
        return result;
    }
    private void CheckForFundTransaction(SqlConnection connection, SqlTransaction transaction, object[] parameters)
    {
        Guid Userid = (Guid)parameters[0];
        SqlCommand cmd = connection.CreateCommand();
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "[dbo].[retrieveCharityEventbyUserId]";

        cmd.Parameters.Add(new SqlParameter("@userid", Userid));

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.HasRows)
        {
            reader.Read();
            parameters[1] = reader.GetInt32(0);// ["CharityEventId"];
        }
      
    }

        private readonly string _connectionString;
        
        public Administration()
        {
            _connectionString = ConfigurationManager.ConnectionStrings["goodtwoDbConnectionString1"].ConnectionString;
        }

		private void PerformDatabaseTransaction(DatabaseWork performDatabaseWork, ref object[] parameters)
        {
            try
            {
                using (var connection = new SqlConnection(_connectionString))
                {
                    connection.Open();
                    performDatabaseWork(connection, null, parameters);
                }
            }
            catch (Exception ex)
            {
                //LogService.LogService.Log(LogEvent.enmEventType.Error, ex.Message, ex.StackTrace);
                throw;
            }
        }
	}
