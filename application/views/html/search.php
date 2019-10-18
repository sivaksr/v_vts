<head>
   </head>
<style>
.container1 {
  position: relative;
  text-align: center;
  color: white;
}

.centered {
  position: absolute;
  top: 50%;
  left: 60%;
  transform: translate(-40%, -50%);
  width: 49%;
}

form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 450px;
  background: #fff;
  border-radius:15px;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
}
#fakebox-search {
    cursor: pointer;
    margin-inline-end: 16px;
    padding: 22px 12px 0;
    position: absolute;
    right: 0;
	bottom: 33px;
    width: 21px;
}
</style>
</head>
    <div class="container container1 mt-2">
      <div class="row">
        <div class="col-12">
             <h1 class="text-center">Lorem ipsum dolor sit amet, consectetur.</h1>
            <img src="<?php echo base_url(); ?>assets/images/banner-img.jpg" alt="" class="img-fluid">
			
			 <div class="centered">
			 <form  method="post" class="example" action="<?php echo base_url('home/search'); ?>">
			  <input type="text"  name="number"  Placeholder="Enter Vehicle Number"   id="automplete-1" required>
			  <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
			<br><br>
			<div class="row justify-content-center d-flex">
						<div class="col-lg-12 post-list">
							<div class="table-responsive">
							<table id="example" class="table table-striped table-bordered" style="width:100%">
								<thead>
									<tr>
										<th>Job Title</th>
										<th>Level & Subject</th>
										<th>Salary</th>
										<th>Qualifications</th>
										
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>fgd</td>
										<td>dfgd</td>
										<td>dgvd</td>
										<td>fgdfg</td>
									</tr>
								</tbody>
								
						</table>
						</div>


						</div>
						
					</div>
			
			
			</div>
			
        </div>
      </div>
    </div>
	
	
	
    <hr>
