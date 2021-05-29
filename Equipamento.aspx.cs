using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Resources;

public partial class Equipamento : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["Equip"] == null)
        {
            cEquipamento.Text = "Equipamento não selecionado";
            cSubTitulo.Text = string.Empty;
            cText.Text = string.Empty;
            imgEquip.Visible = false;
            return;
        }

        int equip = Convert.ToInt32(Request["Equip"].ToString());
        if (equip == EquipamentoEnum.torreDeIluminacao.GetHashCode())
        {
            cEquipamento.Text = "Torre de Iluminação";
            cSubTitulo.Text = "ALCANÇE SEUS OBJETIVOS COM A MELHOR ILUMINAÇÃO";
            cText.Text = Resource.P_TorreIluminacao;
            imgEquip.DescriptionUrl = "Torre deIluminação";
            imgEquip.ImageUrl = "images/torre.png";   
        }
        else
        if (equip == EquipamentoEnum.retroescavadeira.GetHashCode()) 
        {
            cEquipamento.Text = "Retroescavadeira";
            cSubTitulo.Text = "TECNOLOGIA A SERVIÇO DO HOMEN";
            cText.Text = Resource.P_Retroescavadeira;
            imgEquip.DescriptionUrl = "Retroescavadeira";
            imgEquip.ImageUrl = "images/Retroescavadeira.png";  
        }       
        else
        if (equip == EquipamentoEnum.grupogerador.GetHashCode()) 
        {
            cEquipamento.Text = Resource.P_GrupoGeradorTitulo;
            cSubTitulo.Text = Resource.P_GrupoGerador_Sub;
            cText.Text = Resource.P_GrupoGerador;
            imgEquip.DescriptionUrl = Resource.P_GrupoGeradorTitulo;
            imgEquip.ImageUrl = "images/GrupoGerador.png";  
        }
        else
        if (equip == EquipamentoEnum.minicarregadeira.GetHashCode())
        {
            cEquipamento.Text = Resource.P_MiniCarregadeiraTitulo;
            cSubTitulo.Text = Resource.P_MiniCarregadeira_Sub;
            cText.Text = Resource.P_MiniCarregadeira;
            imgEquip.DescriptionUrl = Resource.P_MiniCarregadeiraTitulo;
            imgEquip.ImageUrl = "images/MiniCarregadeira.png";
        }
        else
        if (equip == EquipamentoEnum.escavadeira.GetHashCode())
        {
            cEquipamento.Text = Resource.P_EscavadeiraTitulo;
            cSubTitulo.Text = Resource.P_Escavadeira_Sub;
            cText.Text = Resource.P_Escavadeira;
            imgEquip.DescriptionUrl = Resource.P_EscavadeiraTitulo;
            imgEquip.ImageUrl = "images/Escavadeira.png";
        }
        else
            if (equip == EquipamentoEnum.miniRetroescavadeira.GetHashCode())
            {
                cEquipamento.Text = Resource.P_MiniRetroescavadeiraTitulo;
                cSubTitulo.Text = Resource.P_MiniRetroescavadeira_Sub;
                cText.Text = Resource.P_MiniRetroescavadeira;
                imgEquip.DescriptionUrl = Resource.P_MiniRetroescavadeiraTitulo;
                imgEquip.ImageUrl = "images/MiniRetroescavadeira.png";
            }
            else
                if (equip == EquipamentoEnum.roloCompactador.GetHashCode())
                {
                    cEquipamento.Text = Resource.P_RoloCompactadorTitulo;
                    cSubTitulo.Text = Resource.P_RoloCompactador_Sub;
                    cText.Text = Resource.P_RoloCompactador;
                    imgEquip.DescriptionUrl = Resource.P_RoloCompactadorTitulo;
                    imgEquip.ImageUrl = "images/RoloCompactador.png";
                }
                else
                    if (equip == EquipamentoEnum.empilhadeira.GetHashCode())
                    {
                        cEquipamento.Text = Resource.P_EmpilhadeiraTitulo;
                        cSubTitulo.Text = Resource.P_Empilhadeira_Sub;
                        cText.Text = Resource.P_Empilhadeira;
                        imgEquip.DescriptionUrl = Resource.P_EmpilhadeiraTitulo;
                        imgEquip.ImageUrl = "images/Empilhadeira.png";
                    }


    }
}
