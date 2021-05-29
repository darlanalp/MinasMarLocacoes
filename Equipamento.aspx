<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.master" AutoEventWireup="true" CodeFile="Equipamento.aspx.cs" Inherits="Equipamento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left; height: 421px; background-color: #FFFFFF;">
      <div id="subTituloDefault" >
       &nbsp;
       ..::: Equipamentos
      </div>   
      <hr/>
      
       <table cellpadding="5" cellspacing="5" border="0" style="width: 69%">
         <tr>
            <td align="center" colspan="2" >
              <div id="tituloEquip" >
                  <asp:Label ID="cEquipamento" runat="server" Text="XXXXX"></asp:Label></div>      
            </td>
          </tr>
          <tr>
            <td align="right" width="20%">
                <asp:Image ID="imgEquip" runat="server" Height="122px" 
                    ImageUrl="~/images/torre.png" Width="146px" />               
            </td>
            <td valign=top>
               <div> 
                   <asp:Label ID="cSubTitulo" runat="server" Text="Label" Font-Bold="True" 
                       Font-Size="12px"></asp:Label> 
               </div>
               <div>
                   <br/>
               </div>
               <div>
                   <asp:Label ID="cText" runat="server" Text="Label"></asp:Label>
               </div>
            </td>
          </tr>
          <tr>
            <td align="center" colspan="2" >
               <div style="border: thin solid #92B345;">
                                               
                  <asp:Button ID="btnSubmit" runat="server" PostBackUrl="~/Default.aspx" 
                  Text="Voltar" CssClass="buttonVoltar" 
                  UseSubmitBehavior="False" Width="95px"/>                  
                  &nbsp;
                  <asp:Button ID="Button1" runat="server" PostBackUrl="~/Contato.aspx" 
                  Text="Clique aqui - Entre em Contato" CssClass="button" 
                  UseSubmitBehavior="False" Width="190px"/>
                  
               </div>
            </td>
          </tr>
        </table>
        
  </div>
</asp:Content>

