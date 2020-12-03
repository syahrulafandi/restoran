<?= $this->extend('template/admin') ?>
<?= $this->section('content') ?>

<?php
    if (isset($_GET['page_page'])) {
        $page = $_GET['page_page'];
        $jumlah = 3;
        $no = ($jumlah * $page) - $jumlah + 1;
    } else {
        $no = 1;
    }
?>

<div class="row">
    <div class="col-4">
        <a href="<?= base_url('/admin/kategori/create') ?>" class="btn btn-primary" role="button">TAMBAH KATEGORI</a>
    </div>
    <div class="col">
        <h3><?= $judul;  ?></h3>
    </div>
</div>

<div class="row mt-2">
    <div class="col">

        <table class="table">
            <tr>
                <th>No</th>
                <th>Kategori</th>
                <th>Keterangan</th>
                <th>Aksi</th>
            </tr>
            <?php $no ?>
            <?php foreach($kategori as $key => $value): ?>
            <tr>
                <td><?= $no++ ?></td>
                <td><?= $value['kategori'] ?></td>
                <td><?= $value['keterangan'] ?></td>
                <td>
                    <a href="<?= base_url() ?>/admin/kategori/delete/<?= $value['idkategori'] ?>"><img class="mr-5" style="width: 30px;" src="<?= base_url('/icon/can.svg') ?>"></a>
                    <a href="<?= base_url() ?>/admin/kategori/find/<?= $value['idkategori'] ?>"><img style="width: 30px;" src="<?= base_url('/icon/pen.svg') ?>"></a>
                </td>
            </tr>
            <?php endforeach; ?>
        </table>

        <?= $pager->links('page','bootstrap') ?>

    </div>

</div>

<?= $this->endSection() ?>