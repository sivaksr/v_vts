 <?php if(isset($vehicles_list) && count($vehicles_list)>0){ ?>
 
<div class="box-body table-responsive" style="background:#fff;">
               <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Name</th>
                 
                  
                </tr>
                </thead>
                <tbody>
				<?php foreach($vehicles_list as $list){ ?>
                <tr>
                  <td><?php echo $list['vehicle_number']; ?> </td>
                  
                  
                </tr>
				<?php } ?>
				</tbody>
                
              </table>
            </div>
				
				
					
                
                
			  
 <?php }else{ ?>
 <div> No data available</div>
 <?php }?>
	<script>		
  $(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false
    });
  });
</script>        
