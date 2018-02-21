<?php

namespace BristolPhpTraining\Test\demo;


use BristolPhpTraining\demo\DummyObject;
use PHPUnit\Framework\TestCase;

class DummyObjectTest extends TestCase
{
    public function testTrue()
    {
        $dummyObject = new DummyObject();
        $this->assertTrue($dummyObject->getTrue());
    }
}
