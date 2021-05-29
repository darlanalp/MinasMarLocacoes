<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta name="Description" content="A Prado Locações fornece locações de equipamentos para logística, tais como caminhões guindastes, escavadeira, retroescavadeira, rolo compactador, carregadeira, torre de iluminação e grupo gerador. ">
<meta name="Keywords" content="Locações de equipamento,equipamento,logística, caminhões,guindastes, escavadeira, retroescavadeira, rolo compactador, carregadeira, torre de iluminação,grupo gerador,carreta,munck"> 

    <style type="text/css">
        .style1
        {
            width: 193px;
        }
        .style2
        {
            width: 211px;
        }
        .style3
        {
            width: 211px;
            font-family: "Trebuchet MS";
            font-weight: bold;
            color: #FF0000;
            font-size: 10px;
            height: 141px;
        }
        .style4
        {
            height: 141px;
        }
        .style5
        {
            width: 211px;
            font-family: "Trebuchet MS";
            font-weight: bold;
            color: #FF0000;
            font-size: 10px;
            height: 138px;
        }
        .style6
        {
            height: 138px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </ajaxToolkit:ToolkitScriptManager>       
       <div style="text-align: left; height: 678px; background-color: #FFFFFF;">
           <div id="subTituloDefault" >
                 &nbsp;
                 ..::: Equipamentos
              </div>      
          
          <hr/>
          <table style="width:97%; height: 194px;">
            <tr>
              <td class="style4">
                 <div class="quadroPrd">
                  <div class="painelPrd"><asp:LinkButton ID="LinkButton3" runat="server" 
                          PostBackUrl="~/Equipamento.aspx?Equip=1">Torre de Iluminação</asp:LinkButton></div>
                  <img src="images/torre.png" />
                 </div>
              </td>                  
              <td class="style4" >
                 <div class="quadroPrd">
                  <div  class="painelPrd">
                      <asp:LinkButton ID="LinkButton1" runat="server" 
                          PostBackUrl="~/Equipamento.aspx?Equip=2" >Retroescavadeira</asp:LinkButton>                      
                     </div>
                  <img alt="" src="images/Retroescavadeira.png" 
                      style="width: 138px; height: 110px" />
                 </div>
              </td>       
              <td class="style4">
                 <div class="quadroPrd">
                  <div class="painelPrd"><asp:LinkButton ID="LinkButton4" runat="server" 
                          PostBackUrl="~/Equipamento.aspx?Equip=3">Grupo Gerador</asp:LinkButton>
                     </div>
                  <img alt="" src="images/GrupoGerador.png" style="width: 131px; height: 110px" />
                 </div>
              </td>            
               <td class="style4">
                 <div class="quadroPrd">
                  <div class="painelPrd">
                      <asp:LinkButton ID="LinkButton5" runat="server" 
                          PostBackUrl="~/Equipamento.aspx?Equip=4">Mini Carregadeira
                      </asp:LinkButton>
                   </div>                                   
                         <img alt="" src="images/MiniCarregadeira.png" 
                         style="width: 150px; height: 110px" />                
                 </div>  
                </td> 
            </tr>                     
            <tr>
              <td class="style3">
                 <div class="quadroPrd">
                  <div class="painelPrd"><asp:LinkButton ID="LinkButton6" runat="server" 
                          PostBackUrl="~/Equipamento.aspx?Equip=5">Escavadeira</asp:LinkButton>
                     </div>
                  <img src="images/Escavadeira.png" />
                 </div>
              </td>  
              <td class="style3">
                 <div class="quadroPrd">
                  <div class="painelPrd"><asp:LinkButton ID="LinkButton7" runat="server" 
                          PostBackUrl="~/Equipamento.aspx?Equip=6">Mini Retroescavadeira</asp:LinkButton>
                     </div>
                  <img alt="" src="images/MiniRetroescavadeira.png" 
                      style="width: 134px; height: 110px" />
                 </div>
              </td>   
              <td class="style4">
                <div class="quadroPrd">
                  <div class="painelPrd">
                      <asp:LinkButton ID="LinkButton8" runat="server" 
                          PostBackUrl="~/Equipamento.aspx?Equip=7">Rolo Compactador</asp:LinkButton>
                    </div>
                  &nbsp;<img alt="" src="images/RoloCompactador.png" style="width: 144px; height: 110px" />
                </div>
              </td>       
              <td class="style4">
                <div class="quadroPrd">
                  <div class="painelPrd">
                      <asp:LinkButton ID="LinkButton2" runat="server" 
                          PostBackUrl="~/Equipamento.aspx?Equip=8">Empilhadeira</asp:LinkButton>
                    </div>
                  &nbsp;<img alt="" src="images/Empilhadeira.png" style="width: 144px; height: 110px" />
                </div>
              </td>                
            </tr>                                                  
          </table>  
           <br>
           <div id="subTituloDefault" >
                &nbsp;..::: Nossa linha de caminhões
           </div>          
           <hr/>
             
          <table style="width:97%; height: 198px;">
            <tr>
              <td class="style2">
                  <div class="quadroPrd">
                    <div class="painelPrd">Caminhão Munck
                    </div>
                    <img src="images/caminhao_munk.png" style="width: 196px; height: 100px" />
                  </div>        
              </td>
              <td>
                  <div class="quadroPrd">
                    <div class="painelPrd">Guindaste
                    </div>
                    <img src="images/caminhao_guindaste.png" style="width: 194px; height: 100px" />
                  </div>        
              </td>
              <td>
                  <div class="quadroPrd">
                    <div class="painelPrd">Carreta Carga Seca e Prancha
                    </div>
                    <img src="images/caminhao_carreta.png" style="width: 196px; height: 100px" />
                  </div>                      
              </td>
              <td>
                  <div class="quadroPrd">
                    <div class="painelPrd">Caminhão Pipa
                    </div>
                    <img src="images/caminhao_pipa.png" style="width: 196px; height: 100px" />
                  </div>                     
              </td>
            </tr>
            <tr>
              <td class="style5">
                  <div class="quadroPrd">
                    <div class="painelPrd">Caminhão Bruck
                    </div>
                    <img src="images/CaminhaoBruck.png" style="width: 196px; height: 100px" />
                  </div>        
              </td>
              <td class="style6">
                  <div class="quadroPrd">
                    <div class="painelPrd">Caminhão Roll on
                    </div>
                    <img src="images/CminhaoRollOn.png" style="width: 194px; height: 100px" />
                  </div>        
              </td>
              <td class="style6">
                  <div class="quadroPrd">
                    <div class="painelPrd">Caçamba
                    </div>
                    <img src="images/Cacamba.png" style="width: 196px; height: 100px" />
                  </div>                      
              </td>
              
            </tr>
          </table>              
      </div>
      
</asp:Content>

