url = "https://timothe.hofmann.fr/LOLA/api/software/22";
const xhr = new XMLHttpRequest();

xhr.open("PUT", url);
xhr.send(JSON.stringify({
    "id": "22",
    "name": "Proteus ISIS",
    "version": "",
    "urlSetup": "unSetup",
    "urlTuto": "unTuto",
    "comment": "Simulateur"
}));