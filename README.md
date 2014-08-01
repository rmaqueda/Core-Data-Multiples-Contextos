## Core Data con Multiples Contextos

[Apple Doc](https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/CoreData/Articles/cdConcurrency.html)

Clase RMMCoreDataStack, clase que prepara el stack de CoreData con tres contextos:


**rootMOC**
Contexto para persistir datos a disco


**mainMOC**
Contexto para representar datos en UI


**backgroundMOC**
Contexto para recoger datos de red.
