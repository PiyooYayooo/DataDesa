<?php
include'header.php';
?>
 <section class="content">
      <div class="row">
        <div class="col-md-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Input Data Agama</h3>
            </div>

            <form class="form-horizontal" method="POST" action="">
              <div class="box-body">
                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">Uraian *</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="uraian" name="txturaian" placeholder="Uraian Agama" required oninvalid="this.setCustomValidity('Tidak Boleh Kosong')" oninput="setCustomValidity('')" />
                  </div>
                </div>
              </div>
              <div class="box-footer">
               <input type="submit" name="btnsimpan" class="btn btn-primary pull-right" value="Simpan">
              </div>
              </form>
        <?php
          if (isset($_POST["btnsimpan"])){
            $txturaian =$_POST['txturaian'];
              $simpan = mysqli_query($konek,"INSERT INTO tbl_agama (uraian) VALUES ('$txturaian')");
            if ($simpan){
              ?>
              <script type="text/javascript">
                document.location.href="agama_add.php";
              </script>
              <?php
            }else{
              echo "Gagal Untuk Menyimpan";
            }
        }
        ?>
        </div>
    </div>
    <div class="col-md-12">
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Daftar Agama</h3>
            </div>
            <div class="box-body no-padding">
              <table class="table table-striped">
                <tr>
                  <th width="10%">NO</th>
                  <th>URAIAN</th>
                  <th width="10%">Action</th>
                </tr>
                <?php
                    $no =1;
                      $qry = mysqli_query($konek,"SELECT * FROM tbl_agama");
                        while ($data=mysqli_fetch_array($qry)) {
                  ?>
                <tr>

                  <td><?php echo $no++; ?></td>
                  <td><?php echo $data['uraian']; ?></td>
                  <td><a href="agama_edit.php?id=<?php echo base64_encode($data['kode']); ?>">Edit</a> | <a onClick="return confirm('Yakin Anda Menghapus ?')" href="agama_hapus.php?id=<?php echo $data['kode']; ?>">Hapus</a></td>
                </tr>
                <?php } ?>

              </table>
                    </div>
          

 </section>
  </div>
<?php
include'footer.php';
?>