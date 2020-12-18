<?php
class Sector implements JsonSerializable
{
    private $id;
	private $code;
	private $label;
	
	public function __construct( $id,  $code, $label)
	{
	    $this->id = $id;
        $this->code = $code;
		$this->label = $label;	
	}


    private function setId($id) { $this->id = $id;}
	public function getId() { return $this->id;}

	public function setCode($code) { $this->code = $code; }
	public function getCode() { return $this->code;}

	public function setLabel($label) { $this->label = $label; }
	public function getLabel() { return $this->label;}
	

    /**
     * @inheritDoc
     */
    public function jsonSerialize()
    {
        return [
            "id" => htmlentities(stripslashes($this->id), ENT_QUOTES),
            "code" => htmlentities(stripslashes($this->code), ENT_QUOTES),
            "label" => htmlentities(stripslashes($this->label), ENT_QUOTES)];
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
