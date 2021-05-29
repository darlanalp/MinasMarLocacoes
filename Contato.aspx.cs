using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class Contato : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Limpo o conteudo do objeto label
        this.lbMensagem.Text = "";

        // Verifico se a pagina NÃƒO foi submetida
        if (!IsPostBack)
        {
        }
        // Forco o foco no primeiro campo do formulario
        this.txtName.Focus();

    }

    private void EnviarEmail() 
    {
        // Rotina de Envio de E-mail, estou utilizando tratamento de erro Try..Catch
        // isto é minha rotina esta dentro da chave try, se por ventura acontecer algum 
        // erro a execuÃ§Ã£o passa IMEDIATAMENTE para o codigo existente na chave Catch
        try
        {           
            // Montando o corpo da E-mail
            string CorpoEmail = ""
                                + "<br>Data   : " + DateTime.UtcNow.ToString()
                                + "<br>Assunto: Contato Através do Site" 
                                + "<br>Nome   : " + this.txtName.Text.ToString()
                                + "<br>E-Mail : " + this.txtEmail.Text.ToString()
                                + "<br>Empresa: " + this.TextBox1.Text.ToString()
                                + "<br>Telefone : " + this.TextBox2.Text.ToString()
                                + "<br>Observ : " + this.txtMessage.Text.ToString();
            Response.Write("<hr>");
            Response.Write(CorpoEmail.ToString());
            Response.Write("<br/><hr>");
          //  return;
            // Estancia da Classe de Mensagem
            MailMessage mailMessage = new MailMessage();

            // Remetente MEU E-MAIL, estando esta pagina em seu site quem esta enviando
            // o e-mail Ã© vc MESMO o cliente esta apenas fornecendo dados para que VOCE
            // possa posteriormente entrar encontato com ele.

            mailMessage.From = new MailAddress("comercial@pradolocacoes.com.br");

            // O Destinario tambem TAMBÃ‰M Ã© VOCE, para que assim o e-mail chegue a sua conta (outlook)
            mailMessage.To.Add("comercial@pradolocacoes.com.br");

            // Se houver necessidade vc pode enviar uma copia do e-mail para alguem, como por exemplo
            // para o proprio cliente para que ele fique ciente de o e-mail de contato foi enviado e que
            // logo voce entrara em contato

            //mailMessage.CC.Add("CopiarEmailPara@MinhaEmpresa.com.br");

            // Assunto
            mailMessage.Subject = "PradoLocacoes.com.br - >> Contato pelo site";

            // A mensagem Ã© do tipo HTML(true) ou Texto Puro (false)?   
            mailMessage.IsBodyHtml = true;

            // Corpo da Mensagem, conteudo da variavel criada acima
            mailMessage.Body = CorpoEmail.ToString();
            // ***************************************************************************
            // *** 
            // ***                              A T E N C A O
            // *** 
            // ***************************************************************************
            // Se voce pode habilitar este trecho para enviar arquivos em anexo.
            // NAO SE ESQUECA DE INCLUIR O OBJETO FileUpload NO DESIGNER DA PAGINA
            // criando um loop pode ser enviado mais de um anexo.
            // Recupera o binario enviado pelo FileUpload   
            //    MemoryStream MS = new MemoryStream(fileAnexo.FileBytes);   
            // Anexa o Stream do arquivo   
            //    Attachment anexo = new Attachment(MS, fileAnexo.FileName);   
            //    mailMessage.Attachments.Add(anexo);   
            // ***************************************************************************

            // Estancia a Classe de Envio; as informaÃ§Ãµes aqui inseridas voce obtem com o provedor
            // onde hospedou seu site

            SmtpClient smtpClient = new SmtpClient("smtp.pradolocacoes.com.br");

            // Credencial para envio por SMTP Seguro (APENAS QUANDO O SERVIDOR EXIGE AUTENTICAÃ‡ÃƒO)   
            smtpClient.Credentials = new NetworkCredential("comercial@pradolocacoes.com.br", "maciel");
            //smtpClient.EnableSsl   = true;
            //smtpClient.Port        = 587;
            // Envia a mensagem   
            smtpClient.Send(mailMessage);

            // Informa que o e-mail foi enviado com sucesso
            this.lbMensagem.Text = "Dados enviado com sucesso. Em breve entraremos em contato.";

            // Limpa os campos do formulario

            this.txtName.Text = string.Empty;
            this.txtEmail.Text = string.Empty;
            this.TextBox1.Text = string.Empty;
            this.TextBox2.Text = string.Empty;
            this.txtMessage.Text = string.Empty;

            Response.Clear();
        }
        catch (Exception f)
        {
            // Se houver algum erro informa o usuÃ¡rio
            this.lbMensagem.Text = "Não foi possível enviar dados. Tente mais tarde";
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        EnviarEmail();
    }
}
