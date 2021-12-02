<%@ Application Codebehind="Global.asax.cs" Inherits="OnlineVacationReservation.Global" Language="C#" %>
<script runat="server">
void Application_Start(object sender, EventArgs e)
        {
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", 
    new ScriptResourceDefinition {
        Path = "~/scripts/jquery-1.4.1.min.js",
        DebugPath = "~/scripts/jquery-1.4.1.js",
        CdnPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.4.1.min.js",
        CdnDebugPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.4.1.js"
    });
        }
</script>
