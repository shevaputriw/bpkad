<?php

    defined('BASEPATH') OR exit('No direct script access allowed');

    class CAwal extends CI_Controller {

        public function index() {
            $data['title'] = 'Welcome';

            $this->load->view('Halaman_awal', $data);
        }

        public function Pilih_menu() {
            $data['title'] = 'Welcome';

            $this->load->view('Menu', $data);
        }

        public function Login() {
            $data['title'] = 'Login';

            $this->load->view('Login', $data);
        }
    }
?>