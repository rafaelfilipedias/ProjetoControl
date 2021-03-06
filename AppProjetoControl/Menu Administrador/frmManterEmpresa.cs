﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AppProjetoControl.Menu_Administrador
{
    public partial class frmManterEmpresa : Form
    {
        public frmManterEmpresa()
        {
            InitializeComponent();
        }

        private void AbrirFormPanel(object FormFilho)
        {
            if (this.pnlMostrar.Controls.Count > 0)
                this.pnlMostrar.Controls.RemoveAt(0);
            Form fh = FormFilho as Form;
            fh.TopLevel = false;
            fh.Dock = DockStyle.Fill;
            this.pnlMostrar.Controls.Add(fh);
            this.pnlMostrar.Tag = fh;
            fh.Show();
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Environment.Exit(0);
        }

        private void btnVoltar_Click(object sender, EventArgs e)
        {
            frmMenuAdm menuAdm = new frmMenuAdm();
            this.Hide();
            menuAdm.Show();
        }

        private void btnCadastrarEmpresa_Click(object sender, EventArgs e)
        {
            AbrirFormPanel(new frmCadastrarEmpresa());
        }

        private void btnEditarEmpresa_Click(object sender, EventArgs e)
        {
            AbrirFormPanel(new frmEditarEmpresa());
        }

        private void btnExcluirEmpresa_Click(object sender, EventArgs e)
        {
            AbrirFormPanel(new frmExcluirEmpresa());
        }

        private void btnVerEmpresaCadastradas_Click(object sender, EventArgs e)
        {
            AbrirFormPanel(new frmVerEmpresa());
        }
    }
}
