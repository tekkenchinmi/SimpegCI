      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item nav-profile">
            <div class="nav-link">
              <div class="user-wrapper" style="margin-bottom: 0px;">
                <div class="profile-image">
                  <img src="<?=$user_avatar;?>" alt="profile image">
                </div>
                <div class="text-wrapper">
                  <p class="profile-name"><?=$user_name;?></p>
                  <div>
                    <small class="designation text-muted"><?=$jabatan;?></small><br>
                    <small class="designation text-muted">Bid. <?=$bidang;?></small>
                  </div>
                </div>
              </div>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?=base_url('dashboard');?>">
              <i class="menu-icon mdi mdi-television"></i>
              <span class="menu-title">Dashboard</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-ki" aria-expanded="false" aria-controls="ui-ki">
              <i class="menu-icon mdi mdi-treasure-chest"></i>
              <span class="menu-title">Daftar Izin</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-ki">
              <ul class="nav flex-column sub-menu">
                <?=generate_navlink($path_page, 'daftar_izin/cuti', 'Daftar Izin Cuti');?>
                <?=generate_navlink($path_page, 'daftar_izin/sekolah', 'Daftar Izin Sekolah');?>
                <?=generate_navlink($path_page, 'daftar_izin/seminar', 'Daftar Izin Seminar');?>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-ki" aria-expanded="false" aria-controls="ui-ki">
              <i class="menu-icon mdi mdi-checkbox-multiple-marked-outline"></i>
              <span class="menu-title">Ajukan Izin</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-ki">
              <ul class="nav flex-column sub-menu">
                <?=generate_navlink($path_page, 'ajukan_izin/cuti', 'Izin Cuti');?>
                <?=generate_navlink($path_page, 'ajukan_izin/sekolah', 'Izin Sekolah');?>
                <?=generate_navlink($path_page, 'ajukan_izin/seminar', 'Izin Seminar');?>
              </ul>
            </div>
          </li>
        </ul>
      </nav>
<div class="main-panel">