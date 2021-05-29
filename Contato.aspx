<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.master" AutoEventWireup="true" CodeFile="Contato.aspx.cs" Inherits="Contato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .style3
        {
            height: 41px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div style="text-align: center; height: 481px; background-color: #FFFFFF;">
  <center>
  <div id="subTituloDefault" >
                 &nbsp;
                 ..::: Contato
  </div>      
          
          <hr/>
          <table cellpadding="5" cellspacing="5" border="0" width="65%">
          <tr>
            <td align="right">
              <strong>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Informe o nome" ControlToValidate="txtName">*</asp:RequiredFieldValidator>&nbsp;Nome:
              </strong>
            </td>
            <td align="left">
                <asp:TextBox ID="txtName" runat="server" CssClass="input300"></asp:TextBox>
            </td>
          </tr>              
          <tr>
            <td align="right">
                <strong>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail"
                   ErrorMessage="Informe o email">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                   runat="server" ControlToValidate="txtEmail" ErrorMessage="Email inválido" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                   Email:
                </strong>
             </td>
             <td align="left">
                 <asp:TextBox ID="txtEmail" runat="server" CssClass="input300"></asp:TextBox>
             </td>
            </tr>
            <tr>
               <td align="right">
                  <strong>
                     Empresa:
                  </strong>
               </td>
               <td align="left">
                      <asp:TextBox ID="TextBox1" runat="server" CssClass="input300"></asp:TextBox>
               </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Informe o telefone para contato">*</asp:RequiredFieldValidator>
                    <strong>
                        Telefone para Contato:
                    </strong>
                </td>
                <td align="left">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="input300"></asp:TextBox>
                </td>
             </tr>
             <tr>
                 <td align="right" valign="top">
                     <strong>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMessage"
                          ErrorMessage="Informe a mensagem">*</asp:RequiredFieldValidator> 
                          Mensagem:
                     </strong>
                 </td>
                 <td align="left">
                     <asp:TextBox ID="txtMessage" runat="server" CssClass="input300" Height="150px" TextMode="MultiLine"></asp:TextBox></td>
             </tr>
             <tr>
                <td class="style3"><asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        ShowMessageBox="True" ShowSummary="False" />
                    </td>
                <td align="left" class="style3">              
                   <asp:Button ID="btnSubmit" runat="server" Text="Enviar Mensagem" 
                        CssClass="button" onclick="btnSubmit_Click"  />
                    <br />
                    <asp:Label ID="lbMensagem" runat="server" BackColor="Red" Font-Bold="True" 
                        ForeColor="White" Text="Label" 
                        style="color: #FFFFFF; background-color: #0000FF"></asp:Label>
                      <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="#C00000"></asp:Label>
                </td>
             </tr>
              <tr>
                  <td align="center" colspan="2" style="height: 30px" >                    
                      <strong>
                      MinasMar Locações de Equipamentos<br />
                      Rua Evaldo Costa, 89 | B.Pindorama | BH | MG <br>
                      Fone:(31) 3473 - 0442                                
                      </strong>
                  </td>                   
              </tr>
          </table>
          
          </center>
  </div> 
</asp:Content>

