<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Register extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Home_model');
		$this->load->library('user_agent');
		$this->load->library('session');
	    if($this->session->userdata('vts_details'))
			{
			$admindetails=$this->session->userdata('vts_details');
			}
	}

	public function index()
	{	
		if(!$this->session->userdata('vts_details'))
		{	 
		$admindetails=$this->session->userdata('vts_details');
	     $this->load->view('html/header'); 
	     $this->load->view('html/register'); 
	     $this->load->view('html/footer'); 
	     }else{
			$this->session->set_flashdata('error',"technical problem occurred. please try again once");
			redirect('');
		}
	}
    public function post()
	{	
		if(!$this->session->userdata('vts_details'))
		{	 
	   $admindetails=$this->session->userdata('vts_details');
		 $post=$this->input->post();	
		// echo'<pre>';print_r($post);exit;
		 $check=$this->Home_model->check_email_already_exit($post['email']);
		if(count($check)>0){
		$this->session->set_flashdata('error',"Email address already exists. Please another email address.");
		redirect('register');
		}	
	    $save_data=array(
		'name'=>isset($post['name'])?$post['name']:'',
		'email'=>isset($post['email'])?$post['email']:'',
		'mobile_number'=>isset($post['mobile_number'])?$post['mobile_number']:'',
		'org_password'=>isset($post['org_password'])?$post['org_password']:'',
		'password'=>isset($post['password'])?md5($post['password']):'',
		'address'=>isset($post['address'])?$post['address']:'',
		'region'=>isset($post['region'])?$post['region']:'',
		'status'=>1,
		'created_at'=>date('Y-m-d H:i:s'),
		'updated_at'=>date('Y-m-d H:i:s'),
		'created_by'=>isset($admindetails['u_id'])?$admindetails['u_id']:''
		 );
		$save=$this->Home_model->save_register_details($save_data);	
	    //echo'<pre>';print_r($save);exit;
		if(count($save)>0){
		$this->session->set_flashdata('success',"Register sucessfully");	
		redirect('');	
		}else{
		$this->session->set_flashdata('error',"technical problem occurred. please try again once");
		redirect('register');
		}  
		 }else{
			$this->session->set_flashdata('error',"technical problem occurred. please try again once");
			redirect('');
		}
	}
	
	
	
	
	
	



	

}
?>
