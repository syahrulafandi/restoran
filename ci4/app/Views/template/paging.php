<nav aria-label="<?= lang('Pager.pageNavigation') ?>">
    <ul class="pagination">

        <?php if ($pager->hasPreviousPage()) : ?>
        <li class="page-item">
            <a href="<?= $pager->getPreviousPage() ?>" class="page-link" aria-label="<?= lang('Pager.previous') ?>">
                <span aria-hidden="true"><?= lang('Pager.previous') ?></span>
            </a>
        </li>
        <?php endif ?>

        <?php foreach($pager->links() as $link) : ?>
        <li class="page-item" <?= $link['active'] ? 'class="active"' : '' ?>>
            <a href="<?= $link['uri'] ?>" class="page-link">
                <?= $link['title'] ?>
            </a>
        </li>
        <?php endforeach ?>

        <?php if ($pager->hasNextPage()) : ?>
        <li class="page-item">
            <a href="<?= $pager->getNextPage() ?>" class="page-link" aria-label="<?= lang('Pager.next') ?>">
                <span aria-hidden="true"><?= lang('Pager.next') ?></span>
            </a>
        </li>
        <?php endif ?>
        
    </ul>
</nav>