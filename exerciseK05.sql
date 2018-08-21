SELECT DISTINCT ObjectName
FROM ItemOrdered INNER JOIN
     AddOn ON ItemOrdered.ItemNo = AddOn.ItemNo INNER JOIN
     Material ON AddOn.MaterialID = Material.MaterialID INNER JOIN
     Object ON Material.MaterialID = Object.ObjectID INNER JOIN
     ObjectName ON Object.ObjectID = ObjectName.ObjectID
WHERE Language = 'finnish'
ORDER BY ObjectName;
