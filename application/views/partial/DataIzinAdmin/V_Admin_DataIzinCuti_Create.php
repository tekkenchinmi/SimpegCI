
    <div class="content-wrapper">
      <div class="row">
        <div class="col-lg-12 grid-margin stretch-card">
          <div class="card">
            <div class="card-body">
              <h4 class="card-title"><?=$title_page;?></h4>
              <?php if($this->session->flashdata('msg_alert')) { ?>

              <div class="alert alert-info">
                <label style="font-size: 13px;"><?=$this->session->flashdata('msg_alert');?></label>
              </div>
              <?php } ?>
              <?=form_open('data_izin/add_new/cuti/', array('method'=>'post'));?>
                <div class="row">
                  <div class="col-md-6">
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">Nama Cuti</label>
                      <div class="col-sm-9">
                        <select name="id_cuti" class="form-control">
                          <option disabled selected>-- Pilih --</option>
                          <?php
                            foreach($cuti_list_all as $ct) {
                          ?>
                          <option value="<?=$ct->id_cuti;?>"><?=$ct->nama_cuti;?></option>
                          <?php
                            }
                          ?>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">Nama Pengguna</label>
                      <div class="col-sm-9">
                        <select name="id" class="form-control">
                          <option disabled selected>-- Pilih --</option>
                          <?php
                            foreach($pegawai_list_all as $pg) {
                          ?>
                          <option value="<?=$pg->id;?>"><?=$pg->nama;?></option>
                          <?php
                            }
                          ?>
                        </select>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">Tanggal Awal</label>
                      <div class="col-sm-9">
                        <input type="date" name="tglawal" class="form-control" />
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">Tempat</label>
                      <div class="col-sm-9">
                        <input type="text" name="tempat" class="form-control" />
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">Status</label>
                      <div class="col-sm-9">
                        <select name="status" class="form-control">
                          <option disabled selected>-- Pilih --</option>
                          <option value="waiting">Waiting</option>
                          <option value="approved">Approved</option>
                          <option value="rejected">Rejected</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">Tanggal Akhir</label>
                      <div class="col-sm-9">
                        <input type="date" name="tglakhir" class="form-control" />
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <div class="form-group row">
                      <button type="submit" class="btn btn-success mr-2">Submit</button>
                      <button class="btn btn-light" type="reset">Reset</button>
                    </div>
                  </div>
                </div>
              <?=form_close();?>
            </div>
          </div>
        </div>
    </div>
  </div>