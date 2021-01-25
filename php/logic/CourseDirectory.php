<?php
/**
 * Objet stockant des modules.
 * 
 * @package logic
 */
class CourseDirectory implements JsonSerializable
{
    /**
     * Permet de stocker les modules.
     * 
     * @var array
     */
    private $courses = array();

    /**
     * Ajoute un module à la liste.
     * 
     * @param Course $c
     */
    public function add($c)
    {
        array_push($this->courses, $c);
    }

    /**
     * Retourne un module en fonction de son code et s'il est stocké dans $courses
     * 
     * @param string $code
     * @return Course|null
     */
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

    /**
     * Retourne une liste de modules.
     * 
     * @return array
     */
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
