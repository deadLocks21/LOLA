<?php
class Software implements JsonSerializable
{
	private $id;
	private $name;
	private $version;
	private $urlSetup;
	private $urlTuto;
	private $comment;



	public function __construct($id, $name, $version, $urlSetup, $urlTuto, $comment) {
	    $this->id = $id;
		$this->name = $name;
		$this->version = $version;
		$this->urlSetup = $urlSetup;
		$this->urlTuto = $urlTuto;
		$this->comment = $comment;
	}

	public function __toString() { return sprintf("[%d] %s", $this->id, $this->name); }



	public function getId() { return $this->id; }

	public function setName($name) { $this->name = $name; }
	public function getName() { return $this->name; }


	public function setVersion($version) { $this->version = $version; }
	public function getVersion() { return $this->version; }


	public function setUrlSetup($urlSetup) { $this->urlSetup = $urlSetup; }
	public function getUrlSetup() { return $this->urlSetup; }


	public function setUrlTuto($urlTuto) { $this->urlTuto = $urlTuto; }
	public function getUrlTuto() { return $this->urlTuto; }


	public function setComment($comment) { $this->comment = $comment; }
	public function getComment() { return $this->comment; }



    public function jsonSerialize()
    {
        return [
            'id' => htmlentities(stripslashes($this->id), ENT_QUOTES),
            'name'=> htmlentities(stripslashes($this->name), ENT_QUOTES),
            'version' => htmlentities(stripslashes($this->version), ENT_QUOTES),
            'urlSetup' => htmlentities(stripslashes($this->urlSetup), ENT_QUOTES),
            'urlTuto' => htmlentities(stripslashes($this->urlTuto), ENT_QUOTES),
            'comment' => htmlentities(stripslashes($this->comment), ENT_QUOTES)
        ];
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