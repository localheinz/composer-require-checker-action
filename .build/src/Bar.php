<?php

declare(strict_types=1);

final class Bar
{
    public function baz()
    {
        throw new \InvalidArgumentException();
    }
}
