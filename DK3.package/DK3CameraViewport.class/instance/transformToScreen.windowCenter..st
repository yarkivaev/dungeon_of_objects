transformation
transformToScreen: aWorldPoint windowCenter: aCenterPoint
    ^ (((aWorldPoint - position) * zoom) + aCenterPoint) rounded
