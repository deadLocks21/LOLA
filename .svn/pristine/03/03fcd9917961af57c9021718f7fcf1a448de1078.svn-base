<?php
class CourseDirectory implements JsonSerializable
{
    private $courses = array();

    public function add($c)
    {
        array_push($this->courses, $c);
    }

    public function getCourse($code)
    {
        $temp = null;

        foreach($this->courses as $value)
        {
            if($value->getCode() == $code)
                $temp = $value;
        }

        return $temp;
    }

    public function getCourses() {
        return $this->courses;
    }



    /**
     * @inheritDoc
     */
    public function jsonSerialize()
    {
        return ["courses" => $this->courses];
    }
}
