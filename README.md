# Aplicación rails de ejemplo

El objetivo de este proyecto es definir una estructura de aplicación rails prototipo para
estructurar aplicaciones de gran tamaño.

A continuación se enumerarán una serie de características que tendrá el proyecto que he considerado
considerado necesarios:

- **Eliminación de hooks en modelos:** Los hooks causan problemas en grandes aplicaciones con flujos complejos pues no permiten depurar el código de forma conveniente y hacen difícil entender las lógicas de los cambios que se aplican en un modelo determinado. Por otro lado pueden lanzarse automáticamente operaciones innecesarias en modelos asociados debido a relaciones que son difíciles de depurar.

- **Eliminación de lógica de negocio de modelos**: Este problema se da cuando se tienen modelos con demasiada lógica. Para evitar esto se encapsularán las lógicas en servicios encargados de realizar operaciones sobre los modelos.

- **Unificación del acceso a base de datos**: El problema al que nos podemos enfrentar en un momento determinado en la aplicación es el siguiente. Imaginemos que en un momento determinado, después de haber utilizado el modelo con un orm específico, se decide cambiar o toca actualizar el orm. Puede que se tenga que revisar toda la plataforma para encontrar los sitios donde se realiza el acceso a los datos almacenados en base de datos. Se introducirá aquí el concepto de repositorio para mantener esta lógica y centralizar el acceso a los datos de un modelo.

- **Versionado de api**: Utilización de versionado de api en apis para actores externos o aplicaciones con versión propia (como aplicaciones móviles). Esto permitirá actualizar la api sin problema para cada cliente.

- **Definición de lógicas de controlador por acción y no en modelo**: Se trata de no delegar la lógica de validación en el modelo de datos y validar los parámetros de entrada en un formulario o comando. Este elemento será un módulo que permitirá realizar una operación específica y que será fácilmente testeable.

La aplicación que se va a utilizar como ejemplo tendrá los siguientes elementos:

- Aplicación con Mongoid como ORM
- Aplicación con workers con sidekiq
- Aplicación API (sin representación de vistas)

El modelo de la aplicación es sencillo. Se trata de un ejemplo de aplicación donde un usuario(Core::User) tiene facturas(Ticketing::Invoice::Entity) y esas facturas a su vez tienen pagos(Ticekting::Invoice::Payment).

[![](https://mermaid.ink/img/eyJjb2RlIjoiZ3JhcGggVERcblx0VVtVc2VyXVxuXHRVIC0tPiBJW0ludm9pY2VzXVxuICAgIEkgLS0-IFBbUGF5bWVudHNdIiwibWVybWFpZCI6eyJ0aGVtZSI6ImRlZmF1bHQifSwidXBkYXRlRWRpdG9yIjpmYWxzZX0)](https://mermaid-js.github.io/mermaid-live-editor/#/edit/eyJjb2RlIjoiZ3JhcGggVERcblx0VVtVc2VyXVxuXHRVIC0tPiBJW0ludm9pY2VzXVxuICAgIEkgLS0-IFBbUGF5bWVudHNdIiwibWVybWFpZCI6eyJ0aGVtZSI6ImRlZmF1bHQifSwidXBkYXRlRWRpdG9yIjpmYWxzZX0)
