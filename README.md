# terraform-vsphere-poc-vm-multi-env
<h2>Pourquoi</h2>
Pour creer les mêmes vms sur différents environnements. On peut créer 1 ou plusieurs vms par instance. Chaque ensemble de vms peut représenter un composant applicatif par exemple (frontaux, enablers, etc).
<h2>Comment</2>
Tous les paramètres globaux sont à renseigner dans le fichier "template/terraform/globals/globals-variables.tf". Une fois ceci fait, on n'a plus besoin de modifier ce fichier.
Les paramètres spécifiques à chaque ensemble de vms se changent dans le fichier "locals-variables.tf" (nom, derniers digits des adresses ip).
Les paramètres spécifiques à chaque ensemble de vms par environnement (nombre et taille de vms) se font dans la définition des modules.
