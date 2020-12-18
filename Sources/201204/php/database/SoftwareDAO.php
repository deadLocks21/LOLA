<?php
class SoftwareDAO {
    public static function get(int $id){
        $tDAO = new ToolsDAO();

        $temp = $tDAO->query("CALL GetSoftware(?);",array($id));
        $id = $temp[0][0];
        $name = $temp[0][1];
        $version = $temp[0][2];
        $urlSetup = $temp[0][3];
        $urlTuto = $temp[0][4];
        $comment = $temp[0][5];

        $software = new Software($id,$name,$version,$urlSetup,$urlTuto,$comment);

        return $software;
    }

    public static function update(Software $Software){
        $tDAO = new ToolsDAO();

        $id = $Software->getId();
        $name = $Software->getName();
        $version = $Software->getVersion();
        $urlSetup = $Software->getURLSetup();
        $urlTuto = $Software->getURLTuto();
        $comment = $Software->getComment();

        $tDAO->query("CALL AlterSoftware(?, ?, ?, ?, ?, ?);",array($id,$name,$version,$urlSetup,$urlTuto,$comment));
    }
}