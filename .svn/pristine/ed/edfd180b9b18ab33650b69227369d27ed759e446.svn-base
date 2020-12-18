<?php
class Sector implements JsonSerializable
{
    private $id;
	private $code;
	private $label1;
	private $label2;
	
	public function __construct( $id,  $code, $label1, $label2)
	{
	    $this->id = $id;
        $this->code = $code;
		$this->label1 = $label1;
		$this->label2 = $label2;	
	}


    private function setId($id) { $this->id = $id;}
	public function getId() { return $this->id;}

	public function setCode($code) { $this->code = $code; }
	public function getCode() { return $this->code;}

	public function setLabel1($label1) { $this->label1 = $label1; }
	public function getLabel1() { return $this->label1;}

	public function setLabel2($label2) { $this->label2 = $label2; }
	public function getLabel2() { return $this->label2;}
	

    /**
     * @inheritDoc
     */
    public function jsonSerialize()
    {
        return [
            "id" => htmlentities(stripslashes($this->id), ENT_QUOTES),
            "code" => htmlentities(stripslashes($this->code), ENT_QUOTES),
            "label1" => htmlentities(stripslashes($this->label1), ENT_QUOTES),
            "label2" => htmlentities(stripslashes($this->label2), ENT_QUOTES)];
    }

    public function hydrate(array $datas)
	{
		foreach ($datas as $key => $value)
		{
		  $method = 'set'.ucfirst($key);
		  if (method_exists($this, $method))
			$this->$method($value);
		}
	}
}
