using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Net;
using System.Xml;
using System.Text;

namespace goodtooDraft.App_Code
{
    public class XMLPostManager
    {
        /// <summary>
        /// Gets back an XML Document from a URL
        /// </summary>
        /// <param name="APIURL">The URL</param>
        /// <returns>The XML Document</returns>
        public XmlDocument GetXMLFromURL(string APIURL)
        {
            XmlDocument APIDoc = null;
            try
            {
                XmlTextReader reader = new XmlTextReader(APIURL);
                APIDoc = new XmlDocument();
                APIDoc.Load(reader);
                reader.Close();
            }
            catch (Exception e)
            {
            	ErrHandler.WriteError(e.Message + " (InnerException: " + e.InnerException + ")");
                throw new Exception("Error reading API URL", e);
            }
            return APIDoc;
        }

        /// <summary>
        /// Posts a string to a URL
        /// </summary>
        /// <param name="APIURL">The URL</param>
        /// <returns>True on success or false on error</returns>
        public string SendXMLToURL(string APIURL, string postData)
        {
            string response = string.Empty;
            try
            {
                HttpWebRequest APIRequest = (HttpWebRequest)WebRequest.Create(APIURL);
                APIRequest.Method = "POST";
                ASCIIEncoding encoding = new ASCIIEncoding();
                byte[] data = encoding.GetBytes(postData);
                APIRequest.ContentType = "application/x-www-form-urlencoded";
                APIRequest.ContentLength = data.Length;

                using (Stream APIStream = APIRequest.GetRequestStream())
                {
                    APIStream.Write(data, 0, data.Length);
                }
                //Read the response
                HttpWebResponse APIResponse = (HttpWebResponse)APIRequest.GetResponse();
                Stream receiveStream = APIResponse.GetResponseStream();
                Encoding encode = System.Text.Encoding.GetEncoding("utf-8");
                StreamReader readStream = new StreamReader(receiveStream, encode);
                Char[] read = new Char[256];

                int count = readStream.Read(read, 0, 256);
                while (count > 0)
                {
                    // Dumps the 256 characters on a string and displays the string to the console.
                    String str = new String(read, 0, count);
                    response += str;
                    count = readStream.Read(read, 0, 256);
                }
                APIResponse.Close();
                readStream.Close();
            }
            catch (Exception e)
            {
            	ErrHandler.WriteError(e.Message + " (InnerException: " + e.InnerException + ")");
                throw new Exception("Error posting to API URL", e);
            }

            return response;
        }
    }
}